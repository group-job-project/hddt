
-- ----------------------------
-- Procedure structure for UPDATE_COMPANY_INFOMATION
-- ----------------------------
DROP PROCEDURE IF EXISTS `UPDATE_COMPANY_INFOMATION`;
delimiter ;;
CREATE PROCEDURE `UPDATE_COMPANY_INFOMATION`(IN `taxcode` VARCHAR ( 15 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `accountid` INT,
	IN `buyername` VARCHAR ( 150 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `compname` VARCHAR ( 150 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `address` VARCHAR ( 150 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `city` VARCHAR ( 15 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `telphone` VARCHAR ( 15 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `email` VARCHAR ( 50 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `bankaccount` VARCHAR ( 25 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci,
	IN `bankname` VARCHAR ( 50 ) CHARACTER 
	SET utf8 COLLATE utf8_unicode_ci)
  COMMENT 'Update information company by tax code'
BEGIN
	DECLARE
		count INT;
	SELECT
		COUNT( comp_tax_code ) INTO count 
	FROM
		company_information 
	WHERE
		comp_tax_code = taxcode;
	IF
		count > 0 THEN
			UPDATE company_information 
			SET
			buyer_name = buyername,
			comp_name = compname,
			comp_address = address,
			comp_city = city,
			comp_tel_phone = telphone,
			comp_email = email,
			comp_bank_account = bankaccount,
			comp_bank_name = bankname 
		WHERE
			comp_tax_code = taxcode 
			AND acc_id = accountid;
		ELSE 
		INSERT INTO company_information ( comp_tax_code, buyer_name, comp_name, comp_address, comp_city, comp_tel_phone, comp_email, comp_bank_account, comp_bank_name, acc_id )
		VALUES
			( taxcode, buyername, compname, address, city, telphone, email, bankaccount, bankname, accountid );
		
	END IF;

END
;;
delimiter ;