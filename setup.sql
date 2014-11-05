CREATE TABLE IF NOT EXISTS `encrypt_names` (
	`id` INTEGER PRIMARY KEY AUTOINCREMENT,
	`orig_name` TEXT,
	`enc_name` TEXT,
	`type` BOOLEAN
);
