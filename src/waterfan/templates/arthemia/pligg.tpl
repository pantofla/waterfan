<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="{#PLIGG_Visual_Language_Direction#}" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	{checkActionsTpl location="tpl_pligg_head_start"}
	{include file="meta.tpl"}

	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/style.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/arthemia.css" media="screen" />
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

	{if preg_match('/index.php$/',$templatelite.server.SCRIPT_NAME)}	
		{if $templatelite.get.category}
			{if $templatelite.get.page>1}
				<title>{$navbar_where.text2} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Breadcrumb_Published_Tab#} | {#PLIGG_Visual_Name#}</title>
			{else}
				<title>{$navbar_where.text2} | {#PLIGG_Visual_Breadcrumb_Published_Tab#} | {#PLIGG_Visual_Name#}</title>
			{/if}
		{elseif $templatelite.get.page>1}
			<title>{#PLIGG_Visual_Breadcrumb_Published_Tab#} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Name#}</title>
		{else}
			<title>{#PLIGG_Visual_Name#} - {#PLIGG_Visual_RSS_Description#}</title>
		{/if}
	{elseif preg_match('/upcoming.php$/',$templatelite.server.SCRIPT_NAME)}	
		{if $templatelite.get.category}
			{if $templatelite.get.page>1}
				<title>{$navbar_where.text2} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Breadcrumb_Unpublished_Tab#} | {#PLIGG_Visual_Name#}</title>
			{else}
				<title>{$navbar_where.text2} | {#PLIGG_Visual_Breadcrumb_Unpublished_Tab#} | {#PLIGG_Visual_Name#}</title>
			{/if}
		{elseif $templatelite.get.page>1}
			<title>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Name#}</title>
		{else}
			<title>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#} | {#PLIGG_Visual_Name#}</title>
		{/if}
	{elseif preg_match('/submit.php$/',$templatelite.server.SCRIPT_NAME)}	
		<title>{#PLIGG_Visual_Submit#} | {#PLIGG_Visual_Name#}</title>
	{elseif preg_match('/search.php$/',$templatelite.server.SCRIPT_NAME)}	
		<title>{#PLIGG_Visual_Search_SearchResults#} '{$templatelite.get.search}' | {#PLIGG_Visual_Name#}</title>
	{elseif preg_match('/groups.php$/',$templatelite.server.SCRIPT_NAME)}	
		{if $templatelite.get.page>1}
			<title>{#PLIGG_Visual_Groups#} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Name#}</title>
		{else}
			<title>{#PLIGG_Visual_Groups#} | {#PLIGG_Visual_Name#}</title>
		{/if}
	{elseif preg_match('/group_story.php$/',$templatelite.server.SCRIPT_NAME)}	
		{if $groupview!='published'}
			{if $groupview eq "upcoming"}
				{assign var='tview' value=#PLIGG_Visual_Group_Upcoming#}
			{elseif $groupview eq "shared"}
				{assign var='tview' value=#PLIGG_Visual_Group_Shared#}
			{elseif $groupview eq "members"}
				{assign var='tview' value=#PLIGG_Visual_Group_Member#}
			{/if}

			{if $templatelite.get.page>1}
				<title>{$group_name} | {if $templatelite.get.category}{$navbar_where.text2} | {/if}{$tview} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Name#}</title>
			{else}
				<title>{$group_name} | {if $templatelite.get.category}{$navbar_where.text2} | {/if}{$tview} | {#PLIGG_Visual_Name#}</title>
			{/if}
		{elseif $templatelite.get.page>1}
			<title>{$group_name} | {#PLIGG_Page_Title#} {$templatelite.get.page} | {#PLIGG_Visual_Name#}</title>
		{else}
			<title>{$group_name} - {$group_description} | {#PLIGG_Visual_Name#}</title>
		{/if}
	{else}	
		<title>{$posttitle} | {$pretitle} {#PLIGG_Visual_Name#}</title>
	{/if}
	
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="{$my_base_url}{$my_pligg_base}/rss.php"/>
	<link rel="icon" href="{$my_pligg_base}/favicon.ico" type="image/x-icon"/>
		
	{checkActionsTpl location="tpl_pligg_head_end"}
</head>
<body dir="{#PLIGG_Visual_Language_Direction#}" {$body_args}>
	{checkActionsTpl location="tpl_pligg_body_start"}
	
<!-- START CONTENT -->
	{literal}
		<script type="text/javascript" language="JavaScript">
		function checkForm() {
		answer = true;
		if (siw && siw.selectingSomething)
			answer = false;
		return answer;
		}//
		</script>
	{/literal}
	
	{checkActionsTpl location="tpl_pligg_banner_top"}
	
	{include file=$tpl_header.".tpl"}
	
	<div id="page" class="clearfloat">
		{if $pagename neq "index" && $pagename neq "published"}<div id="front-list">{/if}
			<!-- START LEFT COLUMN -->
			{checkActionsTpl location="tpl_pligg_content_start"}
				{checkActionsTpl location="tpl_pligg_above_center"}
				{include file=$tpl_center.".tpl"}
				{checkActionsTpl location="tpl_pligg_below_center"}
			{checkActionsTpl location="tpl_pligg_content_end"}
			<!-- END LEFT COLUMN -->
		{if $pagename neq "index" && $pagename neq "published"}</div>{/if}
		
		<!-- START RIGHT COLUMN -->
		<div id="sidebar">
			{include file=$tpl_second_sidebar.".tpl"}
			{include file=$tpl_right_sidebar.".tpl"}
		</div>
		<!-- END RIGHT COLUMN -->
		
		
	
	{checkActionsTpl location="tpl_pligg_banner_bottom"}
	
	</div>
	
	{include file=$tpl_footer.".tpl"}
	
<!-- END CONTENT --> 

	<script src="{$my_pligg_base}/templates/xmlhttp.php" type="text/javascript"></script> {* this line HAS to be towards the END of pligg.tpl *}
	{checkActionsTpl location="tpl_pligg_body_end"}

{literal}
<script type="text/javascript">
var uservoiceOptions = {
  /* required */
  key: 'waterfangeeks',
  host: 'waterfangeeks.uservoice.com', 
  forum: '37183',
  showTab: true,  
  /* optional */
  alignment: 'right',
  background_color:'#f00', 
  text_color: 'white',
  hover_color: '#06C',
  lang: 'en'
};

function _loadUserVoice() {
  var s = document.createElement('script');
  s.setAttribute('type', 'text/javascript');
  s.setAttribute('src', ("https:" == document.location.protocol ? "https://" : "http://") + "cdn.uservoice.com/javascripts/widgets/tab.js");
  document.getElementsByTagName('head')[0].appendChild(s);
}
_loadSuper = window.onload;
window.onload = (typeof window.onload != 'function') ? _loadUserVoice : function() { _loadSuper(); _loadUserVoice(); };
</script>
{/literal}
	
{literal}
<script src="http://tweetboard.com/waterfangeeks/tb.js" type="text/javascript"></script>
{/literal}
</body>
</html>