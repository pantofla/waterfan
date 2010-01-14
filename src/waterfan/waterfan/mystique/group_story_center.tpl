
<h1 class="title">{$group_name}</h1>

<div class="clearfix">

<div class="alignleft">
 <img src="{$imgsrc}" alt="group_avatar" />
</div>

<div class="alignleft">
  {checkActionsTpl location="tpl_pligg_group_start"}
  {checkActionsTpl location="tpl_pligg_group_list_start"}
  <h4>{#PLIGG_Visual_Group_Created_By#} <a href="{$submitter_profile_url}">{$group_submitter}</a> {#PLIGG_Visual_Group_Created_On#} {$group_date} 	({$get_group_members} {#PLIGG_Visual_Group_Member#})</h4>
  <p>{$group_description}</p>
  {checkActionsTpl location="tpl_pligg_group_list_end"}

  <p class="group-links">

  {if $user_logged_in neq $group_submitter}
    {if $user_logged_in neq ""}

      {if $is_group_member eq 0}
        {if $group_privacy eq 'public'}
         <a href="{$join_group_url}" class="group-link">{#PLIGG_Visual_Group_Join#}</a>
        {else}
         <a href="{$join_group_privacy_url}" class="group-link">{#PLIGG_Visual_Group_Join#}</a>
        {/if}
        {else}
        {if $is_member_active eq 'active'}
         <a href="{$unjoin_group_url}" class="group-link">{#PLIGG_Visual_Group_Unjoin#}</a>
        {/if}
        {if $is_member_active eq 'inactive'}
         <a href="{$join_group_withdraw}" class="group-link">{#PLIGG_Visual_Group_Withdraw_Request#}</a>
        {/if}
      {/if}

    {/if}
  {/if}

  {if $is_group_admin eq '1'}
    <a class="group-link" href={$group_edit_url}> {#PLIGG_Visual_Group_Text_edit#}</a>
    <a class="group-link" onclick="return confirm('{#PLIGG_Visual_Group_Delete_Confirm#}')" href={$group_delete_url}> {#PLIGG_Visual_Group_Text_Delete#}</a>
    <a class="group-link js-link" onclick="var replydisplay=document.getElementById('image_upload-1').style.display ? '' : 'none';document.getElementById('image_upload-1').style.display = replydisplay;">{#PLIGG_Visual_Group_Avatar_Upload#}</a>
  {/if}
  </p>

  {if $is_group_admin eq '1'}
    {if $Avatar_uploaded neq ''}<span class="altText">{$Avatar_uploaded}</span>{/if}
    <div id="image_upload-1" style="display:none;">
    <form method="POST" enctype="multipart/form-data" name="image_upload_form" action="{$form_action}">
      <fieldset>
        <legend>{#PLIGG_Visual_Profile_UploadAvatar2#}:</legend>
		{$hidden_token_edit_group}
        <input type="file" name="image_file" size="20">
        <input type="hidden" name="idname" value="{$group_id}"/>
        <input type="hidden" name="avatar" value="uploaded"/>
        <input type="hidden" name="avatarsource" value="useruploaded">
        <input type="submit" value="{#PLIGG_Visual_Profile_AvatarUpload#}" name="action" class="submit" />
      </fieldset>
    </form>
    </div>
  {/if}

  {checkActionsTpl location="tpl_pligg_group_end"}
</div>

</div>
<div class="divider"></div>

{include file=$the_template."/sort.tpl"}

{if $groupview eq "published"}
<div id="group_published">
  {$group_display}
  {$group_story_pagination}
</div>

{elseif $groupview eq "upcoming"}
<div id="group_upcoming">
  {$group_display}
  {$group_story_pagination}
</div>

{elseif $groupview eq "shared"}
<div id="group_shared">
  {$group_shared_display}
  {$group_story_pagination}
</div>

{elseif $groupview eq "members"}
<div id="who_are_members">
  {$member_display}
</div>
{/if}
