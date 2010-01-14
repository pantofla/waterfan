<div id="topnav" class="description">
 <ul>
  <li class="first"><a href="{$my_base_url}{$my_pligg_base}"><span>{#PLIGG_Visual_Home#}</span></a></li>
  {checkActionsTpl location="tpl_pligg_navbar_start"}
  <li><a href="{$URL_topusers}"><span>{#PLIGG_Visual_Top_Users#}</span></a></li>
  {if $enable_group eq "true"}
  <li {if $pagename eq "groups"}class="active"{/if}><a href="{$URL_groups}"><span>{#PLIGG_Visual_Groups#}</span></a></li>
  {/if}  
  {if $Enable_Tags}<li><a href="{$URL_tagcloud}"><span>{#PLIGG_Visual_Tags#}</span></a></li>{/if}
  {if $Enable_Live}<li><a href="{$URL_live}"><span>{#PLIGG_Visual_Live#}</span></a></li>{/if}

  {if isset($isgod) && $isgod eq 1}<li><a href="{$URL_admin}"><span>{#PLIGG_Visual_Header_AdminPanel#}</span></a></li>{/if}

  {checkActionsTpl location="tpl_pligg_navbar_end"}
 </ul>
</div>

<h1 id="title"><a href="{$my_base_url}{$my_pligg_base}">{#PLIGG_Visual_Name#}</a></h1>

<!-- top tab navigation -->
<div id="tabs">
 <ul>
  <li {if $pagename eq "published" || $pagename eq "index"}class="active"{/if}><a href='{$my_base_url}{$URL_base}'><span><span>{#PLIGG_Visual_Published_News#}</span></span></a></li>
  <li {if $pagename eq "upcoming"}class="active"{/if}><a href="{$URL_upcoming}"><span><span>{#PLIGG_Visual_Pligg_Queued#}</span></span></a></li>
  <li {if $pagename eq "submit"}class="active"{/if}><a href="{$URL_submit}"><span><span>{#PLIGG_Visual_Submit_A_New_Story#}</span></span></a></li>
 </ul>
</div>
<!-- /top tabs -->

