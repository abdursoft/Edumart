<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class TranslationController extends Controller
{
    public function index()
    {
        $languages = ['en', 'bn']; // You can make this dynamic later (from DB)

        $translations = [];

        foreach ($languages as $lang) {
            $path = resource_path("lang/{$lang}/messages.php");

            if (File::exists($path)) {
                $translations[$lang] = include($path);
            } else {
                $translations[$lang] = [];
            }
        }

        // Get all unique keys across all languages
        $allKeys = collect($translations)->flatMap(fn($t) => array_keys($t))->unique()->values();

        return view('admin.translations.index', compact('translations', 'languages', 'allKeys'));
    }

    public function update(Request $request)
    {
        $languages = $request->input('translations', []);

        foreach ($languages as $lang => $pairs) {
            $content = "<?php\n\nreturn [\n";

            foreach ($pairs as $key => $value) {
                $value = addslashes($value);
                $content .= "    '{$key}' => '{$value}',\n";
            }

            $content .= "];";

            File::ensureDirectoryExists(resource_path("lang/{$lang}"));
            File::put(resource_path("lang/{$lang}/messages.php"), $content);
        }

        return back()->with('success', 'Translations updated successfully!');
    }
}
