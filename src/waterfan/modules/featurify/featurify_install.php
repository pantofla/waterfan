<?php
	$module_info['name'] = 'Featurify';
	$module_info['desc'] = 'A &quot; Featured Content Gallery &quot; mod that allows you to create an automated rotating image gallery of your stories.';
	$module_info['version'] = 1.0;
	$module_info['homepage_url'] = 'http://www.netwaver.com/?page_id=105';

	$module_info['db_add_table'][]=array(
	'name' => table_prefix . "featurify",
	'sql' => "CREATE TABLE `".table_prefix . "featurify` (
	  `featurify_id` int(11) NOT NULL auto_increment,
	  `featurify_link_id` int(11) NOT NULL,	  
	  `featurify_link_title` varchar(255) default NULL,
	  `featurify_enabled` enum('Yes','No') NOT NULL,
	  `featurify_image` longblob NOT NULL,
	  PRIMARY KEY  (`featurify_id`)
	) ENGINE=MyISAM ");
?>