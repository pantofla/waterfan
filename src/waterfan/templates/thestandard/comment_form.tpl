{checkActionsTpl location="tpl_pligg_story_comments_submit_start"}
<h3><a name="discuss">{#PLIGG_Visual_Comment_Send#}</a></h3>	
	<label>{#PLIGG_Visual_Comment_NoHTML#}</label><br />
	<textarea name="comment_content" id="comment_content" class="comment-form" rows="8" cols="77"/>{if isset($TheComment)}{$TheComment}{/if}</textarea><br /><br />
	{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="log2" onClick="openSpellChecker('comment_content');"/>{/if}
	{if isset($register_step_1_extra)}
		<br />
		{$register_step_1_extra}
	{/if}
	<input type="submit" name="submit" value="{#PLIGG_Visual_Comment_Submit#}" class="log2" />
	{$register_step_1_extra}
	{if isset($register_step_1_extra)}
		<br />
		{$register_step_1_extra}
	{/if}
{checkActionsTpl location="tpl_pligg_story_comments_submit_end"}
<br />