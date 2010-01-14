<!-- START HEADER.TPL -->
	<div class="headerbackground">
		<div id="login">
			{if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <span style="text-transform:capitalize"><a href="{$URL_userNoVar}">{$user_logged_in}</a></span> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
			
			{if $user_authenticated neq true}<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>{/if}
		</div>
		
		<!-- START RSS -->
		<div class="rsslink">
			{if $URL_rss_page}
			<a href="{$URL_rss_page}" target="_blank">
				RSS Feed &nbsp;<img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" align="top" border="0" alt="RSS" />
			</a>
			{/if}
		</div>
		<!-- END RSS -->

		<div id="logo"><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Name#}</a></div>
	</div>
	<!-- START SEARCH -->
	<div class="search">
		{if isset($templatelite.get.search)}
			{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
		{else}
			{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
		{/if}

		<form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search"
			{php}
			global $URLMethod, $my_base_url, $my_pligg_base;
			if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/search/\"+this.search.value; return false;'";
			{/php}
			>

			<input type="text" size="20" class="searchfield" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}"/>
			<input type="submit" value="{#PLIGG_Visual_Search_Go#}" class="searchbutton" />
		</form>
	</div>
	<div class="clear"></div>
	<!-- END SEARCH -->

	<!-- START NAVBAR -->
	<ul id="nav">
		{checkActionsTpl location="tpl_pligg_navbar_start"}
		<li {if $pagename eq "published" || $pagename eq "index"}class="current"{/if}><a href='{$my_base_url}{$URL_base}'>{#PLIGG_Visual_Published_News#}</a></li>
		<li {if $pagename eq "upcoming"}class="current"{/if}><a href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a></li>
		<li {if $pagename eq "submit"}class="current"{/if}><a href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a></li>
		{if $enable_group eq "true"}	
			<li {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="current"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
		{/if}	
		{if $user_authenticated eq true}<li {if $pagename eq "user"}class="current"{/if}><a href="{$URL_userNoVar}"><span>{#PLIGG_Visual_Profile#}</span></a></li>{/if}
		{if isset($isgod) && $isgod eq 1}<li><a href="{$URL_admin}"><span>{#PLIGG_Visual_Header_AdminPanel#}</span></a></li>{/if}
		{checkActionsTpl location="tpl_pligg_navbar_end"}
	</ul>
	{assign var=sidebar_module value="categories"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
	<!-- END NAVBAR -->


	{checkActionsTpl location="tpl_pligg_breadcrumb_end"}
<!-- END HEADER.TPL -->