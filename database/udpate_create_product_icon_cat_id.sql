ALTER TABLE `tbl_product`
ADD COLUMN `icon`  varchar(1000) NULL AFTER `thumbnail`,
ADD COLUMN `delete_flag`  tinyint(1) NULL DEFAULT 0 AFTER `unit_en`;

