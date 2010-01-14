<?php
// The source code packaged with this file is Free Software, Copyright (C) 2005 by
// Ricardo Galli <gallir at uib dot es>.
// It's licensed under the AFFERO GENERAL PUBLIC LICENSE unless stated otherwise.
// You can get copies of the licenses here:
// 		http://www.affero.org/oagpl.html
// AFFERO GENERAL PUBLIC LICENSE is also included in the file called "COPYING".
// -------------------------------------------------------------------------------------

include_once('Smarty.class.php');
if(!isset($main_smarty)){$main_smarty = new Smarty;}
// If we're calling this page through another page like index.php, $main_smarty will already be set
// If we're calling this page directly, set main_smarty

include_once('config.php');
include_once(mnminclude.'html1.php');
include_once(mnminclude.'link.php');
include_once(mnminclude.'tags.php');
include_once(mnminclude.'search.php');
include_once(mnminclude.'smartyvariables.php');
include_once(mnminclude.'sidebarstories.php');

global $the_template, $main_smarty, $thecat, $db;

	$ss = new SidebarStories();
	$ss->pagesize = 5; // the number of items to show in the box.
	$ss->orderBy = "link_votes DESC"; // newest on top.

	$ss->TitleLengthLimit = 26;

	if(isset($_REQUEST['category'])){
		$thecat = $db->get_var("SELECT category_name FROM " . table_categories . " WHERE `category_safe_name` = '".urlencode(sanitize($_REQUEST['category'], 1))."';");
		$ss->header = $main_smarty->get_config_vars("PLIGG_Visual_Top_Stories_In") . $thecat;
		$ss->category = $thecat;
	}
	else {	
		$ss->filterToTimeFrame = 'today'; // filter the past 24 hours	
		$ss->header = $main_smarty->get_config_vars("PLIGG_Visual_Top_Today");
	}

	$ss->template = $the_template . '/sidebar_stories.tpl';
	$main_smarty->assign('ss_toggle_id', 'sstop');
	$main_smarty->assign('ss_body', $ss->show(true));
	$main_smarty->assign('ss_header', $ss->header);
	$main_smarty->display($the_template . '/sidebar_stories_wrapper_top_today.tpl');
?>
