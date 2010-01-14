<br clear="all" />
<!-- START FOOTER -->

{checkActionsTpl location="tpl_pligg_footer_start"}

<div id='footer-nav'>
<div id='footer-nav-c'>
<p class='right'>
		{checkActionsTpl location="tpl_pligg_navbar_start"}

<a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Home#}</a>
<a href="{$my_base_url}{$my_pligg_base}/rssfeeds.php">{#PLIGG_Visual_RSS_Feeds#}</a>	
<a href="{$URL_advancedsearch}">{#PLIGG_Visual_Search_Advanced#}</a>
<a href='{$URL_topusers}'>{#PLIGG_Visual_Top_Users#}</a>
{if $Enable_Tags}<a href="{$URL_tagcloud}">{#PLIGG_Visual_Tags#}</a>{/if}
<a href="http://battlefield3forums.com" tittle="Battlefield 3 forums">Battlefield 3 Forums</a>
	
		{checkActionsTpl location="tpl_pligg_navbar_end"}
</p>
</div>
</div>
<div id='footer'>
<div id='footer-c'>

{* Please leave the link below in the footer *}
<a href="http://battlefield3forums.com" tittle="Battlefield 3 forums">Battlefield 3 Forums</a>
	
</div>
</div>

 {checkActionsTpl location="tpl_pligg_footer_end"}

<!-- END FOOTER --> 
