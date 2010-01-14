<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="{#PLIGG_Visual_Language_Direction#}" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	{checkActionsTpl location="tpl_pligg_body_start"}
	
	{include file="meta.tpl"}

	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/style.css" media="screen" />
	{if $pagename eq "submit"}<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/wick.css" />{/if}	
	
	{if $Voting_Method eq 2}
	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/star_rating/star.css" media="screen" />
	{/if}

	{checkForCss}
	{checkForJs}		

	{if $pagename neq "published" && $pagename neq "upcoming"}
		{if $Spell_Checker eq 1}			
			<script src="{$my_pligg_base}/3rdparty/speller/spellChecker.js" type="text/javascript"></script>
		{/if}
	{/if}	

	{if $request_category}
		<title>{$pretitle} {$meta_description} {if $pagename eq "upcoming"}| {$posttitle} {/if}| {#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "groups"}
		<title>{#PLIGG_Visual_Name#} | {#PLIGG_Visual_Groups#}</title>
	{elseif $pagename eq "group_story"}
		<title>{$group_name} - {$group_description} | {#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "submit_groups"}
		<title>{#PLIGG_Visual_Name#} | {$posttitle}</title>
	{elseif $pagename eq "upcoming"}
		<title>{#PLIGG_Visual_Name#} | {#PLIGG_Visual_Pligg_Queued#}</title>
	{elseif $pagename eq "published"}
		<title>{#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "index"}
		<title>{#PLIGG_Visual_Name#} - {#PLIGG_Visual_RSS_Description#}</title>
	{elseif $pagename eq "story"}
		<title>{$pretitle} {$posttitle} | {#PLIGG_Visual_Name#}</title>
	{else}
		<title>{$pretitle} {#PLIGG_Visual_Name#} | {$posttitle}</title>
	{/if}
	
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="{$my_base_url}{$my_pligg_base}/rss.php"/>
	<link rel="icon" href="{$my_pligg_base}/favicon.ico" type="image/x-icon"/>
		
	{checkActionsTpl location="tpl_pligg_head_end"}
</head>
<body dir="{#PLIGG_Visual_Language_Direction#}" {$body_args}>
	{checkActionsTpl location="tpl_pligg_body_start"}


		{literal}
			<script type="text/javascript" language="JavaScript">
			function checkForm() {
			answer = true;
			if (siw &amp;&amp; siw.selectingSomething)
				answer = false;
			return answer;
			}//
			</script>
		{/literal}
		
		{checkActionsTpl location="tpl_pligg_banner_top"}
		
		{include file=$tpl_header.".tpl"}
	
<!-- START CONTENT --> 
	<div id="wrap-width">
		
<!-- START LEFT COLUMN -->
	
		<div class="main-content">
	
	<!-- START BREADCRUMBS -->
{if $pagename eq "published" || $pagename eq "index"}<h1 style="display: none;">{#PLIGG_Visual_Published_News#}{/if}
{if $pagename eq "upcoming"}<h1 style="display: none;">{#PLIGG_Visual_Pligg_Queued#}{/if}
{if $pagename eq "submit_groups"}<h1>{#PLIGG_Visual_Submit_A_New_Group#}{/if}
{if $pagename eq "groups"}<h1>{#PLIGG_Visual_Groups#}{/if}
{if $pagename eq "group_story" }<h1>{$group_name}{/if}
{if $pagename eq "login"}<h1>{#PLIGG_Visual_Login#}{/if}
{if $pagename eq "register"}<h1>{#PLIGG_Visual_Register#}{/if}
{if $pagename eq "editlink"}<h1>{#PLIGG_Visual_EditStory_Header#}: {$submit_url_title}{/if}
{if $pagename eq "rssfeeds"}<h1>{#PLIGG_Visual_RSS_Feeds#}{/if}
{if $pagename eq "topusers"}<h1>{#PLIGG_Visual_TopUsers_Statistics#}{/if}
{if $pagename eq "cloud"}<h1>{#PLIGG_Visual_Tags_Tags#}{/if}
{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}<h1>{#PLIGG_Visual_Live#}{/if}
{if $pagename eq "advancedsearch"}<h1>{#PLIGG_Visual_Search_Advanced#}{/if}
{if isset($templatelite.get.search)}<h1>{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.search|sanitize:2|stripslashes}{/if}
{if isset($templatelite.get.q)}<h1>{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.q|sanitize:2|stripslashes}{/if} 
{if $pagename neq "story" && $pagename neq "user" && $pagename neq "profile" && $pagename neq "submit"}
	{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} &#187; <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} &#187; {$navbar_where.text2}{/if}
	{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} &#187; <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} &#187; {$navbar_where.text3}{/if}
	{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} &#187; <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} &#187; {$navbar_where.text4}{/if}
</h1>
{/if}
{if $pagename eq "profile"}<h1>{#PLIGG_Visual_Profile_ModifyProfile#}</h1>{/if}
{if $pagename eq "user"}<h1>{$page_header} <a href="{$user_rss, $view_href}" target="_blank"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" style="vertical-align:middle;margin-left:6px;border:0;"></a></h1>{/if}


{checkActionsTpl location="tpl_pligg_breadcrumb_end"}

<!-- END BREADCRUMBS -->
	
	{assign var=sidebar_module value="sort_menus"}{include file=$the_template_sidebar_modules."/wrapper2.tpl"}

	
		{checkActionsTpl location="tpl_pligg_content_start"}
			{checkActionsTpl location="tpl_pligg_above_center"}
			{include file=$tpl_center.".tpl"}
			{checkActionsTpl location="tpl_pligg_below_center"}
		{checkActionsTpl location="tpl_pligg_content_end"}
		
		</div>
<!-- END LEFT COLUMN -->
	

<!-- START RIGHT COLUMN -->
		<div id="side-bar">
		{include file=$tpl_right_sidebar.".tpl"}
		{include file=$tpl_second_sidebar.".tpl"}
		</div>
<!-- END RIGHT COLUMN -->
	
	</div>
<!-- END CONTENT --> 

	{checkActionsTpl location="tpl_pligg_banner_bottom"}
	
	{include file=$tpl_footer.".tpl"}

	<script src="{$my_pligg_base}/templates/xmlhttp.php" type="text/javascript"></script> {* this line HAS to be towards the END of pligg.tpl *}
	{checkActionsTpl location="tpl_pligg_body_end"}
</body>
</html>
