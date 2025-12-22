<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Page;
use App\Models\Post;
use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    // List all sliders
    public function index()
    {
        $sliders = Slider::orderBy('name')->get();
        $slider = null;
        $pages = Page::where('status', 'published')->orderBy('title')->get();
        $posts = Post::where('status', 'published')->orderBy('title')->get();
        return view(backend('pages.slider'), compact('slider','sliders','pages','posts'));
    }

    // Store a new slider
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'      => 'required|string',
            'type'      => 'required|in:image,video',
            'page_id'   => 'nullable|exists:pages,id',
            'post_id'   => 'nullable|exists:posts,id',
            'status'    => 'nullable|in:active,inactive',
        ]);

        $validated['shortcode'] = uniqueID(Slider::class,'shortcode');

        Slider::create($validated);

        return redirect()->route('admin.media.slider')->with('success', 'Slider created successfully');
    }

    // Show a single slider
    public function show($id)
    {
        $sliders = Slider::orderBy('name')->get();
        $slider = Slider::findOrFail($id);
        $pages = Page::where('status', 'published')->orderBy('title')->get();
        $posts = Post::where('status', 'published')->orderBy('title')->get();
        return view(backend('pages.slider'), compact('slider','sliders','pages','posts'));
    }

    // Update a slider
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name'      => 'sometimes|required|string',
            'type'      => 'sometimes|required|in:image,video',
            'status'    => 'nullable|in:active,inactive',
            'page_id'   => 'nullable|exists:pages,id',
            'post_id'   => 'nullable|exists:posts,id',
        ]);

        $slider = Slider::findOrFail($id);

        $slider->update($validated);

        return redirect()->route('admin.media.slider')->with('success', 'Slider updated successfully');
    }

    // Delete a slider
    public function destroy($id)
    {
        $slider = Slider::findOrFail($id);
        if(!$slider){
            return redirect()->route('admin.media.slider')->with('error', 'Slider ID not found');
        }
        $slider->contents()->delete();
        $slider->delete();

        return redirect()->route('admin.media.slider')->with('success', 'Slider deleted successfully');
    }
}
