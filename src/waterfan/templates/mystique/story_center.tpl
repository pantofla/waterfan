
{$the_story}

<!-- tabbed content -->
<div class="tabbed-content post-tabs" id="post-tabs">

 <!-- tab navigation (items must be in reverse order because of the tab-design) -->
 <div class="tabs-wrap clearfix">
  <ul class="tabs">
    <li class="related-stories"><a href="#section-relatedstories"><span>{#PLIGG_Visual_Story_RelatedStory#}</span></a></li>
    <li class="who-voted"><a href="#section-whovoted"><span>{#PLIGG_Visual_Story_WhoVoted#}</span></a></li>
    <li class="comments"><a href="#section-comments"><span>{#PLIGG_Visual_Story_Comments#}</span></a></li>
  </ul>
 </div>
 <!-- /tab nav -->

 <!-- tab sections -->
 <div class="sections">
  <!-- comments -->
  <div class="section" id="section-comments">
  {checkActionsTpl location="tpl_pligg_story_comments_start"}
    <form action="" method="POST" id="submit-comment">		
    {checkActionsTpl location="tpl_pligg_story_comments_individual_start"}
    <div class="clearfix">
     <ul class="comments">
		{$the_comments}
     </ul>
    </div>
	{checkActionsTpl location="tpl_pligg_story_comments_individual_end"}
	{if $user_authenticated neq ""}
		{include file=$the_template."/comment_form.tpl"}
	{else}
		<br/>
		{checkActionsTpl location="anonymous_comment_form"}
		<div class="alignright clearfix" style="padding: 1em;">
			<a href="{$login_url}">{#PLIGG_Visual_Story_LoginToComment#}</a> {#PLIGG_Visual_Story_Register#} <a href="{$register_url}">{#PLIGG_Visual_Story_RegisterHere#}</a>.
		</div>
	{/if}

  {checkActionsTpl location="tpl_pligg_story_comments_end"}
  </form>
  </div>
  <!-- /comments -->

  <!-- who voted -->
  <div class="section" id="section-whovoted">
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
  <!-- /who voted -->

  <!-- related stories -->
  <div class="section" id="section-relatedstories">
  {if count($related_story) neq 0}
  {checkActionsTpl location="tpl_pligg_story_related_start"}
	<ol>
		{section name=nr loop=$related_story}
			<li><a href = "{$related_story[nr].url}">{$related_story[nr].link_title}</a><br/></li>
		{/section}
	</ol>
  {checkActionsTpl location="tpl_pligg_story_who_voted_end"}
  {checkActionsTpl location="tpl_pligg_story_related_end"}
  {else}
  <h6 class="title">No related stories found</h6>
  {/if}
  </div>
  <!-- /related stories -->

 </div>
 <!-- /tab sections -->
</div>
<!-- /tabbed content -->
