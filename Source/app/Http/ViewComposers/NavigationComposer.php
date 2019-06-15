<?php
namespace App\Http\ViewComposers;

use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class NavigationComposer
{

    /**
     * Bind data to the view.
     *
     * @param View $view
     * @return void
     */
    public function compose(View $view)
    {
        $menus = DB::table('menu_navication')->get();
        $view->with('menus', $menus);
    }
}