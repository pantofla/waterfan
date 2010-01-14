<div class="clearfix">
 <h1 class="title alignright withrss">{$page_header}<a class="rss" href="{$user_rss, $view_href}" target="_blank"><span>User RSS Feed</span></a></h1>
</div>
{include file=$the_template."/sort.tpl"}

{checkActionsTpl location="tpl_pligg_profile_start"}
{checkActionsTpl location="tpl_user_center_just_below_header"}


{if $user_view eq 'search'}
 {if $Allow_Friends neq "0"}
  <div class="clearfix">
    <div class="alignleft" style="width: 65%;">
		{if $user_login neq $user_logged_in}
	  			{if $is_friend gt 0}
					<p><a class="profile-link" href="{$user_url_remove}">{#PLIGG_Visual_User_Profile_Remove_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Remove_Friend_2#}</a></p>
		   			{if $user_authenticated eq true}
						{checkActionsTpl location="tpl_user_center"}
					{/if}
				{else}

	   				{if $user_authenticated eq true}
						<p><a class="profile-link" href="{$user_url_add}">	{#PLIGG_Visual_User_Profile_Add_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Add_Friend_2#}</a></p>
				    {/if}
				{/if}
			{else}
				<p><a class="profile-link" href="{$user_url_friends}">{#PLIGG_Visual_User_Profile_View_Friends#}</a></p>
				<p><a class="profile-link" href="{$user_url_friends2}">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a></p>
			{/if}
    </div>

	<div class="alignright" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>

	</div>
  </div>
  {/if}



	<h4>{#PLIGG_Visual_Search_SearchResults#} <span class="altText">{$search}</span></h4>

	<table cellpadding="1" border="0">
		<tr><th>{#PLIGG_Visual_Login_Username#}</th><th>{#PLIGG_Visual_User_Profile_Joined#}</th><th>{#PLIGG_Visual_User_Profile_Homepage#}</th><th>Add/Remove</th></tr>
		{section name=nr loop=$userlist}
			<tr>
			<td width="240px"><img src="{$userlist[nr].Avatar}" align="absmiddle"/> <a href = "{$URL_user, $userlist[nr].user_login}">{$userlist[nr].user_login}</a></td>
			<td width="120px">{$userlist[nr].user_date}</td>
			<td width="300px">{$userlist[nr].user_url}</td>
			<td width="80px">{if $userlist[nr].status eq 0}	
					<a href="{$userlist[nr].add_friend}">Add</a>
				{else}
					<a href="{$userlist[nr].remove_friend}">Remove</a>
				{/if}
			</td>	
			</tr>
		{/section}
	</table>
	
{/if}


{if $user_view eq 'viewfriends'}

		{if $Allow_Friends neq "0"}

        <div class="clearfix">
          <div class="alignleft" style="width: 65%;">
   			<p><a class="profile-link" href="{$user_url_friends2}">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a></p>
          </div>
			{if $user_authenticated eq true}

        	<div class="alignright" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>
             </div>

			{/if}
         </div>
		{/if}



	<h4>{#PLIGG_Visual_User_Profile_Your_Friends#}</h4>

	{if $friends}
	  	<table><th width="250px">{#PLIGG_Visual_User_Profile_Username#}</th><th width="60px">{#PLIGG_Visual_User_Profile_Message#}</th><th width="60px">{#PLIGG_Visual_User_Profile_Remove_Friend#}</th>
		{foreach from=$friends item=myfriend}
			{php}
				$this->_vars['friend_avatar'] = get_avatar('small', $this->_vars['myfriend']['user_avatar_source'], $this->_vars['myfriend']['user_login'], $this->_vars['myfriend']['user_email']);
				$this->_vars['profileURL'] = getmyurl('user2', $this->_vars['myfriend']['user_login'], 'profile');
				$this->_vars['removeURL'] = getmyurl('user_add_remove', $this->_vars['myfriend']['user_login'], 'removefriend');
			{/php}
			<tr>
			<td><img src="{$friend_avatar}" align="absmiddle"/> <a href="{$profileURL}">{$myfriend.user_login}</a></td>
			<td align="center"><a href="{$my_pligg_base}/module.php?module=simple_messaging&view=compose&return={$templatelite.server.REQUEST_URI|urlencode}&to={$myfriend.user_login}">Send</a></td>
			<td align="center"><a href = "{$removeURL}">Remove</a></td>
			</tr>
		{/foreach}
		</table>
	{else}
		<p>{#PLIGG_Visual_User_Profile_No_Friends#}</p>
	{/if}
{/if}

{if $user_view eq 'setting'}

	{checkActionsTpl location="tpl_pligg_profile_settings_start"}
	<form action="{$my_pligg_base}/user_settings.php?login={$user_username}" method="post">
		{$hidden_token_user_settings}
		{if $Allow_User_Change_Templates}
			<strong>{#PLIGG_Visual_User_Setting_Template#}</strong>
			<select name='template'>
			{foreach from=$templates item=template}
			<option {if $template==$current_template}selected{/if}>{$template}</option>
			{/foreach}
			</select>
			{/if}
			<br /><br />
			<strong>{#PLIGG_Visual_User_Setting_Categories#}</strong>
			<br /><br />
            {foreach from=$category item=cat name="cate"}
				<!--{if $smarty.foreach.cate.iteration % 5 == 0}<br style="clear:both;">{/if}-->
				<div class="usercategory_outer">
					<input type="checkbox" name="chack[]" value="{$cat.category__auto_id}" {if !in_array($cat.category__auto_id,$user_category)} checked="checked"{/if}>
					{$cat.category_name}
				</div>

			{/foreach}

		<input type="submit" name="submit" value="{#PLIGG_Visual_Profile_Save#}" />
	</form>
	{checkActionsTpl location="tpl_pligg_profile_settings_end"}
{/if}


{if $user_view eq 'viewfriends2'}
 <div class="clearfix">
    <div class="alignleft" style="width: 65%;">
	<p><a class="profile-link" href="{$user_url_friends}">{#PLIGG_Visual_User_Profile_View_Friends#}</a></p>
     </div>

	<div class="alignright" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>

	</div>
 </div>


	<h4>{#PLIGG_Visual_User_Profile_Viewing_Friends_2a#}</h4>

	{if $friends}
	  	<table><th width="250px">{#PLIGG_Visual_User_Profile_Username#}</th><th width="500px">{#PLIGG_Visual_User_Profile_Message#}</th>
		{foreach from=$friends item=myfriend}
			{php}
				$this->_vars['friend_avatar'] = get_avatar('small', $this->_vars['myfriend']['user_avatar_source'], $this->_vars['myfriend']['user_login'], $this->_vars['myfriend']['user_email']);
				$this->_vars['profileURL'] = getmyurl('user2', $this->_vars['myfriend']['user_login'], 'profile');
				$this->_vars['removeURL'] = getmyurl('user_add_remove', $this->_vars['myfriend']['user_login'], 'removefriend');
			{/php}

		  	<tr>
			<td><img src="{$friend_avatar}" align="absmiddle"/> <a href="{$profileURL}">{$myfriend.user_login}</a></td>
			<td><a href="{$my_pligg_base}/module.php?module=simple_messaging&view=compose&to={$myfriend.user_login}&return={$templatelite.server.REQUEST_URI|urlencode}">Message</a></td>
			</tr>
		{/foreach}
		</table>
	{else}
		<p>{#PLIGG_Visual_User_Profile_No_Friends_2#}</p>
	{/if}
{/if}


{if $user_view eq 'removefriend'}


	{if $user_login neq $user_logged_in}
     <div class="alignleft" style="width: 65%;">

			   <p>	<a class="profile-link" href="{$user_url_friends}">{#PLIGG_Visual_User_Profile_View_Friends#}</a></p>

			   <p>	<a class="profile-link" href="{$user_url_friends2}">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>     </p>
      </div>
			{/if}



		{if $Allow_Friends neq "0"}		
			{if $user_authenticated eq true} 

	<div class="alignright clearfix" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>

	</div>



			{/if}

		{/if}

	<h4>{#PLIGG_Visual_User_Profile_Friend_Removed#}</h4>

{/if}


{if $user_view eq 'addfriend'}




    {if $Allow_Friends neq "0"}
    <div class="clearfix">
    <div class="alignleft" style="width: 65%;">
    	<p><a class="profile-link" href="{$user_url_friends}">{#PLIGG_Visual_User_Profile_View_Friends#}</a></p>
        <p><a class="profile-link" href="{$user_url_friends2}">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a></p>

    </div>

	{if $user_authenticated eq true}
	<div class="alignright" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>

	</div
    {/if}>
    </div>

	<h4>{#PLIGG_Visual_User_Profile_Friend_Added#}</h4>
{/if}
{/if}


{if $user_view eq 'profile'}
       {if $Allow_Friends neq "0"}
         <div class="clearfix">
            <div class="alignleft" style="width: 65%;">
			{if $user_login neq $user_logged_in}


				{if $is_friend gt 0}
					<p><a class="profile-link" href="{$user_url_remove}">{#PLIGG_Visual_User_Profile_Remove_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Remove_Friend_2#}</a></p>

			   		{if $user_authenticated eq true}
						{checkActionsTpl location="tpl_user_center"}
					{/if}

				{else}

		   			{if $user_authenticated eq true}
						<p><a class="profile-link" href="{$user_url_add}">	{#PLIGG_Visual_User_Profile_Add_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Add_Friend_2#}</a></p>

					{/if}

				{/if}

			{else}

				<p><a class="profile-link" href="{$user_url_friends}">{#PLIGG_Visual_User_Profile_View_Friends#}</a></p>

				<p><a class="profile-link" class="profile-link" href="{$user_url_friends2}">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a></p>

			{/if}
            </div>



			{if $user_authenticated eq true} 
	<div class="alignright" style="width: 30%;">

       <div class="search-form">
   		<form action="{$my_pligg_base}/user.php" method="get" {php}
		global $URLMethod, $my_base_url, $my_pligg_base;
		if ($URLMethod==2) print "onsubmit='document.location.href=\"{$my_base_url}{$my_pligg_base}/user/search/\"+encodeURIComponent(this.keyword.value); return false;'";
		{/php}>
        <fieldset class="clearfix">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}
					{/if}

                 <div id="searchfield">
				<input type="text" name="keyword" id="searchbox" class="text clearField" value="{#PLIGG_Visual_User_Search_Users#}">
                </div>
				<input type="submit" value="" class="submit">

                </fieldset>
				</form>
			</div>

     	</div>
			{/if}

    </div>
 	{/if}



		{checkActionsTpl location="tpl_pligg_profile_info_start"}
		
		<div id="personal_info">
			<fieldset><legend>{#PLIGG_Visual_User_PersonalData#}</legend>
				<table style="border:none">
				<tr>
				<td style="background:none"><strong>{#PLIGG_Visual_Login_Username#}:</strong></td>
				<td style="background:none">{if $UseAvatars neq "0"}<span id="ls_avatar"><img src="{$Avatar_ImgSrc}" alt="Avatar" align="absmiddle"/></span>{/if} {$user_username}</td>
				</tr>
				
				{if $user_names ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_User#}:</strong></td>
				<td>{$user_names}</td>
				</tr>
				{/if}

				{if $user_url ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Homepage#}:</strong></td>
				<td><a href="{$user_url}" target="_blank">{$user_url}</a></td>
				</tr>
				{/if}

				{if $user_publicemail ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_PublicEmail#}:</strong></td>
				<td>{$user_publicemail}</td>
				</tr>
				{/if}

				{if $user_location ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_Profile_Location#}:</strong></td>
				<td>{$user_location}</td>
				</tr>
				{/if}

				{if $user_occupation ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_Profile_Occupation#}:</strong></td>
				<td>{$user_occupation}</td>
				</tr>
				{/if}

				{if $user_aim ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_AIM#}:</strong></td>
				<td>{$user_aim}</td>
				</tr>
				{/if}

				{if $user_msn ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_MSN#}:</strong></td>
				<td>{$user_msn}</td>
				</tr>
				{/if}

				{if $user_yahoo ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Yahoo#}:</strong></td>
				<td>{$user_yahoo}</td>
				</tr>
				{/if}

				{if $user_gtalk ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_GTalk#}:</strong></td>
				<td>{$user_gtalk}</td>
				</tr>
				{/if}

				{if $user_skype ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Skype#}:</strong></td>
				<td>{$user_skype}</td>
				</tr>
				{/if}

				{if $user_irc ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_IRC#}:</strong></td>
				<td><a href="{$user_irc}" target="_blank">{$user_irc}</a></td>
				</tr>
				{/if}

				{if $user_login eq $user_logged_in}
				<tr><td><input type="button" value="{#PLIGG_Visual_User_Profile_Modify#}" onclick="location='{$URL_Profile}'"></td></tr>
				{/if}
				</table>
				{checkActionsTpl location=”tpl_show_extra_profile”}

			</fieldset>
		</div>
		
		{checkActionsTpl location="tpl_pligg_profile_info_middle"}
		
		<div id="stats">
			<fieldset><legend>{#PLIGG_Visual_User_Profile_User_Stats#}</legend>
				<table style="border:none;">
				<tr>
				<td style="background:none"><strong>{#PLIGG_Visual_User_Profile_Joined#}:</strong></td>
				<td style="background:none">{$user_joined}</td>
				</tr>

				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Total_Links#}:</strong></td>
				<td>{$user_total_links}</td>
				</tr>

				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Published_Links#}:</strong></td>
				<td>{$user_published_links}</td>
				</tr>

				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Total_Comments#}:</strong></td>
				<td>{$user_total_comments}</td>
				</tr>

				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Total_Votes#}:</strong></td>
				<td>{$user_total_votes}</td>
				</tr>

				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_Published_Votes#}:</strong></td>
				<td>{$user_published_votes}</td>
				</tr>

				{if $user_karma ne ""}
				<tr>
				<td><strong>{#PLIGG_Visual_User_Profile_KarmaPoints#}:</strong></td>
				<td>{$user_karma}</td>
				</tr>
				{/if}

				</table>
			</fieldset>
		</div>

        {if $enable_group eq "true"}
		<div id="groups">
			<fieldset><legend>{#PLIGG_Visual_User_Profile_User_Groups#}</legend>
				<table style="border:none;">
                 {$group_display}
				</table>
			</fieldset>
		</div>
        {/if}

		{checkActionsTpl location="tpl_pligg_profile_info_end"}
		
		{if $user_login eq $user_logged_in}
			<div id="bookmarklet">
				<fieldset><legend>{#PLIGG_Visual_User_Profile_Bookmarklet_Title#}</legend>
					<br />{#PLIGG_Visual_User_Profile_Bookmarklet_Title_1#} {#PLIGG_Visual_Name#}.{#PLIGG_Visual_User_Profile_Bookmarklet_Title_2#}<br />
					<br /><b>{#PLIGG_Visual_User_Profile_IE#}:</b> {#PLIGG_Visual_User_Profile_IE_1#}
					<br /><b>{#PLIGG_Visual_User_Profile_Firefox#}:</b> {#PLIGG_Visual_User_Profile_Firefox_1#}
					<br /><b>{#PLIGG_Visual_User_Profile_Opera#}:</b> {#PLIGG_Visual_User_Profile_Opera_1#}
					<br /><br /><b>{#PLIGG_Visual_User_Profile_The_Bookmarklet#}: { include file="bookmarklet.tpl" }</b>
				</fieldset>
			</div>
		{/if}
		
		
		<div id="friends">
			<fieldset><legend>{#PLIGG_Visual_User_Profile_Friends#}</legend>

			{if $friends}
			  	<table class="friendslist">

					<thead>
						<tr>
							<th scope="col" style="width:25px;"></th>
							<th scope="col">{#PLIGG_Visual_Login_Username#}</th>
							{checkActionsTpl location="tpl_pligg_profile_friend_th"}
							{if $user_login eq $user_logged_in}<th scope="col">{#PLIGG_Visual_User_Profile_Remove_Friend#}</th>{/if}
						</tr>
					</thead>
					<tbody>
						{foreach from=$friends item=myfriend}
							{php}
								$this->_vars['friend_avatar'] = get_avatar('small', $this->_vars['myfriend']['user_avatar_source'], $this->_vars['myfriend']['user_login'], $this->_vars['myfriend']['user_email']);
								$this->_vars['profileURL'] = getmyurl('user2', $this->_vars['myfriend']['user_login'], 'profile');
								$this->_vars['removeURL'] = getmyurl('user_add_remove', $this->_vars['myfriend']['user_login'], 'removefriend');
							{/php}
							<tr>
							<td><a href="{$profileURL}"><img src="{$friend_avatar}" alt="{$myfriend.user_login}" /></a></td>
							<td><a href="{$profileURL}">{$myfriend.user_login}</a></td>
							{checkActionsTpl location="tpl_pligg_profile_friend_td"}
							{if $user_login eq $user_logged_in}
								<td><a href="{$removeURL}">{#PLIGG_Visual_User_Profile_Remove_Friend#} {$myfriend.user_login}</a></td>
							{/if}
							</tr>
						{/foreach}
					</tbody>
				</table>

			{else}
				<br />{#PLIGG_Visual_User_Profile_No_Friends#}
                	{/if}
			</fieldset>
		</div>


{/if}

{if isset($user_page)}{$user_page}{/if}
{if isset($user_pagination)}{checkActionsTpl location="tpl_pligg_pagination_start"}{$user_pagination}{checkActionsTpl location="tpl_pligg_pagination_end"}{/if}
{checkActionsTpl location="tpl_pligg_profile_end"}
