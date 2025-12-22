<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PageController extends Controller
{
    // List all pages
    public function index()
    {
        $pages = Page::orderBy('created_at', 'desc')->get();
        return view(backend('pages.page-manage'), compact('pages'));
    }

    // Store a new page
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title'            => 'required|string|max:255',
            'slug'             => 'required|string|max:255|unique:pages,slug',
            'content'          => 'nullable|string',
            'meta_title'       => 'nullable|string|max:255',
            'meta_description' => 'nullable|string|max:255',
            'status'           => 'nullable|in:draft,published,archived',
        ]);

        $validated['slug'] = Str::slug($validated['slug'], '-');

        Page::create($validated);

        return back()->with('success', 'Page created successfully.');
    }

    // Show a single page
    public function show($id)
    {
        $page = Page::findOrFail($id);
        return view(backend('pages.page-create'), compact('page'));
    }

    // create a page
    public function create()
    {
        // Return a view or data necessary for creating a page
        $page = null;
        return view(backend('pages.page-create'), compact('page'));
    }

    // Update a page
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title'            => 'sometimes|required|string|max:255',
            'slug'             => 'sometimes|required|string|max:255|unique:pages,slug,' . $id,
            'content'          => 'nullable|string',
            'meta_title'       => 'nullable|string|max:255',
            'meta_description' => 'nullable|string|max:255',
            'status'           => 'nullable|in:draft,published,archived',
        ]);

        $validated['slug'] = Str::slug($validated['slug'], '-');

        $page = Page::findOrFail($id);
        $page->update($validated);

        return redirect()->route('admin.page.manage_page')->with('success', 'Page updated successfully.');
    }

    // Delete a page (soft delete)
    public function destroy($id)
    {
        $page = Page::findOrFail($id);
        $page->delete();

        return redirect()->route('admin.page.manage_page')->with('success', 'Page deleted successfully.');
    }

    // Restore a soft-deleted page
    public function restore($id)
    {
        $page = Page::withTrashed()->findOrFail($id);
        $page->restore();

        return redirect()->route('admin.page.manage_page')->with('success', 'Page restored successfully.');
    }
}
