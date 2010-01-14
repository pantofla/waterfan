<?php
include('../../config.php');

$id=$_REQUEST['id'];
$sql="SELECT featurify_image FROM " . table_prefix . "featurify WHERE featurify_id=".$id."";
$news = $db->get_results($sql);
$news = object_2_array($news);
ob_end_clean();
ob_start();
header ("Content-type: image/jpeg");
echo $news[0]['featurify_image'];
ob_end_flush();
exit;
?>