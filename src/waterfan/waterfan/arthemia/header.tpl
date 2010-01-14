<div id="head" class="clearfloat">

	<div class="clearfloat">
		<div id="logo" class="left">
			<a href="{$my_base_url}{$my_pligg_base}"><img src="{$my_pligg_base}/templates/{$the_template}/images/logo.png" width="177px" height="39px" alt="{#PLIGG_Visual_Name#}" /></a>
			<div id="tagline">{#PLIGG_Visual_RSS_Description#}</div>
		</div>
		<div class="right">
			{include file="./templates/arthemia/ads/ad_header.php"}
		</div>
	</div>

	<div id="navbar" class="clearfloat">
		<ul id="page-bar" class="left clearfloat">
			{checkActionsTpl location="tpl_pligg_navbar_start"}
			<li {if $pagename eq "published" || $pagename eq "index"}class="current"{/if}><a href='{$my_base_url}{$URL_base}'>{#PLIGG_Visual_Published_News#}</a></li>
			<li {if $pagename eq "upcoming"}class="current"{/if}><a href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a></li>
			<li {if $pagename eq "submit"}class="current"{/if}><a href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a></li>
			{if $enable_group eq "true"}	
				<li {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="current"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
			{/if}
			{if $user_authenticated neq true}<li><a href="{$URL_login}"><span>{#PLIGG_Visual_Login#}</span></a></li>{/if}
			{if $user_authenticated neq true}<li><a href="{$URL_register}"><span>{#PLIGG_Visual_Register#}</span></a></li>{/if}
			{if $user_authenticated eq true}<li {if $pagename eq "user"}class="current"{/if}><a href="{$URL_userNoVar}"><span>{#PLIGG_Visual_Profile#}</span></a></li>{/if}
			{if $user_authenticated eq true}<li><a href="{$URL_logout}"><span>{#PLIGG_Visual_Logout#}</span></a></li>{/if}
			{if isset($isgod) && $isgod eq 1}<li><a href="{$URL_admin}"><span>{#PLIGG_Visual_Header_AdminPanel#}</span></a></li>{/if}
			{checkActionsTpl location="tpl_pligg_navbar_end"}
		</ul>
		
		{if isset($templatelite.get.search)}
			{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
		{else}
			{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
		{/if}
		<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="searchform" class="left"
			{php}
			global $URLMethod, $my_base_url, $my_pligg_base;
			if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/search/\"+this.search.value; return false;'";
			{/php}
		>
			<div>
				<input type="text" value="{$searchboxtext}" value="" name="search" id="s" onfocus="this.value=''" title="Enter the terms you wish to search for." /><input type="image" src="{$my_pligg_base}/templates/{$the_template}/images/magnify.gif" id="searchsubmit" />
			</div>
		</form>
	</div>
</div>




{*
	<!-- START HEADER.TPL -->
	<div id="login">
		{if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <span style="text-transform:capitalize"><a href="{$URL_userNoVar}">{$user_logged_in}</a></span> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
		
		{if $user_authenticated neq true}<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>{/if}
	</div>

	<!-- START RSS -->
	<div class="rsslink">
		{if $URL_rss_page}
		<a href="{$URL_rss_page}" target="_blank">
			RSS &nbsp;<img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" align="top" border="0" alt="RSS" />
		</a>
		{/if}
	</div>
	<!-- END RSS -->

<!-- START BREADCRUMBS -->
<h1>
{if $pagename eq "published" || $pagename eq "index"}{#PLIGG_Visual_Published_News#}{/if}
{if $pagename eq "upcoming"}{#PLIGG_Visual_Pligg_Queued#}{/if}
{if $pagename eq "submit_groups"}{#PLIGG_Visual_Submit_A_New_Group#}{/if}
{if $pagename eq "groups"}{#PLIGG_Visual_Groups#}{/if}
{if $pagename eq "group_story" }{$group_name}{/if}
{if $pagename eq "login"}{#PLIGG_Visual_Login#}{/if}
{if $pagename eq "register"}{#PLIGG_Visual_Register#}{/if}
{if $pagename eq "editlink"}{#PLIGG_Visual_EditStory_Header#}: {$submit_url_title}{/if}
{if $pagename eq "rssfeeds"}{#PLIGG_Visual_RSS_Feeds#}{/if}
{if $pagename eq "topusers"}{#PLIGG_Visual_TopUsers_Statistics#}{/if}
{if $pagename eq "cloud"}{#PLIGG_Visual_Tags_Tags#}{/if}
{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}{#PLIGG_Visual_Live#}{/if}
{if $pagename eq "advancedsearch"}{#PLIGG_Visual_Search_Advanced#}{/if}
{if isset($templatelite.get.search)}{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.search|sanitize:2|stripslashes}{/if}
{if isset($templatelite.get.q)}{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.q|sanitize:2|stripslashes}{/if} 
{if $pagename neq "story" && $pagename neq "user" && $pagename neq "profile"}
	{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} » <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} » {$navbar_where.text2}{/if}
	{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} » <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} » {$navbar_where.text3}{/if}
	{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} » <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} » {$navbar_where.text4}{/if}
{/if}
{if $pagename eq "profile"}{#PLIGG_Visual_Profile_ModifyProfile#}{/if}
{if $pagename eq "user"}{$page_header} <a href="{$user_rss, $view_href}" target="_blank"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" style="margin-left:6px;border:0;"></a>{/if}
&nbsp;{checkActionsTpl location="tpl_pligg_breadcrumb_end"}</h1>
<!-- END BREADCRUMBS -->
	
*}

<!-- END HEADER.TPL -->