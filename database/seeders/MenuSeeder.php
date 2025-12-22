<?php
namespace Database\Seeders;

use App\Models\Menu;
use App\Models\MenuItem;
use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    public function run()
    {
        // Create Main Menu
        $menu = Menu::create([
            'name' => 'Main Menu',
            'location' => 'header',
        ]);

        // Add Menu Items
        $home = MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'Home',
            'url' => '/',
            'order' => 1
        ]);

        $courses = MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'Courses',
            'url' => '/courses',
            'order' => 2
        ]);

        // Sub Items under Courses
        MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'Web Development',
            'url' => '/courses/web',
            'parent_id' => $courses->id,
            'order' => 1
        ]);

        MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'Graphic Design',
            'url' => '/courses/design',
            'parent_id' => $courses->id,
            'order' => 2
        ]);

        MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'About Us',
            'url' => '/about',
            'order' => 3
        ]);

        MenuItem::create([
            'menu_id' => $menu->id,
            'title' => 'Contact',
            'url' => '/contact',
            'order' => 4
        ]);
    }
}
