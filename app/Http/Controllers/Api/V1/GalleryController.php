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
    public function index()
    {
        $galleries = Gallery::latest()->paginate(20);
        return view('galleries.index', compact('galleries'));
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
            ->route('galleries.index')
            ->with('success', 'Gallery created successfully.');
    }

    /**
     * Show the form for editing the specified gallery.
     */
    public function edit(Gallery $gallery)
    {
        return view('galleries.edit', compact('gallery'));
    }

    /**
     * Update the specified gallery.
     */
    public function update(Request $request, Gallery $gallery)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|in:Video,Image',
            'status' => 'required|in:Public,Private',
            'description' => 'nullable|string',
        ]);

        $gallery->update($validated);

        return redirect()
            ->route('galleries.index')
            ->with('success', 'Gallery updated successfully.');
    }

    /**
     * Remove the specified gallery.
     */
    public function destroy(Gallery $gallery)
    {
        $gallery->delete();

        return redirect()
            ->route('galleries.index')
            ->with('success', 'Gallery deleted successfully.');
    }
}
