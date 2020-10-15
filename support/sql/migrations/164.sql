/*
	Date: 16 October 2020
	Migration: 164
	Description: Add value_source column to ca_attributes
*/

/*==========================================================================*/

ALTER TABLE ca_attributes ADD value_source VARCHAR(255) NULL DEFAULT NULL AFTER `row_id`;


/*==========================================================================*/

/* Always add the update to ca_schema_updates at the end of the file */
INSERT IGNORE INTO ca_schema_updates (version_num, datetime) VALUES (164, unix_timestamp());
