{if $pagename eq "story"}

<div style="margin: 0px 0px 10px; padding: 10px 0px" align="center">
{literal}
<script type="text/javascript"><!--
google_ad_client = "pub-5074133216375147";
/* 468x60, &#948;&#951;&#956;&#953;&#959;&#965;&#961;&#947;&#942;&#952;&#951;&#954;&#949; 29/12/2009 */
google_ad_slot = "0506795432";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
{/literal}
</div>
{/if}


{$the_story}
{checkActionsTpl location="tpl_pligg_story_who_voted_start"}
<div id="who_voted" class="clearfloat">

	<div class="whovotedwrapper">
		<ol>
			{section name=nr loop=$voter}
				<li>
					{if $UseAvatars neq "0"}<img src="{$voter[nr].Avatar_ImgSrc}" alt="Avatar" align="top" />{/if} 
					<a href = "{$URL_user, $voter[nr].user_login}">{$voter[nr].user_login}</a><br/>
				</li>
			{/section}
		</ol>
	</div>
</div>
{checkActionsTpl location="tpl_pligg_story_who_voted_end"}

<div class="clear"> </div>

{if count($related_story) neq 0}
	{checkActionsTpl location="tpl_pligg_story_related_start"}
	<div id="related" class="clearfloat">
		<h3>{#PLIGG_Visual_Story_RelatedStory#}</h3>	
		<ol>
			{section name=nr loop=$related_story}
				<li><a href = "{$related_story[nr].url}">{$related_story[nr].link_title}</a><br/></li> 
			{/section}
		</ol>
	</div>
	{checkActionsTpl location="tpl_pligg_story_related_end"}
{/if}

{checkActionsTpl location="tpl_pligg_story_comments_start"}
<div id="comments">
	<form action="" method="POST" id="thisform">
		<div class="clearfloat">
			<h3><a name="comments">{#PLIGG_Visual_Story_Comments#}</a></h3>
			{if $the_comments eq ""}
				<span style="color:#959595;">No one has commented on this article yet.</span>
			{/if}
			
			{checkActionsTpl location="tpl_pligg_story_comments_individual_start"}
				{$the_comments}
			{checkActionsTpl location="tpl_pligg_story_comments_individual_end"}
		</div>
		{if $user_authenticated neq ""}
			{include file=$the_template."/comment_form.tpl"}
		{else}
			<br/>
			{checkActionsTpl location="anonymous_comment_form"}
			<div align="center" style="clear:both;margin-left:auto;font-weight:bold;margin-right:auto;border:#ccc solid 2px;padding-top:8px; margin-bottom:20px;border-width:1px;width:600px;text-align:center; padding-bottom: 8px;">
				<a href="{$login_url}">{#PLIGG_Visual_Story_LoginToComment#}</a> {#PLIGG_Visual_Story_Register#} <a href="{$register_url}">{#PLIGG_Visual_Story_RegisterHere#}</a>.
			</div>
		{/if}
		<input type="hidden" name="process" value="newcomment" />
		<input type="hidden" name="randkey" value="{$randkey}" />
		<input type="hidden" name="link_id" value="{$link_id}" />
	<input type="hidden" name="user_id" value="{$user_id}" />
	</form>
</div>
{checkActionsTpl location="tpl_pligg_story_comments_end"}
{literal}
<script type="text/javascript"><!--
google_ad_client = "pub-5074133216375147";
/* 728x15, &#948;&#951;&#956;&#953;&#959;&#965;&#961;&#947;&#942;&#952;&#951;&#954;&#949; 29/12/2009 */
google_ad_slot = "4712322920";
google_ad_width = 728;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
{/literal}