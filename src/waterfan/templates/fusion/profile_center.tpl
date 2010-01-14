
<h1>{#PLIGG_Visual_Profile_ModifyProfile#}</h1>



{if $savemsg neq ""}<p align=center><span class="success">{$savemsg}</span></p>{/if}
{checkActionsTpl location="tpl_pligg_profile_info_start"}
	{if $UseAvatars neq false}

			{if $user_avatar_source eq "useruploaded"}
				{* this form can't be inside of another form! *}
				<form method="POST" enctype="multipart/form-data" name="image_upload_form" action="{$form_action}">
                <fieldset>
                  <legend>{#PLIGG_Visual_Profile_UploadAvatar2#}:</legend>
					<input type="file" name="image_file" size="20">
					<input type="hidden" name="avatar" value="uploaded"/>
					{$hidden_token_profile_change}
					<input type="submit" value="{#PLIGG_Visual_Profile_AvatarUpload#}" name="action"><br>
                  </fieldset>
				</form> 
			{/if}	
	{/if}

	<form action="" method="post" id="thisform">
     <fieldset><legend>{#PLIGG_Visual_Profile_CurrentAvatar#}</legend>
		{$hidden_token_profile_change}
     	{if $UseAvatars neq false}
          <div class="left">
			<p><input class="radio" type="radio" name="avatarsource" value="" {if $user_avatar_source eq ""}CHECKED{/if}> {#PLIGG_Visual_Profile_UseDefaultAvatar#}</p>
			<p><input class="radio" type="radio" name="avatarsource" value="useruploaded" {if $user_avatar_source eq "useruploaded"}CHECKED{/if}> {#PLIGG_Visual_Profile_UploadAvatar#}</p><br />
			<p><input type=submit name="save_profile" value="{#PLIGG_Visual_Profile_Save#}"></p>
          </div>
          <div class="content-right">
			<span id="ls_avatar-large"><img src="{$Avatar_ImgLarge}" alt="Avatar"/></span>
			<span id="ls_avatar-small"><img src="{$Avatar_ImgSmall}" alt="Avatar"/></span>
		  </div>
          <div class="clear"></div>

	    {/if}
     </fieldset>

	{checkActionsTpl location="tpl_profile_center_fields"}
    {checkActionsTpl location="tpl_pligg_profile_info_middle"}

    <br />
    <div class="content-left">
     <fieldset>
       <legend>Personal Information</legend>
       <p><label for="name" accesskey="1">{#PLIGG_Visual_Profile_RealName#}:</label><br />
       <input size="30" type="text" name="names" id="names" tabindex="1" value="{$user_names}">
       </p>
       <br />
	   <p><label for="name" accesskey="1">{#PLIGG_Visual_Profile_Email#}:</label><br />
	   <input size="30" type="text" name="email" id="email" tabindex="3" value="{$user_email}"> <br /><em>{#PLIGG_Visual_Profile_OnlyAdmins#}</em></p>
       <br />
       <p>
	   <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_PublicEmail#}:</label><br />
	   <input size="30" type="text" name="public_email" id="public_email" tabindex="5" value="{$user_publicemail}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_Homepage#}:</label><br />
	   <input size="30" type="text" name="url" id="url" tabindex="7" value="{$user_url}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_Profile_Location#}:</label><br />
	   <input size="30" type="text" name="location" id="location" tabindex="9" value="{$user_location}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_Profile_Occupation#}:</label><br />
	   <input size="30" type="text" name="occupation" id="occupation" tabindex="11" value="{$user_occupation}">
       </p>
     </fieldset>
    </div>

    <div class="content-right">
     <fieldset>
       <legend>Communication</legend>
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_AIM#}:</label><br />
	   <input size="30" type="text" name="aim" id="aim" tabindex="2" value="{$user_aim}">
       </p>
       <br />
       <p>
	   <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_MSN#}:</label><br />
	   <input size="30" type="text" name="msn" id="msn" tabindex="4" value="{$user_msn}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_Yahoo#}:</label><br />
	   <input size="30" type="text" name="yahoo" id="yahoo" tabindex="6" value="{$user_yahoo}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_GTalk#}:</label><br />
	   <input size="30" type="text" name="gtalk" id="gtalk" tabindex="8" value="{$user_gtalk}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_Skype#}:</label><br />
	   <input size="30" type="text" name="skype" id="skype" tabindex="10" value="{$user_skype}">
       </p>
       <br />
       <p>
       <label for="name" accesskey="1">{#PLIGG_Visual_User_Profile_IRC#}: {#PLIGG_Visual_Profile_IRC_Instruct#}</label><br />
	   <input size="30" type="text" name="irc" id="irc" tabindex="12" value="{$user_irc}">
       </p>

     </fieldset>
    </div>

    <div class="clear"></div>

{checkActionsTpl location="tpl_pligg_profile_end"}
<br />
<p>{#PLIGG_Visual_Profile_ChangePass#}</p>
<br />
<p>
<label>{#PLIGG_Visual_Profile_OldPass#}:</label><br />
<input type="password" id="oldpassword" name="oldpassword" size="25" tabindex="13"/>
</p>

<p>
<label>{#PLIGG_Visual_Profile_NewPass#}:</label><br />
<input type="password" id="newpassword" name="newpassword" size="25" tabindex="14"/>
</p>

<p>
<label>{#PLIGG_Visual_Profile_VerifyNewPass#}:</label><br />
<input type="password" id="verify" name="newpassword2" size="25" tabindex="15"/>
</p>
<input type="hidden" name="process" value="1">
<input type="hidden" name="user_id" value="{$user_id}">

<br />

{checkActionsTpl location="tpl_pligg_profile_end"}
<input type="submit" name="save_profile" value="{#PLIGG_Visual_Profile_Save#}" tabindex="16"></p>

</form>

