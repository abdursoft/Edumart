<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use ZipArchive;
use App\Models\InstalledModule;
use Illuminate\Support\Facades\Artisan as FacadesArtisan;
use Illuminate\Support\Facades\File as FacadesFile;
use Nwidart\Modules\Facades\Module;

class ModuleManagerController extends Controller
{
    public function index()
    {
        $modules = Module::all();
        return view('admin.modules.index', compact('modules'));
    }

    public function install(Request $request)
    {
        $request->validate([
            'module_zip' => 'required|file|mimes:zip'
        ]);

        $file = $request->file('module_zip');
        $moduleName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);

        $destination = base_path("Modules/{$moduleName}");

        if (FacadesFile::exists($destination)) {
            return back()->with('error', 'Module already exists.');
        }

        // Extract ZIP
        $zip = new ZipArchive;
        if ($zip->open($file->getRealPath()) === TRUE) {
            $zip->extractTo(base_path('Modules'));
            $zip->close();
        } else {
            return back()->with('error', 'Invalid module zip.');
        }

        // Regenerate autoload
        exec('composer dump-autoload');

        // Run module migrations
        FacadesArtisan::call('module:migrate', [
            'module' => $moduleName
        ]);

        InstalledModule::create([
            'name' => $moduleName,
            'is_active' => true
        ]);

        return back()->with('success', "Module {$moduleName} installed successfully.");
    }

    public function toggle($name)
    {
        $module = InstalledModule::where('name', $name)->firstOrFail();

        if ($module->is_active) {
            Module::disable($name);
        } else {
            Module::enable($name);
        }

        $module->update([
            'is_active' => !$module->is_active
        ]);

        return back();
    }
}