<?php
namespace App\Http\ViewComposers;

use Illuminate\View\View;
use App\Http\BusinessLogic\NavigationMenu;
use Illuminate\Support\Collection;

class NavigationTopComposer
{

    /**
     * Bind data to the view.
     *
     * @param View $view
     * @return void
     */
    public function compose(View $view)
    {
        $nav_menu = new NavigationMenu();
        $menus = $nav_menu->loadMenuHeader();
        $collections = new Collection();
        $collections->push($menus);
        $view->with('main', $collections[0]);
    }
}