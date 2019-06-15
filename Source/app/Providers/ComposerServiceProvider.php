<?php
namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->ComposerMenus();
        $this->ComposerMenusTop();
    }

    public function ComposerMenus()
    {
        view()->composer('layouts.partials.nav_menu', 'App\Http\ViewComposers\NavigationComposer');
    }

    public function ComposerMenusTop()
    {
        view()->composer('layouts.partials.nav_header', 'App\Http\ViewComposers\NavigationTopComposer');
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
