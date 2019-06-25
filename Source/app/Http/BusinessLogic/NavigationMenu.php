<?php
/**
 PHP versions 7.3

 Copyright (c) 2003-2019
 
 Author:  	thueso company
 Version:  	1.0
 Copyright:  2019-2020
 License:  	LGPL
 */
namespace App\Http\BusinessLogic;

use Illuminate\Support\Facades\DB;

/**
 * Navigation Menu
 *
 * @author ptquang
 */
class NavigationMenu
{

    /**
     * Load Menu Header
     */
    public function loadMenus($account_id, $group_menu, $menu_status)
    {
        $menus = DB::select('CALL MENU_TOP(?, ?, ?)', array(
            $account_id,
            $group_menu,
            $menu_status
        ));
        return $menus;
    }
}