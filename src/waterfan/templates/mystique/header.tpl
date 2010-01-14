
<!-- header -->
<div class="shadow-left page-content header-wrapper">
 <div class="shadow-right">

  <div id="header" class="bubbleTrigger">
   <div id="site-title">
    <div id="logo"><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Name#}</a></div>
   </div>

   <div class="user">
     {if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <a style="text-transform:capitalize;" href="{$URL_userNoVar}">{$user_logged_in}</a> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
     {if $user_authenticated neq true}<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>{/if}
   </div>

   {if $URL_rss_page}
   <a href="{$URL_rss_page}" class="rss" title="RSS Feeds"><span>RSS Feeds</span></a>
   {/if}
   <ul id="navigation">
		<li {if $pagename eq "published" || $pagename eq "index"}class="active"{/if} id="nav-home"><a class="home fadeThis" href='{$my_base_url}{$URL_base}'><span class="title">{#PLIGG_Visual_Published_News#}</span><span class="pointer"></span></a></li>
		<li {if $pagename eq "upcoming"}class="active"{/if}><a class="fadeThis" href="{$URL_upcoming}"><span class="title">{#PLIGG_Visual_Pligg_Queued#}</span><span class="pointer"></span></a></li>
		<li {if $pagename eq "submit"}class="active"{/if}><a class="fadeThis" href="{$URL_submit}"><span class="title">{#PLIGG_Visual_Submit_A_New_Story#}</span><span class="pointer"></span></a></li>
		{if $enable_group eq "true"}
			<li {if $pagename eq "groups" || $pagename eq "submit_groups" || $pagename eq "group_story"}class="active"{/if}><a class="fadeThis" href="{$URL_groups}"><span class="title">{#PLIGG_Visual_Groups#}</span><span class="pointer"></span></a></li>
		{/if}
		{if $user_authenticated eq true}<li {if $pagename eq "user"}class="active"{/if}><a class="fadeThis" href="{$URL_userNoVar}"><span class="title">{#PLIGG_Visual_Profile#}</span><span class="pointer"></span></a></li>{/if}
        <li {if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments" || $pagename eq "advancedsearch" || $pagename eq "cloud" || $pagename eq "topusers"}class="active"{/if}><a class="fadeThis js-link"><span class="title">More...</span><span class="pointer"></span></a>
          <ul>
           {checkActionsTpl location="tpl_pligg_navbar_start"}
           {if isset($isgod) && $isgod eq 1}<li><a class="fadeThis" href="{$URL_admin}"><span class="title">{#PLIGG_Visual_Header_AdminPanel#}</span><span class="pointer"></span></a></li>{/if}
           <li {if $pagename eq "topusers"}class="active"{/if}><a href='{$URL_topusers}' class="fadeThis"><span>{#PLIGG_Visual_Top_Users#}</span></a></li>
           {if $Enable_Live}<li {if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}class="active"{/if}><a href='{$URL_live}' class="fadeThis"><span>{#PLIGG_Visual_Live#}</span></a></li>{/if}
           {if $Enable_Tags}<li {if $pagename eq "cloud"}class="active"{/if}><a class="fadeThis" href="{$URL_tagcloud}"><span>{#PLIGG_Visual_Search_Tags#}</span></a></li>{/if}
           <li {if $pagename eq "advancedsearch"}class="active"{/if}><a class="fadeThis" href="{$URL_advancedsearch}"><span>{#PLIGG_Visual_Search_Advanced#}</span></a></li>
           {checkActionsTpl location="tpl_pligg_navbar_end"}
          </ul>
        </li>


   </ul>
  </div>
 </div>
</div>
<!-- /header -->
