<?php
if(defined('mnminclude')) {
	include_once('featurify_settings.php');
	
	$do_not_include_in_pages = array('');
	$include_in_pages = array('all');	
	if( do_we_load_module() ) {		
		module_add_action_tpl('tpl_header_admin_main_links', featurify_tpl_path . 'featurify_admin_main_link.tpl');
		module_add_action('all_pages_top', 'featurify_getdata', '');
		module_add_css(featurify_path . 'css/style.css');
		include_once(mnmmodules . 'featurify/featurify_main.php');	
	}
	
	$include_in_pages = array('module');
	if( do_we_load_module() ) {
		$moduleName = $_REQUEST['module'];		
		if($moduleName == 'featurify') {
			module_add_action('module_page', 'featurify_showpage', '');
			module_add_css(featurify_path . '/css/admin.css');
			include_once(mnmmodules . 'featurify/featurify_main.php');
		}
	}
}
?>