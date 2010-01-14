
{$the_story}

<br/>

{checkActionsTpl location="tpl_pligg_story_who_voted_start"}
<br/>
	<h2>{#PLIGG_Visual_Story_WhoVoted#}</h2>
	<div class="clear-sections">
		
			{section name=nr loop=$voter}
			<div class="three-sections">
					{if $UseAvatars neq "0"}<img src="{$voter[nr].Avatar_ImgSrc}" alt="Avatar" class="avatar" />{/if} 
					<a href = "{$URL_user, $voter[nr].user_login}">{$voter[nr].user_login}</a>
					</div>
			
			{/section}
		
	</div>

{checkActionsTpl location="tpl_pligg_story_who_voted_end"}

<br style="clear:both" />
{if count($related_story) neq 0}
{checkActionsTpl location="tpl_pligg_story_related_start"}
<div id="related">
	<h2>{#PLIGG_Visual_Story_RelatedStory#}</h2>	
	<ol>
		{section name=nr loop=$related_story}
			<li><a href = "{$related_story[nr].url}">{$related_story[nr].link_title}</a><br/></li> 
		{/section}
	</ol>
</div><br/>
{checkActionsTpl location="tpl_pligg_story_related_end"}
{/if}

{checkActionsTpl location="tpl_pligg_story_comments_start"}
<div id="comments">
	<h2><a name="comments">{#PLIGG_Visual_Story_Comments#}</a></h2>
	{checkActionsTpl location="tpl_pligg_story_comments_individual_start"}
		{$the_comments}
	{checkActionsTpl location="tpl_pligg_story_comments_individual_end"}
	{if $user_authenticated neq ""}
		{include file=$the_template."/comment_form.tpl"}
	{else}
		<br/>
		{checkActionsTpl location="anonymous_comment_form"}
<div class="border-sections"><center>
<a href="{$login_url}">{#PLIGG_Visual_Story_LoginToComment#}</a> {#PLIGG_Visual_Story_Register#} <a href="{$register_url}">{#PLIGG_Visual_Story_RegisterHere#}</a>.
		</center></div>
	{/if}
</div>
{checkActionsTpl location="tpl_pligg_story_comments_end"}
