
-- ----------------------------
-- Procedure structure for MENU_TOP
-- ----------------------------
DROP PROCEDURE IF EXISTS `MENU_TOP`;
delimiter ;;
CREATE PROCEDURE `MENU_TOP`(IN `acc_id` INT, IN `group_menu` CHAR(1) CHARSET UTF8, IN `menu_status` CHAR(1) CHARSET UTF8)
  COMMENT 'load menu top in page users'
BEGIN
	SELECT DISTINCT
		MENU.menu_id AS menu_id,
		MENU.alias AS alias,
		MENU.menu_link AS menu_link,
		MENU.menu_parameter AS menu_parameter,
		MENU.menu_tooltip AS tooltip,
		MENU.icon AS icon,
		IFNULL( SUB_MENU.sub_menu_name, "" ) AS sub_menu_name,
		IFNULL( SUB_MENU.sub_menu_link, "" ) AS sub_menu_link,
		IFNULL( SUB_MENU.sub_menu_parameter, "" ) AS sub_menu_parameter,
		IFNULL( SUB_MENU.icon, "" ) AS sub_icon,
		IFNULL( SUB_MENU.sub_menu_tooltip, "" ) AS sub_menu_tooltip 
	FROM
		menu_navication MENU
		LEFT JOIN sub_menu_navigation SUB_MENU ON SUB_MENU.menu_id = MENU.menu_id 
	WHERE
		MENU.acc_id = acc_id 
		AND MENU.group_menu = group_menu 
		AND MENU.menu_status = menu_status 
	ORDER BY
		MENU.menu_id ASC,
		MENU.menu_sort ASC,
		SUB_MENU.sub_menu_sort ASC;

END
;;
delimiter ;