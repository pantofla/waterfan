<?php
// The source code packaged with this file is Free Software, Copyright (C) 2005 by
// Ricardo Galli <gallir at uib dot es>.
// It's licensed under the AFFERO GENERAL PUBLIC LICENSE unless stated otherwise.
// You can get copies of the licenses here:
// 		http://www.affero.org/oagpl.html
// AFFERO GENERAL PUBLIC LICENSE is also included in the file called "COPYING".

include_once('../Smarty.class.php');
$main_smarty = new Smarty;

include('../config.php');
include(mnminclude.'html1.php');
include(mnminclude.'link.php');
include(mnminclude.'tags.php');
include(mnminclude.'smartyvariables.php');
include(mnminclude.'admin_config.php');

// require user to log in
force_authentication();

// restrict access to god only
$canIhaveAccess = 0;
$canIhaveAccess = $canIhaveAccess + checklevel('god');

if($canIhaveAccess == 0){	
	$main_smarty->assign('tpl_center', '/admin/admin_access_denied');
	$main_smarty->display($template_dir . '/admin/admin.tpl');		
	die();
}

// breadcrumbs and page titles
$navwhere['text1'] = $main_smarty->get_config_vars('PLIGG_Visual_Header_AdminPanel');
$navwhere['link1'] = getmyurl('admin', '');
$navwhere['text2'] = $main_smarty->get_config_vars('PLIGG_Visual_Header_AdminPanel_5') . $main_smarty->get_config_vars('PLIGG_Visual_Name');
$navwhere['link2'] = my_pligg_base . "/admin/admin_config.php";
$main_smarty->assign('navbar_where', $navwhere);
$main_smarty->assign('posttitle', " / " . $main_smarty->get_config_vars('PLIGG_Visual_Header_AdminPanel'));

// sidebar	
$main_smarty = do_sidebar($main_smarty);
	
// pagename	
define('pagename', 'admin_config'); 
$main_smarty->assign('pagename', pagename);

// show the template
$main_smarty->assign('tpl_center', '/admin/admin_config_center');
if(isset($_REQUEST['action'])){
	$main_smarty->display($the_template . '/blank.tpl');
} else {
	$main_smarty->display($template_dir . '/admin/admin.tpl');	
}

function dowork(){	
	$canIhaveAccess = 0;
	$canIhaveAccess = $canIhaveAccess + checklevel('god');
	
	if($canIhaveAccess == 1)
	{
		if(is_writable('../settings.php') == 0){
			die("Error: settings.php is not writeable.");
		}
		
		$action = isset($_REQUEST['action']) && sanitize($_REQUEST['action'], 3) != '' ? sanitize($_REQUEST['action'], 3) : "view";
		
		if($action == "view"){
			$config = new pliggconfig;
			if(isset($_REQUEST['page'])){
				$config->var_page = sanitize($_REQUEST['page'], 3);
				$config->showpage();
			}else{
				$config->listpages();
			}
		}
		
		if($action == "save"){
			$config = new pliggconfig;
			$config->var_id = substr(sanitize($_REQUEST['var_id'], 3), 6, 10);
			$config->var_value = sanitize($_REQUEST['var_value'],3);
			$config->store();
		}
	}
}	
?>