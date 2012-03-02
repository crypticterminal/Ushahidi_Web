-- Supports the ability to require approval of new users
ALTER TABLE `settings` ADD `manually_approve_users` TINYINT( 4 ) NOT NULL DEFAULT '0' AFTER `allow_alerts`;

-- Supports ability to require confirmation of email addresses
ALTER TABLE `settings` ADD `require_email_confirmation` TINYINT( 4 ) NOT NULL DEFAULT '0' AFTER `allow_alerts`;

-- Update the database version
UPDATE `settings` SET `db_version` = '75' WHERE `id` = 1 LIMIT 1;