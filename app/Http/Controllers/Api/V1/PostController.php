<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostController extends Controller
{
    // List all posts
    public function index()
    {
        return Post::with(['category', 'author'])
            ->orderBy('published_at', 'desc')
            ->get();
    }

    // Store a new post
    public function store(Request $request)
    {
        $request->validate([
            'title'        => 'required|string',
            'slug'         => 'nullable|string|unique:posts,slug',
            'excerpt'      => 'nullable|string',
            'content'      => 'nullable|string',
            'category_id'  => 'nullable|exists:categories,id',
            'user_id'      => 'nullable|exists:users,id',
            'thumbnail'    => 'nullable|string',
            'status'       => 'required|in:draft,published,archived',
            'published_at' => 'nullable|date',
        ]);

        $data = $request->all();

        // Auto-generate slug if not provided
        if (empty($data['slug'])) {
            $data['slug'] = Str::slug($data['title']);
        }

        $post = Post::create($data);

        return response()->json($post, 201);
    }

    // Show a single post
    public function show(Post $post)
    {
        return $post->load(['category', 'author']);
    }

    // Update a post
    public function update(Request $request, Post $post)
    {
        $request->validate([
            'title'        => 'sometimes|required|string',
            'slug'         => 'nullable|string|unique:posts,slug,' . $post->id,
            'excerpt'      => 'nullable|string',
            'content'      => 'nullable|string',
            'category_id'  => 'nullable|exists:categories,id',
            'user_id'      => 'nullable|exists:users,id',
            'thumbnail'    => 'nullable|string',
            'status'       => 'nullable|in:draft,published,archived',
            'published_at' => 'nullable|date',
        ]);

        $data = $request->all();

        // Auto-generate slug if title is updated and slug not provided
        if (!empty($data['title']) && empty($data['slug'])) {
            $data['slug'] = Str::slug($data['title']);
        }

        $post->update($data);

        return response()->json($post);
    }

    // Delete a post
    public function destroy(Post $post)
    {
        $post->delete();

        return response()->json(null, 204);
    }
}
