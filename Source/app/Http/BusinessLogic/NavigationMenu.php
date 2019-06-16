<?php
/**
 PHP versions 7.3

 Copyright (c) 2003-2019

 LICENSE:

 This library is free software; you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation; either version 2.1 of the License, or (at your option) any later version.

 This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

 You should have received a copy of the GNU Lesser General Public License along with this library; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

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
     *
     * @param Integer $account_id
     * @param String $menu_status
     * @param String $group_menu
     * @return array
     */
    public function loadMenuHeader()
    {
        $menus = DB::select('CALL MENU_TOP()');
        return $menus;
    }
}