<h1>{#PLIGG_Visual_EditStory_Header#}:</h1>
<h4>{$submit_url_title}</h4>
{literal}
<script type="text/javascript">
  function SetState(obj_checkbox, obj_textarea)
  {  if(obj_checkbox.checked)
     { obj_textarea.disabled = false;
     }
     else
     { obj_textarea.disabled = true;
     }
  }
	function textCounter(field, countfield, maxlimit) {
		if (field.value.length > maxlimit) // if too long...trim it!
			field.value = field.value.substring(0, maxlimit);
			// otherwise, update 'characters left' counter
		else
			countfield.value = maxlimit - field.value.length;
	}
</script>
{/literal}
<br />
{checkActionsTpl location="tpl_pligg_submit_step2_start"}
<form action="" method="post" id="thisform" enctype="multipart/form-data" >
	<input type="hidden" name="id" value="{$submit_id}" />

	<fieldset><legend>{#PLIGG_Visual_Submit2_Source#}</legend>
		<label>{#PLIGG_Visual_Submit2_NewsURL#}: </label>
		<a href="{$submit_url}">{$submit_url}</a><br/>
		{if $isAdmin eq 1}<input type="text" name="url" size=60 value ="{$submit_url}"><br />{/if}<br />
		<label for="url_title" accesskey="2">{#PLIGG_Visual_Submit2_URLTitle#}: </label>{$submit_url_title}
	</fieldset>		
    <br />
	<fieldset><legend>{#PLIGG_Visual_Submit2_Details#}</legend>
		<p><label>{#PLIGG_Visual_Submit2_Title#} <span>({#PLIGG_Visual_Submit2_TitleInstruct#})</span>: </label><br />

		<input type="text" id="title" name="title" value="{$submit_title}" size="60" maxlength="120" />

		</p><br/>
		
		{if $enable_tags eq 'true'}
        <p>
		 <label>{#PLIGG_Visual_Submit2_Tags#}: </label>
		 <span><strong>{#PLIGG_Visual_Submit2_Tags_Inst1#}</strong><br />{#PLIGG_Visual_Submit2_Tags_Example#} <em>{#PLIGG_Visual_Submit2_Tags_Inst2#}</em></span><br/>
		 <input type="text" id="tags" name="tags" value="{$tags_words}" size="60" maxlength="120" />
        </p>
        <br/>
		{/if}
        <p>
		<label>{#PLIGG_Visual_Submit2_Description#}<span> ({#PLIGG_Visual_Submit2_DescInstruct#})</span></label>
			{if $Story_Content_Tags_To_Allow eq ""}
				<br /><b>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#}</b> {#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
			{else}
				<br />{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
			{/if}
		<br/><textarea name="bodytext" rows="10" cols="60" id="bodytext" WRAP=SOFT {if $SubmitSummary_Allow_Edit eq 1}onkeyup="if(!this.form.summarycheckbox || !this.form.summarytext) return; if(this.form.summarycheckbox.checked == false) {ldelim}this.form.summarytext.value = this.form.bodytext.value.substring(0, {$StorySummary_ContentTruncate});{rdelim}textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});"{/if}>{$submit_content}</textarea><br />
		{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="log2" onClick="openSpellChecker('bodytext');"/>{/if}

		</p>
        <br/>
		
		{if $SubmitSummary_Allow_Edit eq 1}
        <p>
        <label>{#PLIGG_Visual_Submit2_Summary#} <span>{#PLIGG_Visual_Submit2_SummaryInstruct#}{#PLIGG_Visual_Submit2_SummaryLimit#}{$StorySummary_ContentTruncate}{#PLIGG_Visual_Submit2_SummaryLimitCharacters#}</span>: </label><br/>
		<input type="checkbox" name="summarycheckbox" id="summarycheckbox" onclick="SetState(this, this.form.summarytext)" checked> {#PLIGG_Visual_Submit2_SummaryCheckBox#}
			{if $Story_Content_Tags_To_Allow eq ""}
				<br /><b>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#}</b> {#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
			{else}
				<br />{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
			{/if}
		<br/><textarea name="summarytext"  rows="5" cols="60" id="summarytext" WRAP=SOFT onKeyDown="textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{$submit_summary}</textarea><br />
		<input readonly type=text name=remLen size=3 maxlength=3 value="{$StorySummary_ContentTruncate}">{#PLIGG_Visual_Submit2_SummaryCharactersLeft#}
		{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('summarytext');"/>{/if}

		</p>
        <br />
		{/if}

		<p>
		<label>{#PLIGG_Visual_Submit2_Category#} <span>({#PLIGG_Visual_Submit2_CatInstruct#})</span>: </label><br />
		<select name="category">
			{section name=thecat loop=$cat_array}
				<option value = "{$cat_array[thecat].auto_id}"{if $cat_array[thecat].auto_id eq $submit_category} selected="selected"{/if}>
				{if $cat_array[thecat].spacercount lt $lastspacer}{$cat_array[thecat].spacerdiff|repeat_count:''}{/if}
				{if $cat_array[thecat].spacercount gt $lastspacer}{/if}
				{$cat_array[thecat].spacercount|repeat_count:'&nbsp;&nbsp;&nbsp;'}
				{$cat_array[thecat].name}
				&nbsp;&nbsp;&nbsp;
				{assign var=lastspacer value=$cat_array[thecat].spacercount}
				</option>
			{/section}
		</select>

		</p>
        <br/>

		{if $canIhaveAccess eq 1}
        <p>
			<label>{#PLIGG_Visual_EditStory_Notify#}: </label><br />
			<input type="checkbox" class="checkbox" name="notify" value="yes"> {#PLIGG_Visual_EditStory_NotifyText#}:<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="reason" value="typo" onclick="notify.checked = 'true';">{#PLIGG_Visual_EditStory_Reason_typo#}<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="reason" value="category" onclick="notify.checked = 'true';">{#PLIGG_Visual_EditStory_Reason_category#}<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="reason" value="tags" onclick="notify.checked = 'true';">{#PLIGG_Visual_EditStory_Reason_tags#}<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="reason" value="foul" onclick="notify.checked = 'true';">{#PLIGG_Visual_EditStory_Reason_foul#}<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="reason" value="other" onclick="notify.checked = 'true';">{#PLIGG_Visual_EditStory_Reason_other#} <input type="text" name="otherreason" size="50">
        </p>
        <br/>
		{/if}
		
		{checkActionsTpl location="submit_step_2_pre_extrafields"}

		{include file=$tpl_extra_fields.".tpl"}
		
		<br />
		
		<input type="submit" value="{#PLIGG_Visual_Submit2_Continue#}" />
		
	</fieldset>
</form>
