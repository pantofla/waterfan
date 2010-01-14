{literal}
<script type="text/javascript">
function SetState(obj_checkbox, obj_textarea) {
	if(obj_checkbox.checked)
		{ obj_textarea.disabled = false;
	}
	else {
		obj_textarea.disabled = true;
	}
}
function textCounter(field, countfield, maxlimit) {
	if (field.value.length > maxlimit) // if too long...trim it!
			field.value = field.value.substring(0, maxlimit);
			// otherwise, update 'characters left' counter
	else
			countfield.value = maxlimit - field.value.length;
}
function counter(text) {
	text.form.text_num.value = text.value.length;
}
</script>
{/literal}

<h1 class="title">{#PLIGG_Visual_Submit2_Header#}</h1>
{checkActionsTpl location="tpl_pligg_submit_step2_start"}

{if $Submit_Show_URL_Input eq 1}
 <h4>{#PLIGG_Visual_Submit2_Source#}</h4>
 <fieldset>
 <label>{#PLIGG_Visual_Submit2_NewsURL#}: </label>
 <a href="{$submit_url}" class="simple">{$submit_url}</a><br /><br/>
 {if $submit_url_title neq "1"}<label>{#PLIGG_Visual_Submit2_URLTitle#}: </label>{$submit_url_title}{/if}
 </fieldset>
{/if}

<h4>{#PLIGG_Visual_Submit2_Details#}</h4>
	<form action="{$URL_submit}" method="post" name="thisform" id="thisform" enctype="multipart/form-data" onSubmit="return checkForm()">
      <fieldset>
		<label>{#PLIGG_Visual_Submit2_Title#}: </label>{#PLIGG_Visual_Submit2_TitleInstruct#}<br/>
		<input type="text" id="title" class="text" name="title" value="{if $submit_title}{$submit_title}{else}{$submit_url_title}{/if}" size="60" maxlength="{$maxTitleLength}" />

		<br /><br/>

		<label>{#PLIGG_Visual_Submit2_Category#}: </label>{#PLIGG_Visual_Submit2_CatInstruct#}<br/>
		<select name="category">
			<option value = "">{#PLIGG_Visual_Submit2_CatInstructSelect#}
			{section name=thecat loop=$submit_cat_array}
			   <option value = "{$submit_cat_array[thecat].auto_id}" {if $submit_cat_array[thecat].auto_id == $submit_category}selected{/if}>
					  {if $submit_cat_array[thecat].spacercount lt $submit_lastspacer}{$submit_cat_array[thecat].spacerdiff|repeat_count:''}{/if}
					  {if $submit_cat_array[thecat].spacercount gt $submit_lastspacer}{/if}
					  {$submit_cat_array[thecat].spacercount|repeat_count:'&nbsp;&nbsp;&nbsp;'}
					  {$submit_cat_array[thecat].name}
					  &nbsp;&nbsp;&nbsp;
					  {assign var=submit_lastspacer value=$submit_cat_array[thecat].spacercount}
			  </option>
			{/section}
		</select>

		<br/><br/>

		{if $enable_group && $output neq ''}
			<label>{#PLIGG_Visual_Group_Submit_story#}: </label><br/>
			{$output}
			<br/><br/>
		{/if}
		
		{checkActionsTpl location="tpl_header_admin_main_comment_subscription"}
		
		{*{checkActionsTpl location="tpl_timestamp_stories"}*}
		
		{if $enable_tags}
			<label>{#PLIGG_Visual_Submit2_Tags#}: </label>
			<strong>{#PLIGG_Visual_Submit2_Tags_Inst1#}</strong> {#PLIGG_Visual_Submit2_Tags_Example#} <em>{#PLIGG_Visual_Submit2_Tags_Inst2#}</em><br/>
			<input type="text" id="tags" class="wickEnabled" name="tags" value="{$tags_words}" size="60" maxlength="{$maxTagsLength}" /><br /><br />
			<script type="text/javascript" language="JavaScript" src="{$my_pligg_base}/templates/{$the_template}/js/tag_data.js"></script> 
			<script type="text/javascript" language="JavaScript" src="{$my_pligg_base}/templates/{$the_template}/js/wick.js"></script> 
			<br />
		{/if}

		{checkActionsTpl location="tpl_pligg_submit_step2_middle"}

		<label>{#PLIGG_Visual_Submit2_Description#}: </label>{#PLIGG_Visual_Submit2_DescInstruct#}
		{if $Story_Content_Tags_To_Allow eq ""}
			<br/><strong>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#} </strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
		{else}
			<br/>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
		{/if}
		<br/><textarea name="bodytext" class="bodytext" rows="14" cols="80" id="bodytext" maxlength="{$maxStoryLength}" wrap="soft" onKeyPress="counter(this)" onKeyDown="counter(this)" onkeyup="counter(this); if(!this.form.summarycheckbox || !this.form.summarytext) return; if(this.form.summarycheckbox.checked == false) {ldelim}this.form.summarytext.value = this.form.bodytext.value.substring(0, {$StorySummary_ContentTruncate});{rdelim}textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{if $submit_url_description}{$submit_url_description}{/if}{$submit_content}</textarea><br />
		<input size=2 value='{$storylen}' name=text_num disabled> {#PLIGG_Visual_Total_Chars#}<br>
		{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('bodytext');"/>{/if}

		<br />
		<br />

		<div id="sumtrack">
		{if $SubmitSummary_Allow_Edit eq 1}
		<label>{#PLIGG_Visual_Submit2_Summary#}: </label>{#PLIGG_Visual_Submit2_SummaryInstruct#}{#PLIGG_Visual_Submit2_SummaryLimit#}{$StorySummary_ContentTruncate}{#PLIGG_Visual_Submit2_SummaryLimitCharacters#}<br />
			<input type="checkbox" name="summarycheckbox" id="summarycheckbox" onclick="SetState(this, this.form.summarytext)"> {#PLIGG_Visual_Submit2_SummaryCheckBox#}
			{if $Story_Content_Tags_To_Allow eq ""}
				<br /><strong>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#} </strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
			{else}
				<br />{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
			{/if}
			<br/><textarea disabled="true" name="summarytext" class="summarytext" rows="8" cols="40" id="summarytext" maxlength="{$maxSummaryLength}" wrap="SOFT" onKeyDown="textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{$submit_summary}</textarea><br />
			<input readonly type="text" name="remLen" size="3" maxlength="3" value="400">{#PLIGG_Visual_Submit2_SummaryCharactersLeft#}
			{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('summarytext');"/>{/if}
			<br /><br />
		{/if}


		{if $Submit_Show_URL_Input eq 1}
			<label>{#PLIGG_Visual_Submit2_Trackback#}: </label>{#PLIGG_Visual_Submit2_TrackbackInstruct#}<br />
			<input type="text" name="trackback" id="trackback" class="text" value="{$submit_trackback}" size="60" class="form-full" />
			<br /><br/>
		{/if}
		</div>
		
		{if isset($register_step_1_extra)}
			<br />
			{$register_step_1_extra}
		{/if}
		
		{checkActionsTpl location="submit_step_2_pre_extrafields"}

		{include file=$tpl_extra_fields.".tpl"}<br />

		<input class="button_max" type="submit" value="{#PLIGG_Visual_Submit2_Continue#}" />
		
		{checkActionsTpl location="tpl_pligg_submit_step2_end"}
		
		<input type="hidden" name="url" id="url" value="{$submit_url}" />
		<input type="hidden" name="phase" value="2" />
		<input type="hidden" name="randkey" value="{$randkey}" />
		<input type="hidden" name="id" value="{$submit_id}" />
      </fieldset>
	</form>


