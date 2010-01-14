 <!-- sidebar 1st container -->
 <div id="sidebar-wrap1">
  <!-- sidebar 2nd container -->
  <div id="sidebar-wrap2">
     <ul id="sidelist">

        {checkActionsTpl location="tpl_pligg_sidebar_start"}

        <li id="sidebar-toplinks">
         {if $user_authenticated eq true}{#PLIGG_Visual_Welcome_Back#} <a href="{$URL_userNoVar}">{$user_logged_in}</a> | <a href="{$URL_logout}"> {#PLIGG_Visual_Logout#}</a>{/if}
         {if $user_authenticated neq true}<a href='{$URL_register}'>{#PLIGG_Visual_Register#}</a> | <a href='{$URL_login}'>{#PLIGG_Visual_Login_Title#}</a>{/if}
        </li>

       <li id="sidebar-search">
        <div id="searchtab">
          <div class="inside">


        	{if isset($templatelite.get.search)}
        		{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
        	{else}
        		{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
        	{/if}

        	{if $SearchMethod eq 4}
        		<!-- Start SiteSearch Google -->
        		<form method="get" id="searchform" action="{$my_base_url}{$my_pligg_base}/search.php" target="_top">
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


                <form action="{$my_pligg_base}/search.php" method="get" name="thisform-search" id="thisform-search"
        {php}
        global $URLMethod, $my_base_url, $my_pligg_base;
        if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/search/\"+encodeURIComponent(this.search.value); return false;'";
        {/php}
        >

        <input type="text" size="20" class="searchfield" name="search" id="searchsite" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}"/>
        <input type="submit" value="{#PLIGG_Visual_Search_Go#}" class="searchbutton" />
                </form>

        		<div class="clear"></div>
        	{/if}


          </div>
        </div>
       </li>


{assign var=sidebar_module value="categories"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}


{assign var=sidebar_module value="about_box"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}

{if $pagename neq "login" && $user_authenticated ne true}
  {assign var=sidebar_module value="login"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
{/if}


        {checkActionsTpl location="tpl_pligg_sidebar_middle"}



{checkActionsTpl location="tpl_pligg_sidebar_stories_u"}
{checkActionsTpl location="tpl_pligg_sidebar_stories"}
{checkActionsTpl location="tpl_pligg_sidebar_comments"}

{if $Enable_Tags} {assign var=sidebar_module value="tags"}{include file=$the_template_sidebar_modules."/wrapper.tpl"} {/if}



        {checkActionsTpl location="tpl_pligg_sidebar_end"}


     </ul>
  </div>
  <!-- /sidebar 2nd container -->
 </div>
 <!-- /sidebar 1st container -->









