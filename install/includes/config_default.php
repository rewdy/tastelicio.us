<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '10',
			'lang' => 'en',
			'version' => '2.3.6',
			'pages_table_nest_children' => 'yes',
			'session_gc_divisor' => '10',
			'cookie_prefix' => 'sym-',
			'association_maximum_rows' => '5',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Tastelicio.us',
			'useragent' => 'Symphony/2.3.6',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
			'disable_regular_rules' => 'no',
			'disable_upscaling' => 'no',
		),
		########


		###### DATABASE ######
		'database' => array(
			'query_caching' => 'default',
			'host' => 'localhost',
			'port' => '3306',
			'user' => null,
			'password' => null,
			'db' => null,
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'yes',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'd F Y',
			'datetime_separator' => ' ',
			'timezone' => 'America/Chicago',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_weblog-entries_sortby' => '4',
			'section_weblog-entries_order' => 'desc',
			'section_images_sortby' => null,
			'section_images_order' => 'asc',
			'section_comments_sortby' => null,
			'section_comments_order' => 'asc',
			'section_recipes_sortby' => null,
			'section_recipes_order' => 'asc',
			'section_pages_sortby' => null,
			'section_pages_order' => 'asc',
		),
		########
	);
