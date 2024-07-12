ALTER TABLE realmd_db_version CHANGE COLUMN required_z2820_01_realmd_joindate_datetime required_z2824_01_realmd_realmlist_category bit;

ALTER TABLE `realmlist` ADD COLUMN `category` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `timezone`;
