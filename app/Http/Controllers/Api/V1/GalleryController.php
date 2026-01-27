<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    /**
     * Display a listing of galleries.
     */
    public function index($id=null)
    {
        $galleries = Gallery::with('contents')->latest()->get();
        $gallery = null;
        if($id){
            $gallery = Gallery::findOrFail($id);
        }
        return view(backend('pages.gallery'), compact('galleries','gallery'));
    }

    /**
     * Show the form for creating a new gallery.
     */
    public function create()
    {
        return view('galleries.create');
    }

    /**
     * Store a newly created gallery.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|in:Video,Image',
            'status' => 'required|in:Public,Private',
            'description' => 'nullable|string',
        ]);

        Gallery::create($validated);

        return redirect()
            ->route('admin.media.gallery')
            ->with('success', 'Gallery created successfully.');
    }

    /**
     * Show the form for editing the specified gallery.
     */
    public function show($id)
    {
        return $this->index($id);
    }

    /**
     * Update the specified gallery.
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|in:Video,Image',
            'status' => 'required|in:Public,Private',
            'description' => 'nullable|string',
        ]);

        $gallery = Gallery::findOrFail($id);

        $gallery->update($validated);

        return redirect()
            ->route('admin.media.gallery')
            ->with('success', 'Gallery updated successfully.');
    }

    /**
     * Remove the specified gallery.
     */
    public function destroy($id)
    {
        $gallery = Gallery::findOrFail($id);
        $gallery->delete();

        return redirect()
            ->route('admin.media.gallery')
            ->with('success', 'Gallery deleted successfully.');
    }
}
