<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use App\Models\GalleryContent;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class GalleryContentController extends Controller
{
    /**
     * Display contents of a gallery
     */
    public function index(Gallery $gallery)
    {
        $contents = $gallery->contents()->latest()->paginate(20);

        return view('gallery_contents.index', compact('gallery', 'contents'));
    }

    /**
     * Store new gallery content
     */
    public function store(Request $request, Gallery $gallery)
    {
        $validated = $request->validate([
            'file'   => 'required|file|mimes:jpg,jpeg,png,webp,mp4,mov,avi',
            'name'   => 'nullable|string|max:255',
            'status' => 'required|in:Public,Private',
        ]);

        $file = $request->file('file');

        $path = $file->store('galleries/' . $gallery->id, 'public');

        GalleryContent::create([
            'name'       => $validated['name'] ?? $file->getClientOriginalName(),
            'path'       => $path,
            'token'      => Str::uuid(),
            'mimes'      => $file->getClientMimeType(),
            'storage'    => 'public',
            'status'     => $validated['status'],
            'gallery_id' => $gallery->id,
        ]);

        return back()->with('success', 'Content uploaded successfully.');
    }

    /**
     * Delete content
     */
    public function destroy(Request $request)
    {
        $galleryContent = GalleryContent::findOrFail($request->id);
        Storage::disk($galleryContent->storage)->delete($galleryContent->path);

        $galleryContent->delete();
        return response()->json([
            'status' => 'success',
            'message' => 'File successfully deleted'
        ]);
    }

    /**
     * Get gallery content by gallery
     */
    public function galleryContent($gallery){
        $gallery = Gallery::findOrFail($gallery);
        $contents = GalleryContent::where('gallery_id', $gallery->id)->latest()->paginate(20);
        return view(backend('pages.gallery-content'), compact('gallery','contents'));
    }
}
