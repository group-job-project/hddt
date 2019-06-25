<?php
namespace App\Http\ViewComposers;

use Illuminate\View\View;
use App\Http\BusinessLogic\NavigationMenu;
use Illuminate\Support\Collection;

class NavigationMenuComposer
{

    /**
     * Bind data to the view.
     *
     * @param View $view
     * @return void
     */
    public function compose(View $view)
    {
        $navigation_menu = new NavigationMenu();
        $nav_menu = $navigation_menu->loadMenus(100, "1", "0");
        $nav_collections = new Collection();
        $nav_collections->push($nav_menu);
        $view->with('nav_menu', $nav_collections[0]);
    }
}