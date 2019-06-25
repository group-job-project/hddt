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
        $this->ComposerNavigationMenu();
        $this->ComposerNavigationMenuHeader();
    }

    /**
     * Composer Navigation
     */
    public function ComposerNavigationMenu()
    {
        view()->composer('layouts.partials.nav_menu', 'App\Http\ViewComposers\NavigationMenuComposer');
    }

    /**
     * Composer Navigation Top
     */
    public function ComposerNavigationMenuHeader()
    {
        view()->composer('layouts.partials.nav_header', 'App\Http\ViewComposers\NavigationMenuHeaderComposer');
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
