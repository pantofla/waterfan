<!-- START HEADER.TPL -->

<div id='header'>
<div id='header-c'>
<p class='logo'>
<a href='{$my_base_url}{$my_pligg_base}'><img src="{$my_pligg_base}/templates/{$the_template}/images/logo.jpg" width=326 height=68 border="0";></a></a>
</p>
<p class='right'>
	{if $user_authenticated neq true}
	<a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>
	<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> 
	{/if}

	{if $user_authenticated eq true}<a href="{$URL_userNoVar}">{#PLIGG_Visual_Profile#}</a>{/if}
	{if isset($isgod) && $isgod eq 1}<a href="{$URL_admin}">{#PLIGG_Visual_Header_AdminPanel#}</a>{/if}

	{if $user_authenticated eq true} <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}

	<!-- START RSS -->
	{if $URL_rss_page}
	<a href="{$URL_rss_page}" target="_blank" class="rss"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.png" border="0" alt="RSS" /></a>
	{else}
	<a href="{$URL_rss}" target="_blank" class="rss"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.png" alt="RSS" /></a>
	{/if}
	<!-- END RSS -->

</p>
</div>
</div>

<div id="navigation"><div id="page-nav">

<ul>
<li><a {if $pagename eq "published" || $pagename eq "index"}class="sel"{/if} href='{$my_base_url}{$URL_base}'>{#PLIGG_Visual_Published_News#}</a></li>
<li><a {if $pagename eq "upcoming"}class="sel"{/if} href="{$URL_upcoming}">{#PLIGG_Visual_Pligg_Queued#}</a></li>
<li><a {if $pagename eq "submit"}class="sel"{/if} href="{$URL_submit}">{#PLIGG_Visual_Submit_A_New_Story#}</a></li>
{if $enable_group eq "true"}	
<li><a {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="sel"{/if} href="{$URL_groups}">{#PLIGG_Visual_Groups#}</a></li>
{/if}
</ul>


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

</div></div>

<!-- END HEADER.TPL -->