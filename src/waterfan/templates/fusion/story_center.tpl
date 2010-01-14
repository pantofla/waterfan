{if $pagename eq "story"}<br />{/if}

{$the_story}

<br />

<div id="secondary-tabs">

<ul class="menu">
  <li><a href="#tab-comments"><span><span>{#PLIGG_Visual_Story_Comments#}</span></span></a></li>
  <li><a href="#tab-whovoted"><span><span>{#PLIGG_Visual_Story_WhoVoted#}</span></span></a></li>
  <li><a href="#tab-related"><span><span>{#PLIGG_Visual_Story_RelatedStory#}</span></span></a></li>
</ul>

<div id="tab-comments">
	{checkActionsTpl location="tpl_pligg_story_comments_start"}
	{$the_comments}
	{checkActionsTpl location="tpl_pligg_story_comments_end"}
	{if $user_authenticated neq ""}
		{include file=$the_template."/comment_form.tpl"}
	{else}
		{checkActionsTpl location="anonymous_comment_form"}
		<div align="center" style="margin-left:auto;font-weight:bold;margin-right:auto;border:#ccc solid 2px;padding-top:8px; margin-bottom:20px;border-width:1px;width:600px;text-align:center; padding-bottom: 8px;">
			<a href="{$login_url}">{#PLIGG_Visual_Story_LoginToComment#}</a> {#PLIGG_Visual_Story_Register#} <a href="{$register_url}">{#PLIGG_Visual_Story_RegisterHere#}</a>.
		</div>
	{/if}
</div>

<div id="tab-whovoted">
	{checkActionsTpl location="tpl_pligg_story_who_voted_start"}
		<ol>
			{section name=nr loop=$voter}
				<li>
					{if $UseAvatars neq "0"}<img src="{$voter[nr].Avatar_ImgSrc}" alt="Avatar" align="top" />{/if}
					<a href = "{$URL_user, $voter[nr].user_login}">{$voter[nr].user_login}</a><br/>
				</li>
			{/section}
		</ol>
	{checkActionsTpl location="tpl_pligg_story_who_voted_end"}
</div>


<div id="tab-related">
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



</div>
