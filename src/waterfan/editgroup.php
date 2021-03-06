<?php
// The source code packaged with this file is Free Software, Copyright (C) 2005 by
// Ricardo Galli <gallir at uib dot es>.
// It's licensed under the AFFERO GENERAL PUBLIC LICENSE unless stated otherwise.
// You can get copies of the licenses here:
// 		http://www.affero.org/oagpl.html
// AFFERO GENERAL PUBLIC LICENSE is also included in the file called "COPYING".

include_once('Smarty.class.php');
$main_smarty = new Smarty;

include('config.php');
include(mnminclude.'html1.php');
include(mnminclude.'link.php');
include(mnminclude.'group.php');
include(mnminclude.'smartyvariables.php');

if(isset($_REQUEST['id'])){$requestID = strip_tags($_REQUEST['id']);}
if(!is_numeric($requestID)){$requestID = 0;}
if(isset($_REQUEST['title'])){$requestTitle = $db->escape(strip_tags($_REQUEST['title']));}

//check group admin
$canIhaveAccess = $canIhaveAccess + checklevel('god');
if($current_user->user_id != get_group_creator($requestID) && $canIhaveAccess != 1)
{
	//page redirect
	$redirect = '';
	$redirect = getmyurl("group_story", $requestID);
	header("Location: $redirect");
	die;
}

// pagename
define('pagename', 'editgroup'); 
$main_smarty->assign('pagename', pagename); 

$group_res = group_display($requestID);
if($group_res)
{
	$group_title = $group_res[0];
	$group_description = $group_res[1];
	$group_privacy = $group_res[2];
}
//displaying group as story
if(isset($requestID))
	group_display($requestID);

if(isset($_POST["group_title"]))
	$group_title = $db->escape(sanitize($_POST["group_title"],3));
//else	
//	$group_title = $group_title;
	
if(isset($_POST["group_description"]))
	$group_description = $db->escape(sanitize($_POST["group_description"],3));
//else	
//	$group_description = $group_description;
	
if(isset($_POST["group_privacy"]))
	$group_privacy = $db->escape(sanitize($_POST["group_privacy"],3));
//else	
//	$group_privacy = $group_privacy;	
	
if(isset($_POST["group_title"]) || isset($_POST["group_description"]) || isset($_POST["group_privacy"]))
{
	global $db,$main_smarty;
	$group_update = "update ". table_groups ." set group_name = '".$group_title."', group_description = '".$group_description."', group_privacy = '".$group_privacy."' where group_id = '".$requestID."'";
	$db->query($group_update);
	if($group_update)
	{
		//page redirect
		$redirect = '';
		$redirect = getmyurl("editgroup", $requestID);
		header("Location: $redirect");
		die;
	}
}
	
// uploading avatar
if($_POST["avatar"] == "uploaded")
{
	$user_image_path = "avatars/groups_uploaded" . "/";
	$user_image_apath = "/" . $user_image_path;
	$allowedFileTypes = array("image/jpeg","image/gif","image/png",'image/x-png','image/pjpeg');
	unset($imagename);
	$myfile = $_FILES['image_file']['name'];
	$imagename = basename($myfile);
	$mytmpfile = $_FILES['image_file']['tmp_name'];
	if(!in_array($_FILES['image_file']['type'],$allowedFileTypes))
	{
		$error['Type'] = 'Only these file types are allowed : jpeg, gif, png';
	}
 
	if(empty($error))
	{
		$imagesize = getimagesize($mytmpfile);
		$width = $imagesize[0];
		$height = $imagesize[1];
		$idname = $_POST["idname"];
		if(!is_numeric($idname)){die();}
		$imagename = $idname . "_original.jpg";
		$newimage = $user_image_path . $imagename ;
		$result = @move_uploaded_file($_FILES['image_file']['tmp_name'], $newimage);
		if(empty($result))
			$error["result"] = "There was an error moving the uploaded file.";
		else {
			$avatar_source = cleanit($_POST['avatarsource']);

			$sql = "UPDATE " . table_groups . " set group_avatar='uploaded' WHERE group_id=$idname";
			$db->query($sql);
			$main_smarty->assign('Avatar_uploaded', 'Avatar uploaded successfully!');
			/*if($avatar_source != "" && $avatar_source != "useruploaded"){
				loghack('Updating profile, avatar source is not one of the list options.', 'username: ' . $_POST["username"].'|email: '.$_POST["email"]);
				$avatar_source == "";
			}*/
			//$user->avatar_source=$avatar_source;
			//$user->store();
		}
	}
	// create large avatar
	include mnminclude . "class.pThumb.php";
	$img=new pThumb();
	$img->pSetSize(group_avatar_size_width, group_avatar_size_height);
	$img->pSetQuality(100);
	$img->pCreate($newimage);
	$img->pSave($user_image_path . $idname . "_".group_avatar_size_width.".jpg");
	$img = "";
}
function cleanit($value)
{
	$value = strip_tags($value);
	$value = trim($value);
	return $value;
}
$main_smarty->assign('tpl_center', $the_template . '/edit_group_center');
$main_smarty->display($the_template . '/pligg.tpl');
?>
