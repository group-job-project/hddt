CREATE DEFINER=`root`@`localhost` PROCEDURE `MENU_TOP`(
	IN `ACCOUNTID` INT,
	IN `GROUPMENU` CHAR ( 2 ) CHARSET UTF8,
	IN `MENUSTATUS` CHAR ( 2 ) CHARSET UTF8,
	IN MENUID INT 
	)
    NO SQL
BEGIN #load menu top join 2 table menu_navication and sub_menu_navigation
	IF
		( MENUSTATUS = '-1' && ACCOUNTID = - 1 && GROUPMENU = '-1' ) THEN
		SELECT
			sub_menu_name,
			sub_menu_link,
			sub_menu_parameter,
			icon,
			sub_menu_tooltip,
			menu_id 
		FROM
			sub_menu_navigation 
		WHERE
			menu_id = MENUID;
		ELSE SELECT
			alias,
			menu_link,
			menu_parameter,
			menu_tooltip,
			icon,
			menu_id 
		FROM
			menu_navication 
		WHERE
			acc_id = ACCOUNTID -- check account of customer
			
			AND menu_status = MENUSTATUS -- status 0 enable 1 disable
			
			AND group_menu = GROUPMENU;-- group menu 0 menu top 1 menu bottom
		
	END IF;

END