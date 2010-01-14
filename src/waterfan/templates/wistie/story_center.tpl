{if $enable_show_last_visit neq 0}
	{if $user_id neq 0}
		{if $last_visit neq '0'}
			{#PLIGG_Visual_Story_LastViewed_A#}{$last_visit}{#PLIGG_Visual_Story_LastViewed_B#}<br />
		{else}
			{#PLIGG_Visual_Story_FirstView#}<br />
		{/if}
	{/if}
{/if}
	
{$the_story}

<br/>

<div id="who_voted">
	<h2>{#PLIGG_Visual_Story_WhoVoted#}</h2>
	{checkActionsTpl location="tpl_pligg_story_who_voted_start"}
	<div class="whovotedwrapper" id="idwhovotedwrapper">
		<ol>
			{section name=nr loop=$voter}
				<li>
					{if $UseAvatars neq "0"}<img src="{$voter[nr].Avatar_ImgSrc}" alt="Avatar" align="top" />{/if} 
					<a href = "{$URL_user, $voter[nr].user_login}">{$voter[nr].user_login}</a><br/>
				</li>
			{/section}
		</ol>
	</div>
	{checkActionsTpl location="tpl_pligg_story_who_voted_end"}
</div>

<div id="related">
	<h2>{#PLIGG_Visual_Story_RelatedStory#}</h2>	
	{if count($related_story) neq 0}
	{checkActionsTpl location="tpl_pligg_story_related_start"}
		<ol>
			{section name=nr loop=$related_story}
				<li><a href = "{$related_story[nr].url}">{$related_story[nr].link_title}</a><br/></li> 
			{/section}
		</ol>
	{checkActionsTpl location="tpl_pligg_story_related_end"}
	{/if}
</div>

<div id="comments">
	<h3><a name="comments" style="color:#11A3AC">{#PLIGG_Visual_Story_Comments#}</a></h3>
	{checkActionsTpl location="tpl_pligg_story_comments_start"}
		{$the_comments}
	{checkActionsTpl location="tpl_pligg_story_comments_end"}
	{if $user_authenticated neq ""}
		{include file=$the_template."/comment_form.tpl"}
	{else}
		<br/>
		{checkActionsTpl location="anonymous_comment_form"}
		<div align="center" style="clear:both;margin-left:auto;font-weight:bold;margin-right:auto;border:#ccc solid 2px;padding-top:8px; margin-bottom:20px;border-width:1px;width:600px;text-align:center; padding-bottom: 8px;">
			<a href="{$login_url}">{#PLIGG_Visual_Story_LoginToComment#}</a> {#PLIGG_Visual_Story_Register#} <a href="{$register_url}">{#PLIGG_Visual_Story_RegisterHere#}</a>.
		</div>
	{/if}
</div>

