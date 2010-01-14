<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="{#PLIGG_Visual_Language_Direction#}" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  {checkActionsTpl location="tpl_pligg_head_start"}
  {include file="meta.tpl"}

  <style type="text/css" media="screen">
   @import "{$my_pligg_base}/templates/{$the_template}/css/style.css";
   @import "{$my_pligg_base}/templates/{$the_template}/css/style-green.css";
  </style>

  <!--[if lte IE 6]>
  <link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/ie6.css" media="screen" />
  <![endif]-->
  <!--[if IE 7]>
  <link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/ie7.css" media="screen" />
  <![endif]-->

  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

  {checkForCss}
  {checkForJs}

  {if $pagename neq "published" && $pagename neq "upcoming" && $Spell_Checker eq 1}
  <script src="{$my_pligg_base}/3rdparty/speller/spellChecker.js" type="text/javascript"></script>
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

 <div id="page">
  {literal}
    <script type="text/javascript" language="JavaScript">
    function checkForm() {
    answer = true;
    if (siw && siw.selectingSomething) answer = false;
    return answer;
    }//
    </script>
  {/literal}

  {checkActionsTpl location="tpl_pligg_banner_top"}

  {include file=$tpl_header.".tpl"}


 <!-- left+right bottom shadow -->
 <div class="shadow-left page-content main-wrapper">
  <div class="shadow-right">

  <!-- main content: primary + sidebar(s) -->
  <div id="main">
   <div id="main-inside" class="clearfix">
    <!-- primary content -->
    <div id="primary-content">
     	{* if $pagename eq "published" || $pagename eq "index"}<h1 class="title">{#PLIGG_Visual_Published_News#}</h1>{/if *}

		{if $pagename eq "rssfeeds"}{#PLIGG_Visual_RSS_Feeds#}{/if}

		{if isset($templatelite.get.q)} {$templatelite.get.q|sanitize:2|stripslashes}{/if}


		{* if $pagename neq "story" && $pagename neq "user" && $pagename neq "profile"}
			{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} &#187; <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} &#187; {$navbar_where.text2}{/if}
			{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} &#187; <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} &#187; {$navbar_where.text3}{/if}
			{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} &#187; <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} &#187; {$navbar_where.text4}{/if}

            {checkActionsTpl location="tpl_pligg_breadcrumb_end"}

		{/if *}

		{include file=$tpl_center.".tpl"}

    </div>
    <!-- /primary content -->

    {include file=$tpl_right_sidebar.".tpl"}

   </div>
  </div>
  <!-- /main content -->

  <div id="footer">
	{checkActionsTpl location="tpl_pligg_banner_bottom"}
	{include file=$tpl_footer.".tpl"}
  </div>

  </div>
 </div>
 <!-- /shadow -->

  <!-- page controls -->
 <div id="pageControls"></div>
 <!-- /page controls -->

 </div>

 <script type="text/javascript">
  /* <![CDATA[ */
    var isIE6 = false; /* <- do not change! */
    var isIE = false; /* <- do not change! */
    var lightbox = 1; /* enable lightbox on all image links */
  /* ]]> */
 </script>
 <!--[if lte IE 6]> <script type="text/javascript"> isIE6 = true; isIE = true; </script> <![endif]-->
 <!--[if gte IE 7]> <script type="text/javascript"> isIE = true; </script> <![endif]-->

 <script type="text/javascript" src="{$my_pligg_base}/templates/{$the_template}/js/jquery.mystique.min.js"></script>
 <script src="{$my_pligg_base}/templates/xmlhttp_total.php" type="text/javascript"></script> {* this line HAS to be towards the END of pligg.tpl *}
 {checkActionsTpl location="tpl_pligg_body_end"}
</body>
</html>
