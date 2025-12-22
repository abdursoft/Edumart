<?php

namespace App\Providers;

use App\Models\Menu;
use App\Models\NewsNotice;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // set auth session and life time
        Auth::viaRemember();
        config(['session.lifetime' => 60 * 24 * 365]);


        // Share "Main Menu" globally
        View::composer('*', function ($view) {
            $mainMenu = Menu::where('location', 'header')
                ->where('status', 'active')
                ->with(['items.children'])
                ->first();

            $news = NewsNotice::where('type', 'news')
                ->where('status', 'published')
                ->orderBy('created_at', 'desc')
                ->take(5)
                ->get();
            $view->with('newses', $news);
            $view->with('mainMenu', $mainMenu);
        });
    }
}
