<?php
define('featurify_path', my_pligg_base . '/modules/featurify/');
if(!defined('lang_loc')){
	$pos = strrpos($_SERVER["SCRIPT_NAME"], "/");
	$path = substr($_SERVER["SCRIPT_NAME"], 0, $pos);
	if ($path == "/"){$path = "";}
	
	if($path != my_pligg_base){
		define('lang_loc', '..');
	} else {
		define('lang_loc', '.');
	}
}
define('featurify_lang_conf', lang_loc . '/modules/featurify/lang.conf');
define('featurify_pligg_lang_conf', lang_loc . "/languages/lang_" . pligg_language . ".conf");
define('featurify_tpl_path', '../modules/featurify/templates/');
define('featurify_URL', 'module.php?module=featurify');

if(is_object($main_smarty)) {
	$main_smarty->assign('featurify_path', featurify_path);
	$main_smarty->assign('featurify_lang_conf', featurify_lang_conf);
	$main_smarty->assign('featurify_pligg_lang_conf', featurify_pligg_lang_conf);
   	$main_smarty->assign('featurify_tpl_path', featurify_tpl_path);
	$main_smarty->assign('featurify_URL', featurify_URL);
}
?>