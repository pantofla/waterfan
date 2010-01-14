<?php
function multibox_admin_showpage(){
	global $main_smarty, $the_template, $db;

	force_authentication();
	$canIhaveAccess = 0;
	$canIhaveAccess = $canIhaveAccess + checklevel('god');
	
	if($canIhaveAccess == 1)
	{
		define('pagename', 'multibox_admin'); 
		$main_smarty->assign('pagename', pagename);
		
		define('modulename', 'multibox_admin'); 
		$main_smarty->assign('modulename', modulename);

		$navwhere['text1'] = $main_smarty->get_config_vars('PLIGG_Visual_Header_AdminPanel');
		$navwhere['link1'] = getmyurl('admin', '');

		$main_smarty->display(multibox_admin_tpl_path . '/blank.tpl');
		
		$main_smarty = do_sidebar($main_smarty);

		$sql = "SELECT * FROM " . table_totals;
		$results = $db->get_results($sql);
		$main_smarty->assign('results', object_2_array($results));

		if(isset($_REQUEST['action'])){
			$main_smarty->assign('action', $_REQUEST['action']);
			totals_regenerate();
			$sql = "SELECT * FROM " . table_totals;
			$results = $db->get_results($sql);
			$main_smarty->assign('new_results', object_2_array($results));
			
		}

		$main_smarty->assign('navbar_where', $navwhere);
		$main_smarty->assign('posttitle', " / " . $main_smarty->get_config_vars('PLIGG_Visual_Header_AdminPanel'));
		
		$main_smarty->assign('tpl_center', multibox_admin_tpl_path . 'multibox_main');
		$main_smarty->display($template_dir . '/admin/admin.tpl');
	} else {
		echo "Page Forbidden";
	}
}
?>