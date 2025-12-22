<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Models\Language;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AdminController extends Controller
{
    // Admin dashboard overview
    public function dashboard()
    {
        return view(backend('pages.dashboard'));
    }

    /**
     * Add new language
     */
    public function addLanguage(Request $request){
        $request->validate([
            'code' => 'required|string|unique:languages,code',
            'name' => 'required|string',
        ]);

        $language = Language::create([
            'code' => $request->code,
            'name' => $request->name,
            'is_active' => true,
        ]);

        $filePath = resource_path("lang/{$request->code}/messages.php");

        if (!file_exists($filePath)) {
            File::makeDirectory(dirname($filePath), 0755, true);
            File::put($filePath, "<?php\n\nreturn [\n    // Add translated strings here\n];");
        }

        return response()->json(['message' => 'Language added successfully', 'language' => $language], 201);
    }
}
