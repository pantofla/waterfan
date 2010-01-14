{if $is_group_admin eq '1'}
   <h1 class="title">{#PLIGG_Visual_Group_Edit#}: <span class="altText">{$group_name}</span></h1>
  {if $errors}<p class="error">{$errors}</p>{/if}

   <div class="alignleft" style="width:60%;">
		<form method="POST" enctype="multipart/form-data" name="image_upload_form" action="{$edit_form_action}">
			{$hidden_token_edit_group}
			<label>{#PLIGG_Visual_Submit_Group_Title#}:</label>
			<input type="text" name="group_title" id="group_title" value="{$group_name}" /><br/>
			<br/>
			<label>{#PLIGG_Visual_Submit_Group_Description#}:</label>
			<textarea type="text" name="group_description" rows="6" cols="50" id="group_description">{$group_description}</textarea>

			<label>{#PLIGG_Visual_Submit_Group_Privacy#}:</label>
				<select name="group_privacy" onchange="document.getElementById('group_email').style.display=this.selectedIndex==0 ? 'none' : 'block';">
					<option {if $group_privacy eq 'public'}SELECTED{/if} value = "public">{#PLIGG_Visual_Submit_Group_Public#}</option>
					<option {if $group_privacy eq 'private'}SELECTED{/if} value = "private">{#PLIGG_Visual_Submit_Group_Private#}</option>
					<option {if $group_privacy eq 'restricted'}SELECTED{/if} value = "restricted">{#PLIGG_Visual_Submit_Group_Restricted#}</option>
				</select><br /><br/>
			<div id='group_email' {if $group_privacy eq 'public'}style="display:none;"{/if}>
				<input type="checkbox" id="group_notify_email" size="4" name="group_notify_email" value="1" {if $group_notify_email}checked{/if}>
				{#PLIGG_Visual_Submit_Group_Notify#}
			</div>
            <br />
			<label>{#PLIGG_Visual_Group_Submit_NoOfVoteInstruction#}</label>
			<input type="text" id="group_vote_to_publish" size="4" name="group_vote_to_publish" value="{$group_vote_to_publish}"><br />
            <br />
            <input type="submit" name="action" value="{#PLIGG_Visual_Group_Edit#}" />
		</form>
  </div>
  <div class="clearfix">
  <div class="alignright" style="width:36%;">
 	<img src="{$imgsrc}" alt="group_avatar" />
    <p><a class="group-link js-link" onclick="var replydisplay=document.getElementById('image_upload-1').style.display ? '' : 'none';document.getElementById('image_upload-1').style.display = replydisplay;">{#PLIGG_Visual_Group_Avatar_Upload#}</a></p>
	{if $Avatar_uploaded neq ''}<span class="altText">{$Avatar_uploaded}</span>{/if}
				<div id="image_upload-1" style="display:none;">
					<fieldset><legend>{#PLIGG_Visual_Profile_UploadAvatar2#}:</legend>
						<form method="POST" enctype="multipart/form-data" name="image_upload_form" action="{$edit_form_action}">
							{$hidden_token_edit_group}
							<input type="file" name="image_file" size="20">
							<input type="hidden" name="idname" value="{$group_id}"/>
							<input type="hidden" name="avatar" value="uploaded"/>
							<input type="hidden" name="avatarsource" value="useruploaded">
                            <input type="submit" value="{#PLIGG_Visual_Profile_AvatarUpload#}" name="action" class="submit">
						</form>
					</fieldset>
				</div>

  </div>
 </div>
{else}
	{#PLIGG_Visual_Group_Admin_Error#}
{/if}