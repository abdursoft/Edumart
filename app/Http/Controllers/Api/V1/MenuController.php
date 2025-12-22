<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    /**
     * Display all menus.
     */
    public function index($id=null)
    {
        $menus = Menu::orderBy('id', 'desc')->get();
        $menu = null;
        if($id){
            $menu = Menu::findOrFail($id);
        }
        return view(backend('pages.menu'), compact('menus','menu'));
    }

    /**
     * Show the form for creating a new menu.
     */
    public function create()
    {
        return view('admin.admin.menu.create');
    }

    /**
     * Store menu in database.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required|string|max:255',
            'location' => 'nullable|string|max:255',
            'status'   => 'required|in:active,inactive'
        ]);

        Menu::create([
            'name'     => $request->name,
            'location' => $request->location,
            'status'   => $request->status
        ]);

        return redirect()->route('admin.menu.create')->with('success', 'Menu created successfully!');
    }

    /**
     * Edit form.
     */
    public function edit($id)
    {
        $menu = Menu::findOrFail($id);

        return view('admin.menus.edit', compact('menu'));
    }

    /**
     * Update a menu.
     */
    public function update(Request $request, $id)
    {

        $request->validate([
            'name'     => 'required|string|max:255',
            'location' => 'nullable|string|max:255',
            'status'   => 'required|in:active,inactive'
        ]);

        $menu = Menu::findOrFail($id);
        $menu->update([
            'name'     => $request->name,
            'location' => $request->location,
            'status'   => $request->status
        ]);

        return redirect()->route('admin.menu.create')->with('success', 'Menu updated successfully!');
    }

    /**
     * Delete a menu.
     */
    public function destroy($id)
    {
        $menu = Menu::findOrFail($id);
        if(!$menu){
            return redirect()->route('admin.menu.create')->with('error', 'Menu ID is not exists!');
        }
        $menu->delete();
        return redirect()->route('admin.menu.create')->with('success', 'Menu deleted successfully!');
    }
}
