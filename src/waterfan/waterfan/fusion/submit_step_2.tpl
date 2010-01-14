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

<h1>{#PLIGG_Visual_Submit2_Header#}</h1>

{checkActionsTpl location="tpl_pligg_submit_step2_start"}
{if $Submit_Show_URL_Input eq 1}
<fieldset>
 <h4>{#PLIGG_Visual_Submit2_Source#}</h4>
 <p>{#PLIGG_Visual_Submit2_NewsURL#}: <a href="{$submit_url}" class="simple">{$submit_url}</a>
 {if $submit_url_title neq "1"}
 <br />{#PLIGG_Visual_Submit2_URLTitle#}: <strong>{$submit_url_title}</strong></p>
 {/if}
</fieldset>
{/if}
<br />


 <form action="{$URL_submit}" method="post" name="thisform" id="thisform" enctype="multipart/form-data" onSubmit="return checkForm()">
 <fieldset>
  <h4>{#PLIGG_Visual_Submit2_Details#}</h4>
  <p><label>{#PLIGG_Visual_Submit2_Title#} <span>({#PLIGG_Visual_Submit2_TitleInstruct#})</span>: </label><br />
  <input type="text" id="title" class="text" name="title" value="{if $submit_title}{$submit_title}{else}{$submit_url_title}{/if}" size="60" maxlength="120" />
  </p>
  <br />
  <p><label>{#PLIGG_Visual_Submit2_Category#} <span>({#PLIGG_Visual_Submit2_CatInstruct#})</span>: </label><br />
    <select name="category">
    <option value = "">{#PLIGG_Visual_Submit2_CatInstructSelect#}</option>
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
  </p>

  {if $enable_group && $output neq ''}
  <br />
  <p>
  <label>{#PLIGG_Visual_Group_Submit_story#}: </label><br/>
  {$output}
  </p>
  {/if}

  {checkActionsTpl location="tpl_header_admin_main_comment_subscription"}

  {*{checkActionsTpl location="tpl_timestamp_stories"}*}

  {if $enable_tags}
  <br />
  <p>
  <label>{#PLIGG_Visual_Submit2_Tags#}, {#PLIGG_Visual_Submit2_Tags_Inst1#}<br /><span>{#PLIGG_Visual_Submit2_Tags_Example#} {#PLIGG_Visual_Submit2_Tags_Inst2#}</span></label><br />
  <input type="text" id="tags" class="wickEnabled" name="tags" value="{$tags_words}" size="60" maxlength="40" /><br /><br />
  <script type="text/javascript" language="JavaScript" src="{$my_pligg_base}/templates/{$the_template}/js/tag_data.js"></script>
  <script type="text/javascript" language="JavaScript" src="{$my_pligg_base}/templates/{$the_template}/js/wick.js"></script>
  </p>
  {/if}

  {checkActionsTpl location="tpl_pligg_submit_step2_middle"}

  <br />
  <p>
  <label>{#PLIGG_Visual_Submit2_Description#} <span>({#PLIGG_Visual_Submit2_DescInstruct#})</span>: </label>
  	{if $Story_Content_Tags_To_Allow eq ""}
			<br/><strong>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#} </strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
		{else}
			<br/>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
		{/if}
		<br /><textarea name="bodytext" class="bodytext" rows="40" cols="80" id="bodytext" WRAP=SOFT onkeyup="if(!this.form.summarycheckbox || !this.form.summarytext) return; if(this.form.summarycheckbox.checked == false) {ldelim}this.form.summarytext.value = this.form.bodytext.value.substring(0, {$StorySummary_ContentTruncate});{rdelim}textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{$submit_content}</textarea><br />
		{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('bodytext');"/>{/if}
   </p>

   {if $SubmitSummary_Allow_Edit eq 1}
   <br />
   <p>
	 <label>{#PLIGG_Visual_Submit2_Summary#} <span>({#PLIGG_Visual_Submit2_SummaryInstruct#}{#PLIGG_Visual_Submit2_SummaryLimit#}{$StorySummary_ContentTruncate}{#PLIGG_Visual_Submit2_SummaryLimitCharacters#})</span>: </label><br />
	 <input class="checkbox" type="checkbox" name="summarycheckbox" id="summarycheckbox" onclick="SetState(this, this.form.summarytext)"> {#PLIGG_Visual_Submit2_SummaryCheckBox#}
	 {if $Story_Content_Tags_To_Allow eq ""}
	 	<br /><strong>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#} </strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}
	 {else}
	 	<br />{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}: {$Story_Content_Tags_To_Allow}
	 {/if}
	 <br/><textarea disabled="true" name="summarytext" class="summarytext" rows="5" cols="60" id="summarytext" WRAP=SOFT onKeyDown="textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{$submit_summary}</textarea><br />
	 <input readonly type=text name=remLen size=3 maxlength=3 value="400">{#PLIGG_Visual_Submit2_SummaryCharactersLeft#}
	 {if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('summarytext');"/>{/if}
   </p>
   {/if}

   {if $Submit_Show_URL_Input eq 1}
   <br />
   <p>
     <label>{#PLIGG_Visual_Submit2_Trackback#} <span>({#PLIGG_Visual_Submit2_TrackbackInstruct#})</span>: </label><br />
	 <input type="text" name="trackback" id="trackback" class="text" value="{$submit_trackback}" size="60" class="form-full" />
   </p>
   {/if}

   {if isset($register_step_1_extra)}
   	<br />
    <p>
	 {$register_step_1_extra}
    </p>
   {/if}

   {checkActionsTpl location="submit_step_2_pre_extrafields"}

   {include file=$tpl_extra_fields.".tpl"}

   <br />
   <p>
   <input type="submit" value="{#PLIGG_Visual_Submit2_Continue#}" />
   </p>

   {checkActionsTpl location="tpl_pligg_submit_step2_end"}

   <input type="hidden" name="url" id="url" value="{$submit_url}" />
   <input type="hidden" name="phase" value="2" />
   <input type="hidden" name="randkey" value="{$randkey}" />
   <input type="hidden" name="id" value="{$submit_id}" />
 </fieldset>
 </form>


