    <div id="sidebar">
     <ul class="sidebar-blocks">

      <!-- search form -->
      <li class="block">
      <div class="search-form">
		{if isset($templatelite.get.search)}
			{assign var=searchboxtext value=$templatelite.get.search|sanitize:2}
		{else}
			{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
		{/if}
        <form method="get" id="search-form" action="{$my_pligg_base}/search.php" {php}
			global $URLMethod, $my_base_url, $my_pligg_base;
			if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/search/\"+this.search.value; return false;'";
			{/php}>
          <fieldset>
            <div id="searchfield">
             <input type="text" name="search" id="searchbox" class="text clearField" value="{$searchboxtext}" />
            </div>
            <input type="submit" value="" class="submit" />
           </fieldset>
          <div class="clear"></div>
       </form>
      </div>
      </li>
      <!-- /search form -->

      <li class="block">
       <!-- tabbed content -->
      <div class="tabbed-content sidebar-tabs" id="sidebar-tabs">

       <!-- tab navigation (items must be in reverse order because of the tab-design) -->
       <ul class="box-tabs">
          <li class="recentcomm"><a href="#section-recentcomments"><span>Recent comments</span></a></li>
          {if $Enable_Tags}<li class="tags"><a href="#section-tags"><span>{#PLIGG_Visual_Top_5_Tags#}</span></a></li>{/if}
          <li class="popular"><a href="#section-popular"><span>Popular news</span></a></li>
          <li class="categories"><a href="#section-categories"><span>Categories</span></a></li>
       </ul>
       <div class="clear"></div>
       <!-- /tab nav -->

       <!-- tab sections -->
       <div class="sections">

        <!-- categories -->
        <div class="box section" id="section-categories">
          <div class="box-top-left"><div class="box-top-right"></div></div>
          <div class="box-main">
           <div class="box-content">
           	<ul class="menuList categories">
              {checkActionsTpl location="tpl_widget_categories_start"}
		      {section name=thecat loop=$cat_array start=$start}
              {if $lastspacer eq ""} {assign var=lastspacer value=$cat_array[thecat].spacercount} {/if}
              {if $cat_array[thecat].spacercount lt $lastspacer}{$cat_array[thecat].spacerdiff|repeat_count:'</ul></li>'}{/if}
			  <li class="cat-item"><a class="fadeThis" href="{if $pagename eq "upcoming" || $groupview eq "upcoming"}{$URL_queuedcategory, $cat_array[thecat].safename}{else}{$URL_maincategory, $cat_array[thecat].safename}{/if}{php}global $URLMethod;if ($URLMethod==2) print "/";{/php}"><span class="entry">{$cat_array[thecat].name}</span></a><a class="rss bubble" href="{$URL_rsscategory, $cat_array[thecat].auto_id}"></a>
			  {if $cat_array[thecat].principlecat eq 0}</li>{else}<ul class="subnav">{/if}
			  {assign var=lastspacer value=$cat_array[thecat].spacercount}
		     {/section}
             {checkActionsTpl location="tpl_widget_categories_end"}
       	    </ul>
           </div>
          </div>
        </div>
        <!-- categories -->

        {if $Enable_Tags}
        <!-- tags -->
        <div class="box section" id="section-tags">
          <div class="box-top-left"><div class="box-top-right"></div></div>
          <div class="box-main">
           <div class="box-content clearfix">

            {php}
            include_once(mnminclude.'tags.php');
            global $main_smarty;

            $cloud=new TagCloud();
            $cloud->smarty_variable = $main_smarty; // pass smarty to the function so we can set some variables
            $cloud->word_limit = tags_words_limit_s;
            $cloud->min_points = tags_min_pts_s; // the size of the smallest tag
            $cloud->max_points = tags_max_pts_s; // the size of the largest tag

            $cloud->show();
            $main_smarty = $cloud->smarty_variable; // get the updated smarty back from the function
            {/php}

            {checkActionsTpl location="tpl_widget_tags_start"}

            <div class="tag-cloud">
            {section name=customer loop=$tag_number}

            <span style="font-size: {$tag_size[customer]}pt">
            	<a href="{$tag_url[customer]}">{$tag_name[customer]}</a>
            </span>

            {/section}
            </div>
            <a class="alignright" href="{$URL_tagcloud}">See All...</a>

            {checkActionsTpl location="tpl_widget_tags_end"}

           </div>
          </div>
        </div>
        <!-- tags -->
        {/if}


        <!-- recent comments -->
        <div class="box section" id="section-recentcomments">
          <div class="box-top-left"><div class="box-top-right"></div></div>
          <div class="box-main">
           <div class="box-content">
             {checkActionsTpl location="tpl_pligg_sidebar_comments"}
           </div>
          </div>
        </div>
        <!-- recent comments -->

        <!-- popular news -->
        <div class="box section" id="section-popular">
          <div class="box-top-left"><div class="box-top-right"></div></div>
          <div class="box-main">
           <div class="box-content">
             {checkActionsTpl location="tpl_pligg_sidebar_stories"}
           </div>
          </div>
        </div>
        <!-- popular news -->


       </div>
       <!-- /tab sections -->

      </div>
      <!-- /tabbed content -->
      </li>



      {if $user_authenticated ne true && $pagename neq "login"}
      <li class="block">
      <div class="block-login">
       <h3 class="title"><span><a href="{$URL_login}">{#PLIGG_Visual_Login_Title#}</a></span></h3>
       <div class="block-div"></div><div class="block-div-arrow"></div>
       <div style="padding: 0 1em;">
       {checkActionsTpl location="tpl_widget_login_start"}
       <form action="{$URL_login}" method="post">
	    <label>{#PLIGG_Visual_Login_Username#}:</label>
        <input type="text" name="username" size="30" value="{if isset($login_username)}{$login_username}{/if}" tabindex="1" /><br />
        <label>{#PLIGG_Visual_Login_Password#}:</label>
        <input type="password" name="password" size="30" tabindex="2" /><br />
        <input type="hidden" name="processlogin" value="1"/>
        <input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
        {#PLIGG_Visual_Login_Remember#}: <input type="checkbox" name="persistent" tabindex="3" />
        <br />
        <input type="submit" value="{#PLIGG_Visual_Login_LoginButton#}" class="submit" tabindex="4" />
       </form>
       {checkActionsTpl location="tpl_widget_login_end"}
       </div>
      </div>
      </li>
      {/if}

      {if $pagename eq "index" && $user_authenticated neq true}
      <li class="block">
      <div class="block-about">
       <h3 class="title"><span><a href="{$my_pligg_base}/page.php?page=about">{#PLIGG_Visual_What_Is_Pligg#}</a></span></h3>
       <div class="block-div"></div><div class="block-div-arrow"></div>
        {checkActionsTpl location="tpl_widget_about_start"}
        {#PLIGG_Visual_What_Is_Pligg_Text#}
        {checkActionsTpl location="tpl_widget_about_end"}
       </div>
      </li>
      {/if}

      <li class="block">
      <div class="block-twitter" id="block-twitter">
      <h3 class="title"><span>Latest Tweets</span></h3>
      <div class="block-div"></div><div class="block-div-arrow"></div>
      {literal}
      <script type="text/javascript">
      /* <![CDATA[ */
      twitter_username = 'pligg';

      jQuery(document).ready(function () {
       jQuery('#block-twitter .latestTweets').getTwitter({
        username: twitter_username,
        count: 5,
        loading_text: 'Loading twitts...'
       });

       jQuery.jTwitter('pligg', function (userdata) {
        jQuery('#block-twitter div.avatar').prepend('<a href="http://www.twitter.com/'+twitter_username+'"><img src="' + userdata.profile_image_url + '" /></a>');
        jQuery('#block-twitter div.info').prepend('<a href="http://www.twitter.com/'+twitter_username+'">' + userdata.name + '</a><br /><span class="followers">' + userdata.followers_count + ' followers<span>');
       });
      });
      /* ]]> */
      </script>
      {/literal}
      <div class="clearfix">
       <div class="avatar"></div>
       <div class="info"></div>
      </div>
      <div class="latestTweets"></div>

      <a class="followMe" href="http://www.twitter.com/Pligg"><span>Follow me on Twitter!</span></a>

        </div>
      </li>

      <li class="block">
        {checkActionsTpl location="tpl_pligg_sidebar_start"}
        {checkActionsTpl location="tpl_pligg_sidebar_middle"}

        {checkActionsTpl location="tpl_pligg_sidebar_end"}
        {checkActionsTpl location="tpl_pligg_sidebar2_start"}
        {checkActionsTpl location="tpl_pligg_sidebar2_end"}
      </li>


     </ul>
    </div>
