<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    // List all categories
    public function index()
    {
        return Category::orderBy('name')->get();
    }

    // Store a new category
    public function store(Request $request)
    {
        $request->validate([
            'name'        => 'required|string',
            'slug'        => 'nullable|string|unique:categories,slug',
            'description' => 'nullable|string',
            'is_active'   => 'nullable|boolean',
        ]);

        $data = $request->all();

        // Auto-generate slug if not provided
        if (empty($data['slug'])) {
            $data['slug'] = Str::slug($data['name']);
        }

        $category = Category::create($data);

        return response()->json($category, 201);
    }

    // Show a single category
    public function show(Category $category)
    {
        return $category;
    }

    // Update a category
    public function update(Request $request, Category $category)
    {
        $request->validate([
            'name'        => 'sometimes|required|string',
            'slug'        => 'nullable|string|unique:categories,slug,' . $category->id,
            'description' => 'nullable|string',
            'is_active'   => 'nullable|boolean',
        ]);

        $data = $request->all();

        if (!empty($data['name']) && empty($data['slug'])) {
            $data['slug'] = Str::slug($data['name']);
        }

        $category->update($data);

        return response()->json($category);
    }

    // Delete a category
    public function destroy(Category $category)
    {
        $category->delete();

        return response()->json(null, 204);
    }
}
