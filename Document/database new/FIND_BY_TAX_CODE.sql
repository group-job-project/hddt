
-- ----------------------------
-- Procedure structure for FIND_BY_TAX_CODE
-- ----------------------------
DROP PROCEDURE IF EXISTS `FIND_BY_TAX_CODE`;
delimiter ;;
CREATE PROCEDURE `FIND_BY_TAX_CODE`(IN `taxcode` VARCHAR ( 15 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci)
  COMMENT 'Find by tax code'
BEGIN
	SELECT
		buyer_name AS buyer_name,
		company_information.comp_name AS company_name,
		company_information.comp_address AS company_address,
		company_information.comp_tax_code AS company_tax_code,
		company_information.comp_city AS company_city,
		company_information.comp_tel_phone AS company_phone,
		company_information.comp_fax AS company_fax,
		company_information.comp_mobile_phone AS company_mobile,
		company_information.comp_email AS company_email,
		company_information.comp_website AS company_website,
		company_information.comp_bank_account AS company_bank_account,
		company_information.comp_bank_name AS company_bank_name 
	FROM
	company_information where comp_tax_code = taxcode;
END
;;
delimiter ;

