{checkActionsTpl location="tpl_pligg_group_start"}



    <h1>{#PLIGG_Visual_Groups#}</h1>


    <ul class="menu">
	   <li {if $groupview eq "published"}class="active"{/if}><a href="{$groupview_published}"><span><span>{#PLIGG_Visual_Group_Published#}</span></span></a></li>
	   <li {if $groupview eq "upcoming"}class="active"{/if}><a href="{$groupview_upcoming}"><span><span>{#PLIGG_Visual_Group_Upcoming#}</span></span></a></li>
	   <li {if $groupview eq "shared"}class="active"{/if}><a href="{$groupview_sharing}"><span><span>{#PLIGG_Visual_Group_Shared#}</span></span></a></li>
	   <li {if $groupview eq "members"}class="active"{/if}><a href="{$groupview_members}"><span><span>{#PLIGG_Visual_Group_Member#}</span></span></a></li>

    </ul>



   <div class="groupavatar left">
 		<img src="{$imgsrc}" alt="group_avatar" />
   </div>

   <div class="left">
    <h4>{$group_name}</h4>

	{checkActionsTpl location="tpl_pligg_group_list_start"}
	<span id="ls_created_by">{#PLIGG_Visual_Group_Created_By#} </span>
		<a href="{$submitter_profile_url}">{$group_submitter}</a> {#PLIGG_Visual_Group_Created_On#} {$group_date}
	<br/>
	{$group_description}
	<br/>
	<span class="group_member">{#PLIGG_Visual_Group_Member#} : </span>{$get_group_members}
	<br/>
	{checkActionsTpl location="tpl_pligg_group_list_end"}

    <div class="controls">

	{if $user_logged_in neq $group_submitter}
		{if $user_logged_in neq ""}


				{if $is_group_member eq 0}
					{if $group_privacy eq 'public'}
						<a href="{$join_group_url}" class="control group-join">{#PLIGG_Visual_Group_Join#}</a>
					{else}
					    <a href="{$join_group_privacy_url}" class="control group-join">{#PLIGG_Visual_Group_Join#}</a>
					{/if}
				{else}
					{if $is_member_active eq 'active'}
						<a href="{$unjoin_group_url}" class="control group-unjoin">{#PLIGG_Visual_Group_Unjoin#}</a>
					{/if}
					{if $is_member_active eq 'inactive'}
						<a href="{$join_group_withdraw}" class="control group-unjoin">{#PLIGG_Visual_Group_Withdraw_Request#}</a>
					{/if}
				{/if}

		{/if}
	{/if}
	{if $is_group_admin eq '1'}
		<a href={$group_edit_url} class="control group-edit"> {#PLIGG_Visual_Group_Text_edit#}</a>
		<a onclick="return confirm('{#PLIGG_Visual_Group_Delete_Confirm#}')" href={$group_delete_url} class="control group-delete"> {#PLIGG_Visual_Group_Text_Delete#}</a>
		<a href="javascript://" onclick="var replydisplay=document.getElementById('image_upload-1').style.display ? '' : 'none';document.getElementById('image_upload-1').style.display = replydisplay;" class="control group-avatar">{#PLIGG_Visual_Group_Avatar_Upload#}</a>
    </div>

		{if $Avatar_uploaded neq ''}<br/><span style="color:#269900;font-weight:bold;"><img src="{$my_base_url}{$my_pligg_base}/templates/{$the_template}/images/green_check.gif"/>{$Avatar_uploaded}</span>{/if}	
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

{checkActionsTpl location="tpl_pligg_group_end"}
{*down tabs begins*}
    </div>
    <div class="clear"></div>

{if $groupview eq "published"}
	<div id="group_published">
		<h3>{#PLIGG_Visual_Group_Published#}</h3>
		{$group_published_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "upcoming"}
	<div id="group_upcoming">
		<h3>{#PLIGG_Visual_Group_Upcoming#}</h3>
		{$group_upcoming_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "shared"}
	<div id="group_shared">
		<h3>{#PLIGG_Visual_Group_Shared#}</h3>
		{$group_shared_display}
		{$group_story_pagination}
	</div>
{elseif $groupview eq "members"}
	<div id="who_are_members">
		<h3>{#PLIGG_Visual_Group_Member#}</h3>
		<div class="whovotedwrapper" id="idwhovotedwrapper">
			{$member_display}
		</div>
	</div>	
{/if}
