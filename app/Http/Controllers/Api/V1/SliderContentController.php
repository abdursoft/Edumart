<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use App\Models\SliderContent;
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
            'media_url'   => 'required|file|mimes:jpeg,jpg,png,mp4,webm,webp',
            'order'       => 'nullable|integer|min:0',
            'status'      => 'required|in:active,inactive',
        ]);

        $extension = $request->file('media_url')->getMimeType();

        $video = ['mp4','webm'];
        $image = ['png','jpg','jpeg','webp'];
        $type  = in_array($extension, $video) ? 'video' : (in_array($extension, $image) ? 'image' : 'image');
        $validated['type'] = $type;
        $validated['media_url'] = Storage::disk('public')->put('slider-content', $request->file('media_url'));

        SliderContent::create($validated);

        $slider = Slider::with('contents')->findOrFail($request->slider_id);

        return redirect()->route('admin.media.slider.content', ['slider' => $slider])->with('success', 'Slider content updated successfully');
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
            'media_url'   => 'sometimes|required|file|mimes:jpeg,jpg,webp,png,mp4,webm',
            'type'        => 'nullable|in:image,video',
            'order'       => 'nullable|integer|min:0',
            'status'      => 'nullable|in:active,inactive',
        ]);

        if($request->hasFile('media_url')){
            $extension = $request->file('media_url')->getMimeType() ?? null;
            $video = ['mp4','webm'];
            $image = ['png','jpg','jpeg','webp'];
            $type  = in_array($extension, $video) ? 'video' : (in_array($extension, $image) ? 'image' : 'image');
            $validated['type'] = $type;
            $validated['media_url'] = Storage::disk('public')->put('slider-content', $request->file('media_url'));
        }

        $sliderContent = SliderContent::findOrFail($id);
        $sliderContent->update($validated);

        return response()->json($sliderContent);
    }

    // Delete a slider content (soft delete)
    public function destroy(SliderContent $sliderContent)
    {
        $sliderContent->delete();

        return response()->json(null, 204);
    }

    // Restore a soft-deleted slider content
    public function restore($id)
    {
        $content = SliderContent::withTrashed()->findOrFail($id);
        $content->restore();

        return response()->json($content);
    }
}
