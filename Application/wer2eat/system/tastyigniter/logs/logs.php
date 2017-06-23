<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2017-06-23 06:01:11 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\database\drivers\mysqli\mysqli_driver.php 296
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_addresses' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_addresses` (
	address_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id INT(15) NOT NULL,
	address_1 VARCHAR(128) NOT NULL,
	address_2 VARCHAR(128) NOT NULL,
	city VARCHAR(128) NOT NULL,
	state VARCHAR(128) NOT NULL,
	postcode VARCHAR(10) NOT NULL,
	country_id INT(11) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_banners' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_banners` (
	banner_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	type CHAR(8) NOT NULL,
	click_url VARCHAR(255) NOT NULL,
	language_id INT(11) NOT NULL,
	alt_text VARCHAR(255) NOT NULL,
	image_code TEXT NOT NULL,
	custom_code TEXT NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_categories' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_categories` (
	category_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) NOT NULL,
	description TEXT NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_countries' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_countries` (
	country_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	country_name VARCHAR(128) NOT NULL,
	iso_code_2 VARCHAR(2) NOT NULL,
	iso_code_3 VARCHAR(3) NOT NULL,
	format TEXT NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_coupons' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_coupons` (
	coupon_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(128) NOT NULL,
	code VARCHAR(15) NOT NULL,
	type CHAR(1) NOT NULL,
	discount DECIMAL(15,2) NOT NULL,
	min_total DECIMAL(15,2) NOT NULL,
	redemptions INT(11) NOT NULL DEFAULT "0",
	customer_redemptions INT(11) NOT NULL DEFAULT "0",
	description TEXT NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	status TINYINT(1) NOT NULL,
	date_added DATE NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_coupons_history' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_coupons_history` (
	coupon_history_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	coupon_id INT(11) NOT NULL,
	order_id INT(11) NOT NULL,
	customer_id INT(11) NOT NULL,
	code VARCHAR(15) NOT NULL,
	min_total DECIMAL(15,2) NOT NULL,
	amount DECIMAL(15,2) NOT NULL,
	date_used DATETIME NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_currencies' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_currencies` (
	currency_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	country_id INT(11) NOT NULL,
	currency_name VARCHAR(32) NOT NULL,
	currency_code VARCHAR(3) NOT NULL,
	currency_symbol VARCHAR(3) NOT NULL,
	iso_alpha2 VARCHAR(2) NOT NULL,
	iso_alpha3 VARCHAR(3) NOT NULL,
	iso_numeric INT(11) NOT NULL,
	flag VARCHAR(6) NOT NULL,
	currency_status INT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_customers' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_customers` (
	customer_id INT(11) unsigned NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(32) NOT NULL,
	last_name VARCHAR(32) NOT NULL,
	email VARCHAR(96) NOT NULL,
	password VARCHAR(40) NOT NULL,
	salt VARCHAR(9) NOT NULL,
	telephone VARCHAR(32) NOT NULL,
	address_id INT(11) NOT NULL,
	security_question_id INT(11) NOT NULL,
	security_answer VARCHAR(32) NOT NULL,
	newsletter TINYINT(1) NOT NULL,
	customer_group_id INT(11) NOT NULL,
	ip_address VARCHAR(40) NOT NULL,
	date_added DATETIME NOT NULL,
	status TINYINT(1) NOT NULL,
	PRIMARY KEY (customer_id, email)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_customers_activity' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_customers_activity` (
	activity_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id INT(11) NOT NULL,
	access_type VARCHAR(128) NOT NULL,
	browser VARCHAR(128) NOT NULL,
	ip_address VARCHAR(40) NOT NULL,
	country_code VARCHAR(2) NOT NULL,
	request_uri TEXT NOT NULL,
	referrer_uri TEXT NOT NULL,
	date_added DATETIME NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_customer_groups' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_customer_groups` (
	customer_group_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	group_name VARCHAR(32) NOT NULL,
	description TEXT NOT NULL,
	approval TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_extensions' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_extensions` (
	extension_id INT(11) NOT NULL AUTO_INCREMENT,
	type VARCHAR(32) NOT NULL,
	name VARCHAR(128) NOT NULL,
	data TEXT NOT NULL,
	serialized TINYINT(1) NOT NULL,
	PRIMARY KEY (extension_id),
	UNIQUE (type, name)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_languages' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_languages` (
	language_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	code VARCHAR(7) NOT NULL,
	name VARCHAR(32) NOT NULL,
	image VARCHAR(32) NOT NULL,
	directory VARCHAR(32) NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_layouts' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_layouts` (
	layout_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_layout_routes' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_layout_routes` (
	layout_route_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	layout_id INT(11) NOT NULL,
	uri_route VARCHAR(128) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_locations' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_locations` (
	location_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	location_name VARCHAR(32) NOT NULL,
	location_email VARCHAR(96) NOT NULL,
	description TEXT NOT NULL,
	location_address_1 VARCHAR(128) NOT NULL,
	location_address_2 VARCHAR(128) NOT NULL,
	location_city VARCHAR(128) NOT NULL,
	location_state VARCHAR(128) NOT NULL,
	location_postcode VARCHAR(10) NOT NULL,
	location_country_id INT(11) NOT NULL,
	location_telephone VARCHAR(32) NOT NULL,
	location_lat FLOAT(10,6) NOT NULL,
	location_lng FLOAT(10,6) NOT NULL,
	location_radius INT(11) NOT NULL,
	covered_area TEXT NOT NULL,
	offer_delivery TINYINT(1) NOT NULL,
	offer_collection TINYINT(1) NOT NULL,
	ready_time INT(11) NOT NULL,
	last_order_time INT(11) NOT NULL,
	delivery_charge DECIMAL(15,2) NOT NULL,
	min_delivery_total DECIMAL(15,2) NOT NULL,
	reservation_interval INT(11) NOT NULL,
	reservation_turn INT(11) NOT NULL,
	location_status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_location_tables' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_location_tables` (
	location_id INT(11) NOT NULL,
	table_id INT(11) NOT NULL,
	PRIMARY KEY (location_id, table_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_mail_templates' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_mail_templates` (
	template_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32) NOT NULL,
	language_id INT(11) NOT NULL,
	date_added DATETIME NOT NULL,
	date_updated DATETIME NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_mail_templates_data' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_mail_templates_data` (
	template_data_id INT(11) NOT NULL AUTO_INCREMENT,
	template_id INT(11) NOT NULL,
	code VARCHAR(32) NOT NULL,
	subject VARCHAR(128) NOT NULL,
	body TEXT NOT NULL,
	date_added DATETIME NOT NULL,
	date_updated DATETIME NOT NULL,
	PRIMARY KEY (template_data_id, template_id, code)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_menus' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_menus` (
	menu_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	menu_name VARCHAR(255) NOT NULL,
	menu_description TEXT NOT NULL,
	menu_price DECIMAL(15,2) NOT NULL,
	menu_photo VARCHAR(255) NOT NULL,
	menu_category_id INT(11) NOT NULL,
	stock_qty INT(11) NOT NULL,
	minimum_qty INT(11) NOT NULL,
	subtract_stock TINYINT(1) NOT NULL,
	menu_status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_menus_specials' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_menus_specials` (
	special_id INT(11) NOT NULL AUTO_INCREMENT,
	menu_id INT(11) NOT NULL DEFAULT "0",
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	special_price DECIMAL(15,2) NOT NULL,
	special_status TINYINT(1) NOT NULL,
	PRIMARY KEY (special_id, menu_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_menus_to_options' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_menus_to_options` (
	menu_id INT(11) NOT NULL,
	option_id INT(11) NOT NULL,
	PRIMARY KEY (menu_id, option_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_menu_options' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_menu_options` (
	option_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	option_name VARCHAR(32) NOT NULL,
	option_price DECIMAL(15,2) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_messages' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_messages` (
	message_id INT(15) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	location_id INT(11) NOT NULL,
	staff_id_from INT(11) NOT NULL,
	staff_id_to INT(11) NOT NULL,
	date_added DATETIME NOT NULL,
	send_type VARCHAR(32) NOT NULL,
	recipient VARCHAR(32) NOT NULL,
	subject TEXT NOT NULL,
	body TEXT NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_message_recipients' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_message_recipients` (
	message_recipient_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	message_id int(11) NOT NULL,
	staff_id int(11) NOT NULL,
	customer_id int(11) NOT NULL,
	staff_email varchar(96) NOT NULL,
	customer_email varchar(96) NOT NULL,
	state tinyint(1) NOT NULL,
	status tinyint(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_orders' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_orders` (
	order_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id int(11) NOT NULL,
	first_name varchar(32) NOT NULL,
	last_name varchar(32) NOT NULL,
	email varchar(96) NOT NULL,
	telephone varchar(32) NOT NULL,
	location_id int(11) NOT NULL,
	address_id int(11) NOT NULL,
	cart text NOT NULL,
	total_items int(11) NOT NULL,
	comment text NOT NULL,
	payment varchar(35) NOT NULL,
	order_type varchar(32) NOT NULL,
	date_added datetime NOT NULL,
	date_modified date NOT NULL,
	order_time time NOT NULL,
	order_total decimal(15,2) NOT NULL,
	status_id int(11) NOT NULL,
	ip_address varchar(40) NOT NULL,
	user_agent varchar(255) NOT NULL,
	notify tinyint(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_order_menus' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_order_menus` (
	order_menu_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_id INT(11) NOT NULL,
	menu_id INT(11) NOT NULL,
	name VARCHAR(255) NOT NULL,
	quantity INT(11) NOT NULL,
	price DECIMAL(15,2) NOT NULL DEFAULT "0.00",
	subtotal DECIMAL(15,2) NOT NULL DEFAULT "0.00",
	order_option_id INT(11) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_order_options' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_order_options` (
	order_option_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	order_id INT(11) NOT NULL,
	menu_id INT(11) NOT NULL,
	option_id INT(11) NOT NULL,
	option_name VARCHAR(32) NOT NULL,
	option_price DECIMAL(15,2) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_order_totals' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_order_totals` (
	order_total_id INT(11) NOT NULL AUTO_INCREMENT,
	order_id INT(11) NOT NULL,
	code VARCHAR(30) NOT NULL,
	title VARCHAR(255) NOT NULL,
	value DECIMAL(15,2) NOT NULL,
	priority TINYINT(1) NOT NULL,
	PRIMARY KEY (order_total_id, order_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_pages' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_pages` (
	page_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	language_id INT(11) NOT NULL,
	name VARCHAR(32) NOT NULL,
	title VARCHAR(255) NOT NULL,
	heading VARCHAR(255) NOT NULL,
	content TEXT NOT NULL,
	meta_description VARCHAR(255) NOT NULL,
	meta_keywords VARCHAR(255) NOT NULL,
	layout_id INT(11) NOT NULL,
	menu_location TINYINT(11) NOT NULL,
	date_added DATETIME NOT NULL,
	date_updated DATETIME NOT NULL,
	status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_permalinks' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_permalinks` (
	permalink_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	slug VARCHAR(255) NOT NULL,
	controller VARCHAR(255) NOT NULL,
	query VARCHAR(255) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:34 --> Query error: Table 'jnl9mvzsk_pp_payments' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_pp_payments` (
	transaction_id VARCHAR(19) NOT NULL PRIMARY KEY,
	order_id INT(11) NOT NULL,
	customer_id INT(11) NOT NULL,
	serialized TEXT NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_reservations' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_reservations` (
	reservation_id INT(32) NOT NULL AUTO_INCREMENT,
	location_id INT(11) NOT NULL,
	table_id INT(11) NOT NULL,
	guest_num INT(11) NOT NULL,
	occasion_id INT(11) NOT NULL,
	customer_id INT(11) NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	email VARCHAR(96) NOT NULL,
	telephone VARCHAR(45) NOT NULL,
	comment TEXT NOT NULL,
	reserve_time TIME NOT NULL,
	reserve_date DATE NOT NULL,
	date_added DATE NOT NULL,
	date_modified DATE NOT NULL,
	assignee_id INT(11) NOT NULL,
	notify TINYINT(1) NOT NULL,
	ip_address VARCHAR(40) NOT NULL,
	user_agent VARCHAR(255) NOT NULL,
	status TINYINT(1) NOT NULL,
	PRIMARY KEY (reservation_id, location_id, table_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_reviews' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_reviews` (
	review_id INT(11) NOT NULL AUTO_INCREMENT,
	customer_id INT(11) NOT NULL,
	order_id INT(11) NOT NULL,
	author VARCHAR(32) NOT NULL,
	location_id INT(11) NOT NULL,
	quality INT(11) NOT NULL,
	delivery INT(11) NOT NULL,
	service INT(11) NOT NULL,
	review_text TEXT NOT NULL,
	date_added DATETIME NOT NULL,
	review_status TINYINT(1) NOT NULL,
	PRIMARY KEY (review_id, order_id)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_security_questions' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_security_questions` (
	question_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	text TEXT NOT NULL,
	priority TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_settings' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_settings` (
	setting_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sort VARCHAR(45) NOT NULL,
	item VARCHAR(255) NOT NULL UNIQUE,
	value TEXT NOT NULL,
	serialized TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_staffs' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_staffs` (
	staff_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	staff_name VARCHAR(32) NOT NULL,
	staff_email VARCHAR(96) NOT NULL,
	staff_group_id INT(11) NOT NULL,
	staff_location_id INT(11) NOT NULL,
	timezone VARCHAR(32) NOT NULL,
	language_id INT(11) NOT NULL,
	date_added DATE NOT NULL,
	staff_status TINYINT(1) NOT NULL,
	UNIQUE (staff_email)
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_staff_groups' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_staff_groups` (
	staff_group_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	staff_group_name VARCHAR(32) NOT NULL,
	location_access TINYINT(1) NOT NULL,
	permission TEXT NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_statuses' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_statuses` (
	status_id INT(15) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	status_name VARCHAR(45) NOT NULL,
	status_comment TEXT NOT NULL,
	notify_customer TINYINT(1) NOT NULL,
	status_for VARCHAR(10) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_status_history' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_status_history` (
	status_history_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	object_id INT(11) NOT NULL,
	staff_id INT(11) NOT NULL,
	assignee_id INT(11) NOT NULL,
	status_id INT(11) NOT NULL,
	notify TINYINT(1) NOT NULL,
	status_for VARCHAR(32) NOT NULL,
	comment TEXT NOT NULL,
	date_added DATETIME NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:02:35 --> Query error: Table 'jnl9mvzsk_tables' already exists - Invalid query: CREATE TABLE `jnl9mvzsk_tables` (
	table_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	table_name VARCHAR(32) NOT NULL,
	min_capacity INT(11) NOT NULL,
	max_capacity INT(11) NOT NULL,
	table_status TINYINT(1) NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:03:06 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\database\drivers\mysqli\mysqli_driver.php 296
ERROR - 2017-06-23 06:07:31 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\database\drivers\mysqli\mysqli_driver.php 296
ERROR - 2017-06-23 06:08:00 --> Query error: Duplicate column name 'flag' - Invalid query: ALTER TABLE `2kaq93mib_countries`
	ADD flag VARCHAR(255) NOT NULL
ERROR - 2017-06-23 06:08:00 --> Query error: Can't DROP 'start_date'; check that column/key exists - Invalid query: ALTER TABLE `2kaq93mib_coupons` DROP COLUMN `start_date`
ERROR - 2017-06-23 06:08:00 --> Query error: Can't DROP 'end_date'; check that column/key exists - Invalid query: ALTER TABLE `2kaq93mib_coupons` DROP COLUMN `end_date`
ERROR - 2017-06-23 06:08:00 --> Query error: Duplicate column name 'validity' - Invalid query: ALTER TABLE `2kaq93mib_coupons`
	ADD validity CHAR(15) NOT NULL
ERROR - 2017-06-23 06:08:00 --> Query error: Duplicate column name 'fixed_date' - Invalid query: ALTER TABLE `2kaq93mib_coupons`
	ADD fixed_date DATE DEFAULT NULL
ERROR - 2017-06-23 06:08:00 --> Query error: Duplicate column name 'fixed_from_time' - Invalid query: ALTER TABLE `2kaq93mib_coupons`
	ADD fixed_from_time TIME DEFAULT NULL
ERROR - 2017-06-23 06:08:30 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\database\drivers\mysqli\mysqli_driver.php 296
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'status' - Invalid query: ALTER TABLE `2kaq93mib_extensions`
	ADD status TINYINT(1) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'title' - Invalid query: ALTER TABLE `2kaq93mib_extensions`
	ADD title VARCHAR(255) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'status' - Invalid query: ALTER TABLE `2kaq93mib_working_hours`
	ADD status TINYINT(1) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'parent_id' - Invalid query: ALTER TABLE `2kaq93mib_categories`
	ADD parent_id INT(11) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'priority' - Invalid query: ALTER TABLE `2kaq93mib_categories`
	ADD priority INT(11) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'image' - Invalid query: ALTER TABLE `2kaq93mib_categories`
	ADD image VARCHAR(255) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate entry '10971' for key 'PRIMARY' - Invalid query: INSERT INTO 2kaq93mib_settings (`setting_id`, `sort`, `item`, `value`, `serialized`) VALUES (10971, 'prefs', 'default_themes', 'a:2:{s:5:"admin";s:18:"tastyigniter-blue/";s:4:"main";s:20:"tastyigniter-orange/";}', 1);
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate key name 'uniqueSlug' - Invalid query: ALTER TABLE 2kaq93mib_permalinks ADD UNIQUE INDEX `uniqueSlug` (`slug`, `controller`);
ERROR - 2017-06-23 06:09:32 --> Query error: Unknown column 'order_id' in '2kaq93mib_reviews' - Invalid query: ALTER TABLE 2kaq93mib_reviews CHANGE `order_id` `sale_id` INT(11)  NOT NULL;
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'sale_type' - Invalid query: ALTER TABLE 2kaq93mib_reviews ADD `sale_type` VARCHAR(32)  NULL  DEFAULT NULL  AFTER `sale_id`;
ERROR - 2017-06-23 06:09:32 --> Query error: Can't DROP 'covered_area'; check that column/key exists - Invalid query: ALTER TABLE `2kaq93mib_locations` DROP COLUMN `covered_area`
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'status_color' - Invalid query: ALTER TABLE `2kaq93mib_statuses`
	ADD status_color VARCHAR(32) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'assignee_id' - Invalid query: ALTER TABLE `2kaq93mib_orders`
	ADD assignee_id INT(11) NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Table 'database.2kaq93mib_customers_activity' doesn't exist - Invalid query: ALTER TABLE 2kaq93mib_customers_activity RENAME 2kaq93mib_customers_online;
ERROR - 2017-06-23 06:09:32 --> Query error: Duplicate column name 'user_agent' - Invalid query: ALTER TABLE `2kaq93mib_customers_online`
	ADD user_agent TEXT NOT NULL
ERROR - 2017-06-23 06:09:32 --> Query error: Table '2kaq93mib_notifications' already exists - Invalid query: CREATE TABLE `2kaq93mib_notifications` (
	notification_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	action VARCHAR(255) NOT NULL,
	object VARCHAR(255) NOT NULL,
	suffix VARCHAR(255) NOT NULL,
	object_id INT(11) NOT NULL,
	actor_id INT(11) NOT NULL,
	subject_id INT(11) NOT NULL,
	status TINYINT(4) NOT NULL,
	date_added DATETIME NOT NULL
) DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci
ERROR - 2017-06-23 06:10:02 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\database\drivers\mysqli\mysqli_driver.php 296
ERROR - 2017-06-23 06:10:31 --> Query error: Duplicate column name 'currency_rate' - Invalid query: ALTER TABLE `2kaq93mib_currencies`
	ADD currency_rate DECIMAL(15,8) NOT NULL AFTER currency_symbol
ERROR - 2017-06-23 06:10:31 --> Query error: Duplicate column name 'symbol_position' - Invalid query: ALTER TABLE `2kaq93mib_currencies`
	ADD symbol_position TINYINT NOT NULL AFTER currency_rate
ERROR - 2017-06-23 06:11:01 --> Severity: Error --> Maximum execution time of 30 seconds exceeded C:\xampp\htdocs\wer2eat\system\tastyigniter\migrations\029_create_mealtimes_table_and_add_column_to_menus_table_and_menu_options_table.php 1
ERROR - 2017-06-23 10:05:03 --> Severity: Warning --> mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() C:\xampp\htdocs\wer2eat\system\libraries\Email.php 1837
ERROR - 2017-06-23 10:07:44 --> Severity: Warning --> mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() C:\xampp\htdocs\wer2eat\system\libraries\Email.php 1837
ERROR - 2017-06-23 10:08:25 --> cURL: Error --> 22: The requested URL returned error: 404 Not Found https://api.tastyigniter.com/v1/core/version/2.1.1/5.5.38/5.5.5-10.1.16-MariaDB
ERROR - 2017-06-23 10:08:27 --> cURL: Error --> 22: The requested URL returned error: 404 Not Found https://api.tastyigniter.com/v1/core/version/2.1.1/5.5.38/5.5.5-10.1.16-MariaDB
ERROR - 2017-06-23 10:08:34 --> cURL: Error --> 22: The requested URL returned error: 404 Not Found https://api.tastyigniter.com/v1/core/version/2.1.1/5.5.38/5.5.5-10.1.16-MariaDB
ERROR - 2017-06-23 10:12:43 --> Severity: Warning --> mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() C:\xampp\htdocs\wer2eat\system\libraries\Email.php 1837
ERROR - 2017-06-23 10:19:49 --> Severity: Warning --> mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() C:\xampp\htdocs\wer2eat\system\libraries\Email.php 1837
ERROR - 2017-06-23 10:20:24 --> Severity: Warning --> mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() C:\xampp\htdocs\wer2eat\system\libraries\Email.php 1837
