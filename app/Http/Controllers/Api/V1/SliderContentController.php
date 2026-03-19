<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use App\Models\SliderContent;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SliderContentController extends Controller
{
    // List all slider contents
    public function index($slider, $id=null)
    {
        $slider = Slider::with('contents')->findOrFail($slider);
        $contents = $slider->contents;
        $content = null;
        if($id){
            $content = SliderContent::findOrFail($id);
        }

        return view(backend('pages.slider-content'), compact('content','contents', 'slider'));
    }

    // Store a new slider content
    public function store(Request $request)
    {
        $validated = $request->validate([
            'slider_id'   => 'required|exists:sliders,id',
            'title'       => 'required|string',
            'description' => 'nullable|string',
            'media_file'  => 'required|file|mimes:jpeg,jpg,png,mp4,webm,webp',
            'order'       => 'nullable|integer|min:0',
            'status'      => 'required|in:active,inactive',
        ]);

        $extension = $request->file('media_file')->getMimeType();

        $video = ['mp4','webm'];
        $image = ['png','jpg','jpeg','webp'];
        $type  = in_array($extension, $video) ? 'video' : (in_array($extension, $image) ? 'image' : 'image');
        $validated['type'] = $type;
        $validated['media_url'] = Storage::disk('public')->put('slider-content', $request->file('media_file'));

        SliderContent::create($validated);

        $slider = Slider::with('contents')->findOrFail($request->slider_id);

        Toastr::success('Slider content created successfully', 'Success');
        return redirect()->route('admin.media.slider.content', ['slider' => $slider]);
    }

    // Show a single slider content
    public function show(SliderContent $sliderContent)
    {
        return $sliderContent->load('slider');
    }

    // Update a slider content
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'slider_id'   => 'sometimes|required|exists:sliders,id',
            'title'       => 'nullable|string',
            'description' => 'nullable|string',
            'media_file'  => 'sometimes|required|file|mimes:jpeg,jpg,webp,png,mp4,webm',
            'type'        => 'nullable|in:image,video',
            'order'       => 'nullable|integer|min:0',
            'status'      => 'nullable|in:active,inactive',
        ]);

        if($request->hasFile('media_file')){
            $extension = $request->file('media_file')->getMimeType() ?? null;
            $video = ['mp4','webm'];
            $image = ['png','jpg','jpeg','webp'];
            $type  = in_array($extension, $video) ? 'video' : (in_array($extension, $image) ? 'image' : 'image');
            $validated['type'] = $type;
            $validated['media_url'] = Storage::disk('public')->put('slider-content', $request->file('media_file'));
        }

        $sliderContent = SliderContent::findOrFail($id);
        if($validated['media_url']){
            if(Storage::disk('public')->exists($sliderContent->media_url)){
                Storage::disk('public')->delete($sliderContent->media_url);
            }
        }
        $sliderContent->update($validated);

        Toastr::success('Slider content updated successfully', 'Success');
        return redirect()->route('admin.media.slider.content', ['slider' => $sliderContent->slider_id]);
    }

    // Delete a slider content (soft delete)
    public function destroy($id, $slider)
    {
        $sliderContent = SliderContent::findOrFail($id);
        if(Storage::fileExists($sliderContent->media_url)){
            Storage::disk('public')->delete($sliderContent->media_url);
        }
        $sliderContent->delete();

        Toastr::success('Slider content deleted successfully', 'Success');
        return redirect()->route('admin.media.slider.content', ['slider' => $slider]);
    }

    // Restore a soft-deleted slider content
    public function restore($id)
    {
        $content = SliderContent::withTrashed()->findOrFail($id);
        $content->restore();

        return response()->json($content);
    }
}
