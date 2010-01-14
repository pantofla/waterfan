<div class="story" id="xnews-{$link_shakebox_index}" {if $link_shakebox_currentuser_reports gt 0} style="opacity:0.3;filter:alpha(opacity = 30)"{/if}>
{checkActionsTpl location="tpl_pligg_story_start"}
	{if $Voting_Method eq 1}

			{if $story_status eq "published"}
			<div class="vote published">
			{else}
			<div class="vote upcoming">
			{/if}

				{checkActionsTpl location="tpl_pligg_story_votebox_start"}
					<span class="votenumber">
						<a id="xvotes-{$link_shakebox_index}" href="javascript:{$link_shakebox_javascript_vote}">{$link_shakebox_votes}</a>
					</span><br />
					<span class="subtext" id="xvote-{$link_shakebox_index}">
						{if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}
							<a href="javascript:{$link_shakebox_javascript_vote}">{#PLIGG_Visual_Vote_For_It#}</a>
						{else}
							{if $link_shakebox_currentuser_reports neq 0}
								<span>{#PLIGG_Visual_Vote_Report#}</span>
							{else}
								{if $pagename eq "user" && $user_logged_in neq $link_submitter}
									<a href="javascript:{$link_shakebox_javascript_unvote}">{#PLIGG_Visual_Unvote_For_It#}</a>
								{else}
									<span>{#PLIGG_Visual_Vote_Cast#}</span>
								{/if}
							{/if}
						{/if}
					</span>
				{checkActionsTpl location="tpl_pligg_story_votebox_end"}

			</div>



	{/if}	

	{if $Voting_Method eq 2}

		<h4 id="ls_title-{$link_shakebox_index}">
			<ul class='star-rating{$star_class}' id="xvotes-{$link_shakebox_index}">
				<li class="current-rating" style="width: {$link_rating_width}px;" id="xvote-{$link_shakebox_index}"></li>
				<span id="mnmc-{$link_shakebox_index}">
					{if $link_shakebox_currentuser_votes eq 0}
						<li><a href="javascript:{$link_shakebox_javascript_vote_1star}" class='one-star'>1</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_2star}" class='two-stars'>2</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_3star}" class='three-stars'>3</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_4star}" class='four-stars'>4</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_5star}" class='five-stars'>5</a></li>
					{else}
						<li class='one-star-noh'>1</li>
						<li class='two-stars-noh'>2</li>
						<li class='three-stars-noh'>3</li>
						<li class='four-stars-noh'>4</li>
						<li class='five-stars-noh'>5</li>
					{/if}
				</span>
			</ul>
		</h4>
	{/if}



<!-- story header -->
<div class="postheader" id="h-{$link_shakebox_index}">
  <p class="storycategory">
    <a href="{$category_url}" class="category">{$link_category}</a>
    {if $enable_tags}
     {if $tags ne ''}
       <span class="tags">
        {section name=thistag loop=$tag_array}<a href="{$tags_url_array[thistag]}" class="tag">{$tag_array[thistag]}</a>{/section}
       </span>
     {/if}
    {/if}
  </p>

  <h2>
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

  <div class="postinfo">
   <p>
    {#PLIGG_Visual_LS_Posted_By#}
	{* {if $UseAvatars neq "0"}<span id="ls_avatar-{$link_shakebox_index}"><img src="{$Avatar_ImgSrc}" alt="Avatar" /></span>{/if} *}

    <a href="{$submitter_profile_url}">{$link_submitter}</a> {$link_submit_timeago} {#PLIGG_Visual_Comment_Ago#}

	{if $url_short neq "http://" && $url_short neq "://"}
	<a class="link with-tooltip" title="<img src='http://images.websnapr.com/?size=s&amp;url={$url_short}' />" href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if} {if $story_status neq "published"}rel="nofollow"{/if}>&nbsp;<span>{$url_short}</span></a>
	{else}
	({$No_URL_Name})
	{/if}

    {if $link_group_id eq 0}
	 {if $isadmin eq "yes" || $user_logged_in eq $link_submitter}
	  <span class="tiptrigger adminlinks">
       |
       <a href="javascript://">{#PLIGG_Visual_Admin_Links#}</a>
       <span class="tip">
	   {if $isadmin eq "yes"}
        <a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a><br />
		<a href="{$story_admin_url}">{#PLIGG_Visual_LS_Admin_Status#}</a><br />
        <a href="{$my_base_url}{$my_pligg_base}/admin/admin_users.php?mode=view&user={$link_submitter}">{#PLIGG_Visual_AdminPanel_Manage_Nav#} {$link_submitter}</a>
		{checkActionsTpl location="tpl_link_summary_admin_links"}
       {else}
	    {if $user_logged_in eq $link_submitter}
	   	<a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a>
	    {/if}
	   {/if}
	   </span>
      </span>
	 {/if}
     {if $isadmin eq "yes"}
	  | <a href="{$my_pligg_base}/delete.php?link_id={$link_id}">{#PLIGG_Visual_AdminPanel_Discard#}</a>
	 {/if}
	{/if}


    {if $link_group_id neq 0}
     {if $isadmin eq "yes" || $user_logged_in eq $link_submitter}
      <iframe height="0px;" width="0px;" frameborder="0" name="story_status"></iframe>
      <span class="tiptrigger storystatus">
       |
       <a  target="story_status" href="javascript://" onclick="show_hide_user_links(document.getElementById('stories_status-{$link_shakebox_index}'));">{#PLIGG_Visual_Group_Story_Status#}</a>
       <span class="tip">
          <a target="story_status" href="{$group_story_links_publish}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Published#}</a> |
    	<a target="story_status" href="{$group_story_links_queued}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Upcoming#}</a> |
    	<a target="story_status" href="{$group_story_links_discard}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Discard#}</a>
       </span>
      </span>

      <span id="story_status_success-{$link_shakebox_index}" style="display:none;" class="success">
    	&raquo; {#PLIGG_MiscWords_Save_Links_Success#}
      </span>
     {/if}
    {/if}
</p>

</div>

</div>


<!-- /story header -->
<!-- story summary -->
<div class="postbody clearfix">
		{checkActionsTpl location="tpl_link_summary_pre_story_content"}
		{if $pagename eq "story"}{checkActionsTpl location="tpl_pligg_story_body_start_full"}{else}{checkActionsTpl location="tpl_pligg_story_body_start"}{/if}

		{if $viewtype neq "short"}
					{if $show_content neq 'FALSE'}
						{$story_content}
					{/if}

                    {if $pagename neq "story" && $pagename neq "submit"} <a href="{$story_url}">{#PLIGG_Visual_Read_More#}</a>{/if}

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

			{checkActionsTpl location="tpl_pligg_story_body_end"}
		{/if}


</div>
<!-- /story summary -->

<!-- links -->
<p class="postcontrols">
 {checkActionsTpl location="tpl_pligg_story_tools_start"}
 {if $story_comment_count eq 0}
  <a href="{$story_url}#discuss" class="no comments">{#PLIGG_MiscWords_Discuss#}</a>
 {/if}
 {if $story_comment_count eq 1}
  <a href="{$story_url}#comments" class="comments">{$story_comment_count} {#PLIGG_MiscWords_Comment#}</a>
 {/if}
 {if $story_comment_count gt 1}
  <a href="{$story_url}#comments" class="comments">{$story_comment_count} {#PLIGG_MiscWords_Comments#}</a>
 {/if}


 {if $user_logged_in neq "" && $user_logged_in neq $link_submitter}
 |
 <iframe height="0px;" width="0px;" frameborder="0" name="add_stories"></iframe>
 {if $link_mine eq 0}
  <a target="add_stories" href="{$user_url_add_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Save#}</a>
 {else}
  <a target="add_stories" href="{$user_url_remove_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Remove#}</a>
 {/if}
  <span id="stories-{$link_shakebox_index}" style="display:none;"> &raquo; {#PLIGG_MiscWords_Save_Links_Success#} <a href="{$user_url_saved}">{#PLIGG_MiscWords_Save_Links_Go_To_Saved#}</a></span>
 {/if}
		
 {if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}
 |
 <a href="javascript:{$link_shakebox_javascript_report}">{#PLIGG_Visual_Vote_Bury#}</a>
 {/if}

 {if $Enable_Recommend eq 1 && $user_logged_in neq ""}
 |
 <a href="javascript://" onclick="show_recommend({$link_shakebox_index}, {$link_id}, '{$instpath}');"> {#PLIGG_Visual_Recommend_Link_Text#}</a>
 {/if}

 {if $enable_group eq "true"}
 {if $user_logged_in neq ""}
  <span class="tiptrigger groupshare">
  |
  <a href="javascript://" onclick="{if $get_group_membered}var replydisplay=document.getElementById('group_share-{$link_shakebox_index}').style.display ? '' : 'none';document.getElementById('group_share-{$link_shakebox_index}').style.display = replydisplay;{else}alert('{#PLIGG_Visual_No_Groups#}');{/if}">{#PLIGG_Visual_Group_Share#}</a>

   <span class="tip">
     {$get_group_membered}
   </span>
 </span>
 {/if}
 {/if}

 {if $Enable_Recommend eq 1}
  {if $Recommend_Type eq 1}
  	<span id="emailto-{$link_shakebox_index}" style="display:none"></span>
  {/if}
 {/if}
 {checkActionsTpl location="tpl_pligg_story_tools_end"}
</p>

{checkActionsTpl location="tpl_link_summary_end"}
</div>
{checkActionsTpl location="tpl_pligg_story_end"}
