{checkActionsTpl location="tpl_pligg_story_start"}
<div class="post" id="xnews-{$link_shakebox_index}">

 <h2 class="title">
  {checkActionsTpl location="tpl_pligg_story_title_start"}
  {if $use_title_as_link eq true}
   {if $url_short neq "http://" && $url_short neq "://"}
     <a href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if} {if $story_status neq "published"}rel="nofollow"{/if}>{$title_short}</a>
   {else}
     <a href="{$story_url}" {if $open_in_new_window eq true} target="_blank"{/if}>{$title_short}</a>
   {/if}
  {else}
   {if $pagename eq "story" && $url_short neq "http://" && $url_short neq "://"}
     <a href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if} {if $story_status neq "published"}rel="nofollow"{/if}>{$title_short}</a>
   {else}
     <a href="{$story_url}">{$title_short}</a>
   {/if}
  {/if}
  {checkActionsTpl location="tpl_pligg_story_title_end"}
 </h2>

 <div class="post-date">
  <p>{$link_submit_timeago} {#PLIGG_Visual_Comment_Ago#}</p>
 </div>

 <div class="post-info clearfix">
  <p class="author alignleft">

	Posted in <a href="{$category_url}">{$link_category}</a> by
				{* {if $UseAvatars neq "0"}<span id="ls_avatar-{$link_shakebox_index}"><img src="{$Avatar_ImgSrc}" alt="Avatar" /></span>{/if} *}
				<a href="{$submitter_profile_url}">{$link_submitter}</a>

	{* if $url_short neq "http://" && $url_short neq "://"}
	 (<a href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if}  {if $story_status neq "published"}rel="nofollow"{/if}>{$url_short}</a>)
	 {else}
	  ({$No_URL_Name})
	{/if *}


  </p>
  <div class="votes alignright">
    <span class="votenumber" id="xvotes-{$link_shakebox_index}">{$link_shakebox_votes}</span>

	{if $Voting_Method eq 1}
    <div class="vote-box" id="xvote-{$link_shakebox_index}">
    {if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}
    	<a href="javascript:{$link_shakebox_javascript_vote}" class="vote up"><span>{#PLIGG_Visual_Vote_For_It#}</span></a>
    	{if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}

    	  <a  id="xreport-{$link_shakebox_index}" href="javascript:{$link_shakebox_javascript_report}" class="vote down"><span>{#PLIGG_Visual_Vote_Bury#}</span></a>
    	{/if}
    {* else // disabled voted buttons }
    	<span class="voted up"><span>{#PLIGG_Visual_Vote_For_It#}</span></span>
    	<span class="voted down"><span>{#PLIGG_Visual_Vote_Bury#}</span></span> *}
    {/if}
    </div>
	{/if}


	{if $Voting_Method eq 2}
    <div class="star-rating-box">

       <ul class='star-rating{$star_class}' id="xvotes-{$link_shakebox_index}">
        <li class="current-rating" style="width: {$link_rating_width}px;" id="xvote-{$link_shakebox_index}"></li>
        <span id="mnmc-{$link_shakebox_index}" {if $link_shakebox_currentuser_votes ne 0}style="display: none;"{/if}>
         <li><a href="javascript:{$link_shakebox_javascript_vote_1star}" class='one-star'>1</a></li>
         <li><a href="javascript:{$link_shakebox_javascript_vote_2star}" class='two-stars'>2</a></li>
         <li><a href="javascript:{$link_shakebox_javascript_vote_3star}" class='three-stars'>3</a></li>
         <li><a href="javascript:{$link_shakebox_javascript_vote_4star}" class='four-stars'>4</a></li>
         <li><a href="javascript:{$link_shakebox_javascript_vote_5star}" class='five-stars'>5</a></li>
        </span>
        <span id="mnmd-{$link_shakebox_index}" {if $link_shakebox_currentuser_votes eq 0}style="display: none;"{/if}>
         <li class='one-star-noh'>1</li>
         <li class='two-stars-noh'>2</li>
         <li class='three-stars-noh'>3</li>
         <li class='four-stars-noh'>4</li>
         <li class='five-stars-noh'>5</li>
       </span>
       </ul>
    </div>

	{/if}



  </div>

 </div>

 <div class="post-content clearfix">
  {checkActionsTpl location="tpl_link_summary_pre_story_content"}
  {if $pagename eq "story"}{checkActionsTpl location="tpl_pligg_story_body_start_full"}{else}{checkActionsTpl location="tpl_pligg_story_body_start"}{/if}

  {if $viewtype neq "short"}
    {if $show_content neq 'FALSE'} {$story_content} {/if}
    {if $Enable_Extra_Field_1 eq 1}{if $link_field1 neq ""}<br/><b>{$Field_1_Title}:</b> {$link_field1}{/if}{/if}
    {if $Enable_Extra_Field_2 eq 1}{if $link_field2 neq ""}<br/><b>{$Field_2_Title}:</b> {$link_field2}{/if}{/if}
    {if $Enable_Extra_Field_3 eq 1}{if $link_field3 neq ""}<br/><b>{$Field_3_Title}:</b> {$link_field3}{/if}{/if}
    {if $Enable_Extra_Field_4 eq 1}{if $link_field4 neq ""}<br/><b>{$Field_4_Title}:</b> {$link_field4}{/if}{/if}
    {if $Enable_Extra_Field_5 eq 1}{if $link_field5 neq ""}<br/><b>{$Field_5_Title}:</b> {$link_field5}{/if}{/if}
    {if $Enable_Extra_Field_6 eq 1}{if $link_field6 neq ""}<br/><b>{$Field_6_Title}:</b> {$link_field6}{/if}{/if}
    {if $Enable_Extra_Field_7 eq 1}{if $link_field7 neq ""}<br/><b>{$Field_7_Title}:</b> {$link_field7}{/if}{/if}
    {if $Enable_Extra_Field_8 eq 1}{if $link_field8 neq ""}<br/><b>{$Field_8_Title}:</b> {$link_field8}{/if}{/if}
    {if $Enable_Extra_Field_9 eq 1}{if $link_field9 neq ""}<br/><b>{$Field_9_Title}:</b> {$link_field9}{/if}{/if}
    {if $Enable_Extra_Field_10 eq 1}{if $link_field10 neq ""}<br/><b>{$Field_10_Title}:</b> {$link_field10}{/if}{/if}
    {if $Enable_Extra_Field_11 eq 1}{if $link_field11 neq ""}<br/><b>{$Field_11_Title}:</b> {$link_field11}{/if}{/if}
    {if $Enable_Extra_Field_12 eq 1}{if $link_field12 neq ""}<br/><b>{$Field_12_Title}:</b> {$link_field12}{/if}{/if}
    {if $Enable_Extra_Field_13 eq 1}{if $link_field13 neq ""}<br/><b>{$Field_13_Title}:</b> {$link_field13}{/if}{/if}
    {if $Enable_Extra_Field_14 eq 1}{if $link_field14 neq ""}<br/><b>{$Field_14_Title}:</b> {$link_field14}{/if}{/if}
    {if $Enable_Extra_Field_15 eq 1}{if $link_field15 neq ""}<br/><b>{$Field_15_Title}:</b> {$link_field15}{/if}{/if}

    {if $pagename neq "story" && $pagename neq "submit"} <a href="{$story_url}">&raquo;{#PLIGG_Visual_Read_More#}</a>{/if}

    {checkActionsTpl location="tpl_pligg_story_body_end"}
  {/if}

 </div>

 <div class="controls clearfix">

  <div class="alignleft">
  {if $story_comment_count eq 0}<a href="{$story_url}#discuss" class="no comments">{#PLIGG_MiscWords_Discuss#}</a>{/if}
  {if $story_comment_count eq 1}<a href="{$story_url}#comments" class="comments">{$story_comment_count} {#PLIGG_MiscWords_Comment#}</a>{/if}
  {if $story_comment_count gt 1}<a href="{$story_url}#comments" class="comments">{$story_comment_count} {#PLIGG_MiscWords_Comments#}</a>{/if}
  {if $enable_tags && $tags}
  <span class="post-tags"> Tags: {section name=thistag loop=$tag_array} {if $tag_array[thistag] neq ''} <a href="{$tags_url_array[thistag]}">{$tag_array[thistag]}</a>{/if} {/section}</span>
  {/if}
  </div> 

  {checkActionsTpl location="tpl_pligg_story_tools_start"}

  {if $isadmin || $user_logged_in eq $link_submitter}
  <div class="tool bubble-trigger">
  <a class="js-link block">Edit</a>

  <span id="story_status_success-{$link_shakebox_index}" style="display:none;"> &raquo; {#PLIGG_MiscWords_Save_Links_Success#}</span>

  <div class="bubble" style="width:200px;">

    {if $isadmin}
    <a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a><br />
    <a href="{$story_admin_url}">Change status</a><br />
    <a href="{$my_pligg_base}/delete.php?link_id={$link_id}">{#PLIGG_Visual_AdminPanel_Discard#}</a><br />


    {if $link_group_id neq 0}
     <br />
     <a target="story_status" href="{$group_story_links_publish}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">Group status: {#PLIGG_Visual_AdminPanel_Published#}</a><br />
     <a target="story_status" href="{$group_story_links_queued}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">Group status: {#PLIGG_Visual_AdminPanel_Upcoming#}</a><br />
     <a target="story_status" href="{$group_story_links_discard}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">Group status: {#PLIGG_Visual_AdminPanel_Discard#}</a><br />
     <iframe height="0px;" width="0px;" frameborder="0" name="story_status"></iframe><br />
    {/if}

    <a href="{$my_base_url}{$my_pligg_base}/admin/admin_users.php?mode=view&user={$link_submitter}">{#PLIGG_Visual_AdminPanel_Manage_Nav#} {$link_submitter}</a><br />
    {checkActionsTpl location="tpl_link_summary_admin_links"}
	{else} {if $user_logged_in eq $link_submitter} <a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a><br />{/if}
    {/if}
  </div>
  </div>
  {/if}

   <!-- socialize -->
   <div class="tool shareThis">
    <a class="js-link block">Share this post!</a>
    <ul class="bubble">
     <a href="http://twitter.com/home?status={$title_short}+-+{php}$url = 'http://tinyurl.com/api-create.php?url='.$this->get_template_vars('my_base_url').$this->get_template_vars('story_url');  if(function_exists('curl_init')): $ch = curl_init(); curl_setopt ($ch, CURLOPT_URL, $url); curl_setopt ($ch, CURLOPT_HEADER, 0); curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); $url = curl_exec ($ch); curl_close ($ch); echo $url; endif;{/php}" class="twitter" title="Tweet This!"><span>Twitter</span></a>
     <a href="http://digg.com/submit?phase=2&amp;url={$my_base_url}{$story_url}&amp;title={$title_short}" class="digg" title="Digg this!"><span>Digg</span></a>
     <a href="http://www.facebook.com/share.php?u={$my_base_url}{$story_url}&amp;t={$title_short}" class="facebook" title="Share this on Facebook"><span>Facebook</span></a>
     <a href="http://del.icio.us/post?url={$my_base_url}{$story_url}&amp;title={$title_short}" class="delicious" title="Share this on del.icio.us"><span>Delicious</span></a>
     <a href="http://www.stumbleupon.com/submit?url={$my_base_url}{$story_url}&amp;title={$title_short}" class="stumbleupon" title="Stumbled upon something good? Share it on StumbleUpon"><span>StumbleUpon</span></a>
     <a href="http://www.google.com/bookmarks/mark?op=add&amp;bkmk={$my_base_url}{$story_url}&amp;title={$title_short}" class="google" title="Add this to Google Bookmarks"><span>Google Bookmarks</span></a>
     <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url={$my_base_url}{$story_url}&amp;title={$title_short}&amp;summary=&amp;source={#PLIGG_Visual_Name#}" class="linkedin" title="Share this on Linkedin"><span>LinkedIn</span></a>
     <a href="http://technorati.com/faves?add={$my_base_url}{$story_url}" class="technorati" title="Share this on Technorati"><span>Technorati Favorites</span></a>
    </ul>
   </div>
   <!-- /socialize -->

  {if $Enable_Recommend && $user_logged_in}
  <div class="tool">
  <a class="js-link block" onclick="show_recommend({$link_shakebox_index}, {$link_id}, '{$instpath}');">{#PLIGG_Visual_Recommend_Link_Text#}</a>

  {if $Enable_Recommend eq 1 && $Recommend_Type eq 1}
     <div id="emailto-{$link_shakebox_index}" style="display:none"></div>
  {/if}
  </div>
  {/if}

  {if $enable_group eq "true" && $user_logged_in}
  <div class="tool bubble-trigger">
  <a class="js-link block" onclick="{if $get_group_membered}var replydisplay=document.getElementById('group_share-{$link_shakebox_index}').style.display ? '' : 'none';document.getElementById('group_share-{$link_shakebox_index}').style.display = replydisplay;{else}alert('{#PLIGG_Visual_No_Groups#}');{/if}">{#PLIGG_Visual_Group_Share#}</a>
  <div class="bubble" id="group_share-{$link_shakebox_index}">
    {$get_group_membered}
  </div>
  </div>
  {/if}

  {if $user_logged_in}
  <div class="tool">
  <iframe height="0px;" width="0px;" frameborder="0" name="add_stories"></iframe>
  {if $link_mine eq 0}
  <a class="js-link block" target="add_stories" href="{$user_url_add_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Save#}</a>
  {else}
  <a target="add_stories" class="js-link block" href="{$user_url_remove_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Remove#}</a>
  {/if}
  <span id="stories-{$link_shakebox_index}" style="display:none;"> &raquo; {#PLIGG_MiscWords_Save_Links_Success#} <a href="{$user_url_saved}">{#PLIGG_MiscWords_Save_Links_Go_To_Saved#}</a></span>

  </div>
  {/if}

  {checkActionsTpl location="tpl_pligg_story_tools_end"}

 </div>

 {checkActionsTpl location="tpl_link_summary_end"}

</div>
{checkActionsTpl location="tpl_pligg_story_end"}

