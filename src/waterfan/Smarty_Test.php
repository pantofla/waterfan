<?php
error_reporting(E_ALL);

require('Smarty.class.php');

// include test extension
require('Smarty_Test.class.php');

// do this instead of $smarty = new Smarty();
// if you have your own extension, then have it
// extend Smarty_Test() instead of Smarty()
$smarty = new Smarty_Test();

$smarty->compile_dir = "cache/templates_c";
$smarty->template_dir = "templates";
$smarty->cache_dir = "cache";

// setup your smarty directories, then execute:
$smarty->test();
exit(); 
?>