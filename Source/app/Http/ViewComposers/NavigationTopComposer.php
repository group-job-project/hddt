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
//        $menus = $nav_menu->loadMenuHeader(100, "0", "0", - 1);
//        $collections = new Collection();
//        $collections->push($menus);
//        foreach ($collections[0] as $collection) {
//            $sub_menus = $nav_menu->loadMenuHeader(- 1, "-1", "-1", $collection->menu_id);
//            $collection->sub_menu = $sub_menus;
//        }
        $menus = $nav_menu->loadMenuHeader(100, "0", "0", - 1);
        $collections = new Collection();
        $collections->push($menus);
        $view->with('main', $collections[0]);
    }
}