<h1 class="title">{#PLIGG_Visual_Submit1_Header#}</h1>

<h6>{#PLIGG_Visual_Submit1_Instruct#}:</h6>
{checkActionsTpl location="tpl_pligg_submit_step1_start"}
<ul>
	{if #PLIGG_Visual_Submit1_Instruct_1A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_1A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_1B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_2A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_2A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_2B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_3A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_3A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_3B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_4A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_4A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_4B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_5A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_5A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_5B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_6A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_6A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_6B#}</li>{/if}
	{if #PLIGG_Visual_Submit1_Instruct_7A# ne ''}<li><strong>{#PLIGG_Visual_Submit1_Instruct_7A#}:</strong> {#PLIGG_Visual_Submit1_Instruct_7B#}</li>{/if}
</ul>

{checkActionsTpl location="tpl_pligg_submit_step1_middle"}
<br />
<h4>{#PLIGG_Visual_Submit1_NewsSource#}</h4>
<form action="{$URL_submit}" method="post" id="thisform">
 <fieldset>
  <p><label for="url">{#PLIGG_Visual_Submit1_NewsURL#}:</label></p>
  <input type="text" name="url" id="url" value="http://" size="55" />

  {checkActionsTpl location="tpl_pligg_submit_step1_end"}
  <input type="hidden" name="phase" value=1>
  <input type="hidden" name="randkey" value="{$submit_rand}">
  <input type="hidden" name="id" value="c_1">
  <input type="submit" value="{#PLIGG_Visual_Submit1_Continue#}" class="submit-s" />
 </fieldset>
</form>
<br />{if $Submit_Require_A_URL neq 1}{#PLIGG_Visual_Submit_Editorial#}{/if}

