<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\MenuItem;
use App\Models\Menu;
use App\Models\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MenuItemController extends Controller
{
    /**
     * Display all menu items.
     */
    public function index($id)
    {
        $menu = Menu::findOrFail($id);
        $pages = Page::get()->pluck('title','slug')->toArray();
        $nav = $this->getMenu($id);
        return view(backend('pages.menu-item'), compact('menu','pages','nav'));
    }

    /**
     * Show create form.
     */
    public function create()
    {
        $menus = Menu::all();
        $parents = MenuItem::whereNull('parent_id')->get();

        return view('admin.menu_items.create', compact('menus', 'parents'));
    }

    /**
     * Store data.
     */
    public function store(Request $request,$id)
    {
        $menu = json_decode($request->menu_json, true) ?? [];

        try {
            DB::beginTransaction();
            MenuItem::where('menu_id', $request->id)->delete();

            if(count($menu) > 0){
                foreach($menu as $key => $item){
                    $parent = MenuItem::create([
                        'menu_id' => 1,
                        'title' => $item['name'],
                        'url' => $item['attribute'] == 'page' ? $item['page'] : $item['url'],
                        'attributes' => $item['attribute'],
                        'target' => $item['target'],
                        'order' => $key ?? 0,
                        'is_active' => boolval($item['visible']) ?? 0,
                    ]);

                    if(isset($item['children'])){
                        foreach($item['children'] as $key => $child){
                            MenuItem::create([
                                'menu_id' => $id,
                                'title' => $child['name'],
                                'url' => $child['attribute'] == 'page' ? $child['page'] : $child['url'],
                                'attributes' => $child['attribute'],
                                'target' => $child['target'],
                                'order' => $key ?? 0,
                                'parent_id' => $parent->id,
                                'is_active' => boolval($child['visible']) ?? 0,
                            ]);
                        }
                    }
                }
            }
            DB::commit();

            return redirect()->route('admin.menu.items',['id' => $id])->with('success', 'Menu item created successfully!');
        } catch (\Throwable $th) {
            DB::rollBack();
            return redirect()->route('admin.menu.items', ['id' => $id])->with('error', $th->getMessage());
        }


    }

    /**
     * Edit form.
     */
    public function edit($id)
    {
        $menuItem   = MenuItem::findOrFail($id);
        $menus      = Menu::all();

        // Parent options except itself (avoid infinite loops)
        $parents = MenuItem::whereNull('parent_id')
            ->where('id', '!=', $id)
            ->get();

        return view('admin.menu_items.edit', compact('menuItem', 'menus', 'parents'));
    }

    /**
     * Update record.
     */
    public function update(Request $request, $id)
    {
        $menuItem = MenuItem::findOrFail($id);

        $request->validate([
            'menu_id' => 'required|exists:menus,id',
            'title' => 'required|string|max:255',
            'url' => 'nullable|string',
            'route_name' => 'nullable|string',
            'parent_id' => 'nullable|exists:menu_items,id|not_in:' . $id,
            'order' => 'nullable|integer',
            'is_active' => 'boolean'
        ]);

        $menuItem->update([
            'menu_id' => $request->menu_id,
            'title' => $request->title,
            'url' => $request->url,
            'route_name' => $request->route_name,
            'parent_id' => $request->parent_id,
            'order' => $request->order ?? 0,
            'is_active' => $request->is_active ?? true,
        ]);

        return redirect()->route('menu_items.index')->with('success', 'Menu item updated successfully!');
    }

    /**
     * Delete record.
     */
    public function destroy($id)
    {
        $menuItem = MenuItem::findOrFail($id);
        $menuItem->delete();

        return redirect()->route('menu_items.index')->with('success', 'Menu item deleted successfully!');
    }

    /**
     * Recursive tree saver
     */
    private function saveTree($items, $parentId = null)
    {
        foreach ($items as $index => $item) {
            MenuItem::where('id', $item['id'])->update([
                'parent_id' => $parentId,
                'order' => $index
            ]);

            if (!empty($item['children'])) {
                $this->saveTree($item['children'], $item['id']);
            }
        }
    }

    public function getMenu($menuId)
    {
        $items = MenuItem::where('menu_id', $menuId)
            ->whereNull('parent_id')
            ->with('children')
            ->orderBy('order')
            ->get();

        $formatted = $items->map(function ($item) {
            return $this->transformMenuItem($item);
        });

        return $formatted;
    }


    /**
     * Rearange menu item
     */
    private function transformMenuItem($item)
    {
        return [
            "deleted"   => 0,
            "new"       => 0,
            "visible"   => $item->is_active,
            "target"    => $item->target ?? "_self",
            "url"       => $item->url,
            "page"      => $item->route_name,          // route_name = page
            "attribute" => $item->attributes,
            "name"      => $item->title,               // title = name
            "id"        => $item->id,
            "children"  => $item->children->map(function ($child) {
                return $this->transformMenuItem($child);
            })->toArray()
        ];
    }

}
