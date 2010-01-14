<!-- START HEADER -->
<div id="login">
	{if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <span style="text-transform:capitalize"><a href="{$URL_userNoVar}">{$user_logged_in}</a></span> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
	
	{if $user_authenticated neq true}<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>{/if}
</div>
	<div id="logo"><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Name#}</a></div>
	
	<!-- start search -->
	<div class="search">
		{if isset($templatelite.get.search)}
			{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
		{else}
			{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
		{/if}

		{if $SearchMethod eq 4}
			<!-- Start SiteSearch Google -->
			<form method="get" action="{$my_base_url}{$my_pligg_base}/search.php" target="_top">
				<label for="sbi" style="display: none">"{$searchboxtext}</label>
				<input name="q" type="text" size="15" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}" />
				<label for="sbb" style="display: none">{#PLIGG_Visual_Search_Go#}</label>
				<input type="submit" name="sa" value="{#PLIGG_Visual_Search_Go#}" />
				<input type="hidden" name="sitesearch" value="{$my_base_url}{$my_pligg_base}" id="ss1"></input>
				<input type="hidden" name="flav" value="0002"></input>
				<input type="hidden" name="client" value="pub-1628281707918473"></input>
				<input type="hidden" name="forid" value="1"></input>
				<input type="hidden" name="ie" value="ISO-8859-1"></input>
				<input type="hidden" name="oe" value="ISO-8859-1"></input>
				<input type="hidden" name="cof" value="GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:336699;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;FORID:11"></input>
				<input type="hidden" name="hl" value="en"></input>
			</form>
			<!-- End SiteSearch Google -->				
		{else}
			<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search">
				<input type="text" size="20" class="searchfield" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}"/>
				<input type="submit" value="{#PLIGG_Visual_Search_Go#}" class="searchbutton" />
			</form>
			<div class="clear"></div>
		{/if}
	</div>
	<!-- end search -->

	<ul id="nav">
		{checkActionsTpl location="tpl_pligg_navbar_start"}
		<li {if $pagename eq "published" || $pagename eq "index"}class="current"{/if}><a href='{$my_base_url}{$my_pligg_base}/{$URL_base}'>{#PLIGG_Visual_Published_News#}</a></li>
		<li {if $pagename eq "upcoming"}class="current"{/if}><a href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a></li>
		<li {if $pagename eq "submit"}class="current"{/if}><a href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a></li>
		{if $enable_group eq "true"}	
			<li {if $pagename eq "groups"}class="current"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
			{if $group_allow eq "1"}
			<li {if $pagename eq "submit_groups"}class="current"{/if}><a href="{$URL_submit_groups}"><span>{#PLIGG_Visual_Submit_A_New_Group#}</span></a></li>
			{/if}
		{/if}	
		{if $user_authenticated eq true}<li {if $pagename eq "user"}class="current"{/if}><a href="{$URL_userNoVar}"><span>{#PLIGG_Visual_Profile#}</span></a></li>{/if}
		{if isset($isgod) && $isgod eq 1}<li><a href="{$URL_admin}"><span>{#PLIGG_Visual_Header_AdminPanel#}</span></a></li>{/if}
		{checkActionsTpl location="tpl_pligg_navbar_end"}
	</ul>
{assign var=sidebar_module value="categories"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
<!-- END HEADER -->

<div class="rsslink">
	{if $URL_rss_page}
	<a href="{$URL_rss_page}" target="_blank">
		RSS &nbsp;<img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" align="top" border="0" alt="RSS" />
	</a>
	{/if}
</div>
	
    <h1>
		{if $pagename eq "published" || $pagename eq "index"}{#PLIGG_Visual_Published_News#}{/if}
		{if $pagename eq "upcoming"}{#PLIGG_Visual_Pligg_Queued#}{/if}
		{if $pagename eq "groups" || $pagename eq "group_story" }{#PLIGG_Visual_Groups#}{/if}
		{if $pagename eq "user"}<span style="text-transform:capitalize">{$page_header} 	<a href="{$user_rss, $view_href}" target="_blank"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" style="margin-left:6px;border:0;"></a>
		{/if}
		{if $pagename eq "login"}{#PLIGG_Visual_Login#}{/if}
		{if $pagename eq "register"}{#PLIGG_Visual_Register#}{/if}
		{if $pagename eq "rssfeeds"}{#PLIGG_Visual_RSS_Feeds#}{/if}
		{if $pagename eq "profile"}{#PLIGG_Visual_Profile_ModifyProfile#}{/if}
		{if $pagename eq "topusers"}{#PLIGG_Visual_TopUsers_Statistics#}{/if}
		{if $pagename eq "cloud"}{#PLIGG_Visual_Tags_Tags#}{/if}
		{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}{#PLIGG_Visual_Live#}{/if}
		{if $pagename eq "advancedsearch"}{#PLIGG_Visual_Search_Advanced#}{/if}
		{if isset($templatelite.get.search)}{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.search|sanitize:2|stripslashes}{/if}
		{if isset($templatelite.get.q)}{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.q|sanitize:2|stripslashes}{/if} 
	
		{if $pagename neq "story" && $pagename neq "user" && $pagename neq "profile"}
			{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} &#187; <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} &#187; {$navbar_where.text2}{/if}
			{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} &#187; <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} &#187; {$navbar_where.text3}{/if}
			{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} &#187; <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} &#187; {$navbar_where.text4}{/if}
		{/if}
		{checkActionsTpl location="tpl_pligg_breadcrumb_end"}
	</h1>
	
	
	{if $pagename eq "submit"}
	{elseif $pagename neq "story" && $pagename neq "user" && $pagename neq "profile" && $pagename neq "login" && $pagename neq "register" }
		<div id="leftcol">
	{else}
		<div id="leftcol-wide">
	{/if}
	
	{if $pagename eq "group_story"}
	<div id="group_navbar"></div>
	{/if}
