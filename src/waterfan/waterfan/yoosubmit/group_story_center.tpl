{checkActionsTpl location="tpl_pligg_group_start"}
<div class="group_container">
<div class="group_left">
	<span>
		<img src="{$imgsrc}" alt="group_avatar" />
	</span>
</div>
<div class="group_right">
	<div class="toptitle">{$group_name}</div>
	{checkActionsTpl location="tpl_pligg_group_list_start"}
	<span id="ls_created_by">{#PLIGG_Visual_Group_Created_By#} </span>
		<a href="{$submitter_profile_url}">{$group_submitter}</a> {#PLIGG_Visual_Group_Created_On#} {$group_date}
	<br/>
	{$group_description}
	<br/>
	<span class="group_member">{#PLIGG_Visual_Group_Member#} : </span>{$get_group_members}
	<br/>
	{checkActionsTpl location="tpl_pligg_group_list_end"}
	{if $user_logged_in neq $group_submitter}
		{if $user_logged_in neq ""}
			<br clear="all" />
			<div class="tools-img">
				{if $is_group_member eq 0}
					{if $group_privacy eq 'public'}
						<span class="group_join"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/join.gif" /><a href="{$join_group_url}" >{#PLIGG_Visual_Group_Join#}</a></span>
					{else}
						<span class="group_join"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/join.gif" /><a href="{$join_group_privacy_url}" >{#PLIGG_Visual_Group_Join#}</a></span>
					{/if}	
				{else}
					{if $is_member_active eq 'active'}
						<span class="group_unjoin"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/unjoin.gif" /><a href="{$unjoin_group_url}" >{#PLIGG_Visual_Group_Unjoin#}</a></span>
					{/if}
					{if $is_member_active eq 'inactive'}
						<span class="group_withdraw_request"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/unjoin.gif" /><a href="{$join_group_withdraw}" >{#PLIGG_Visual_Group_Withdraw_Request#}</a></span>
					{/if}	
				{/if}
			</div>	
		{/if}
	{/if}
	{if $is_group_admin eq '1'}
	<div class="tools-img">
	<span class="group_edit" style="color:#774525;"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/edit.gif" /><a  href={$group_edit_url}>{#PLIGG_Visual_Group_Text_edit#}</a></span>
		<span class="group_delete" style="color:#774525;"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/delete.gif" /><a onclick="return confirm('{#PLIGG_Visual_Group_Delete_Confirm#}')" href={$group_delete_url}>{#PLIGG_Visual_Group_Text_Delete#}</a></span>

	
		<span class="group_avatar"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/folder_images.gif" />&nbsp;<a href="javascript://" onclick="var replydisplay=document.getElementById('image_upload-1').style.display ? '' : 'none';document.getElementById('image_upload-1').style.display = replydisplay;">{#PLIGG_Visual_Group_Avatar_Upload#}</a>
		{if $Avatar_uploaded neq ''}<span style="color:#269900;font-weight:bold;"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/green_check.gif"/>{$Avatar_uploaded}</span>{/if}	
		</div>
		<span id = "image_upload-1" style="display:none;">
			<fieldset><legend>{#PLIGG_Visual_Profile_UploadAvatar2#}:</legend>
				<form method="POST" enctype="multipart/form-data" name="image_upload_form" action="{$form_action}">
					<input type="file" name="image_file" size="20">
					<input type="hidden" name="idname" value="{$group_id}"/>
					<input type="hidden" name="avatar" value="uploaded"/>
					<input type="hidden" name="avatarsource" value="useruploaded">
					<button type="submit" value="{#PLIGG_Visual_Profile_AvatarUpload#}" name="action" class="submit">{#PLIGG_Visual_Profile_AvatarUpload#}</button><br />
				</form> 
			</fieldset>
		</span>
	{/if}
</div>
</div>
{checkActionsTpl location="tpl_pligg_group_end"}
{*down tabs begins*}
<br clear="all"/>
<br clear="all"/>

{if $groupview eq "published"}
	<div id="group_published">
		<h1>{#PLIGG_Visual_Group_Published#}</h1>
		{$group_published_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "upcoming"}
	<div id="group_upcoming">
		<h1>{#PLIGG_Visual_Group_Upcoming#}</h1>
		{$group_upcoming_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "shared"}
	<div id="group_shared">
		<h1>{#PLIGG_Visual_Group_Shared#}</h1>
		{$group_shared_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "members"}
	<div id="who_are_members">
		<h1>{#PLIGG_Visual_Group_Member#}</h1>
		<div class="whovotedwrapper" id="idwhovotedwrapper">
			{$member_display}
		</div>
	</div>	
{/if}
