<h1 class="left">{$page_header}</h1>
<a href="{$user_rss, $view_href}" class="rss right" target="_blank">{$page_header} RSS Feed</a>
<div class="clear"></div>

<ul class="menu">
  <li><a href="{$user_url_personal_data}"{if $nav_pd eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_PersonalData#}</span></span></a></li>
  {if $user_login eq $user_logged_in}
  <li><a href="{$user_url_setting}" {if $nav_set eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_Setting#}</span></span></a></li>
  {/if}
  <li><a href="{$user_url_news_sent}"{if $nav_ns eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsSent#}</span></span></a></li>
  <li><a href="{$user_url_news_published}"{if $nav_np eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsPublished#}</span></span></a></li>
  <li><a href="{$user_url_news_unpublished}"{if $nav_nu eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsUnPublished#}</span></span></a></li>
  <li><a href="{$user_url_commented}"{if $nav_c eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsCommented#}</span></span></a></li>
  <li><a href="{$user_url_news_voted}"{if $nav_nv eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsVoted#}</span></span></a></li>
  <li><a href="{$user_url_saved}"{if $nav_s eq '4'} class="active"{/if}><span><span>{#PLIGG_Visual_User_NewsSaved#}</span></span></a></li>
</ul>

{checkActionsTpl location="tpl_pligg_profile_start"}

{checkActionsTpl location="tpl_user_center_just_below_header"}

{if $user_view eq 'search'}
	<div id="navbar">
		{if $Allow_Friends neq "0"}
			<div id="search_users">
				<form action="{$my_pligg_base}/user.php" method="get">
				<input type="hidden" name="view" value="search">
					{if $templatelite.get.keyword neq ""}
						{assign var=searchboxtext value=$templatelite.get.keyword|sanitize:2}
					{else}
						{assign var=searchboxtext value=#PLIGG_Visual_Search_SearchDefaultText#}			
					{/if}
				<input type="text" name="keyword" class="field" value="{$searchboxtext}" onfocus="if(this.value == '{$searchboxtext}') {ldelim}this.value = '';{rdelim}" onblur="if (this.value == '') {ldelim}this.value = '{$searchboxtext}';{rdelim}">
				<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
				</form>
			</div>
            <div class="controls">
			{if $user_login neq $user_logged_in}
	  			{if $is_friend gt 0}
					<a href="{$user_url_remove}" class="control friend-remove">{#PLIGG_Visual_User_Profile_Remove_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Remove_Friend_2#}</a>
		   			{if $user_authenticated eq true}
						{checkActionsTpl location="tpl_user_center"}
					{/if}
				{else}

	   				{if $user_authenticated eq true}
						<a href="{$user_url_add}" class="control friend-add">{#PLIGG_Visual_User_Profile_Add_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Add_Friend_2#}</a>
				    {/if}   
				{/if}      		
			{else}  
             <a href="{$user_url_friends}" class="control friends">{#PLIGG_Visual_User_Profile_View_Friends#}</a>
     		 <a href="{$user_url_friends2}" class="control friends-link">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>
				
			{/if}
            </div>
		{/if}
	</div>

	<h4>{#PLIGG_Visual_Search_SearchResults#} {$search}</h4>

	<table cellpadding="1" border="0">
		<tr><th>{#PLIGG_Visual_Login_Username#}</th><th>{#PLIGG_Visual_User_Profile_Joined#}</th><th>{#PLIGG_Visual_User_Profile_Homepage#}</th><th>Add/Remove</th></tr>
		{section name=nr loop=$userlist}
			<tr>
			<td width="240px"><img src="{$userlist[nr].Avatar}" align="absmiddle"/> <a href = "{$URL_user, $userlist[nr].user_login}">{$userlist[nr].user_login}</a></td>
			<td width="120px">{$userlist[nr].user_date}</td>
			<td width="300px">{$userlist[nr].user_url}</td>
			<td width="80px">{if $userlist[nr].status eq 0}	
					<center><a href="{$userlist[nr].add_friend}" class="control friend-add">{#PLIGG_Visual_User_Profile_Add_Friend#}</a></center>
				{else}
					<center><a href="{$userlist[nr].remove_friend}" class="control friend-remove">{#PLIGG_Visual_User_Profile_Remove_Friend#}</a></center>
				{/if}
			</td>	
			</tr>
		{/section}
	</table>
	
{/if}


{if $user_view eq 'viewfriends'}

		{if $Allow_Friends neq "0"}
          <div class="controls">
			{if $user_authenticated eq true}
				<div id="search_users">
					<form action="{$my_pligg_base}/user.php" method="get">
					<input type="hidden" name="view" value="search">
					<input type="text" name="keyword" class="field">
					<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
					</form>
				</div>
			{/if}
     		 <a href="{$user_url_friends2}" class="control friends-link">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>
          </div>
		{/if}

{/if}

{if $user_view eq 'setting'}

	{checkActionsTpl location="tpl_pligg_profile_settings_start"}
	<form action="{$my_pligg_base}/user_settings.php?login={$user_username}" method="post">
	  <fieldset>
        <p>
			{if $Allow_User_Change_Templates}
			<label>{#PLIGG_Visual_User_Setting_Template#}</label><br />
			<select name='template'>
			{foreach from=$templates item=template}
			<option {if $template==$current_template}selected{/if}>{$template}</option>
			{/foreach}
			</select>
			{/if}
	    </p>
        <br />
        <p>
			<label>{#PLIGG_Visual_User_Setting_Categories#}</label><br />
			{foreach from=$category item=cat name="cate"}
			 <input class="checkbox" type="checkbox" name="chack[]" value="{$cat.category__auto_id}" {foreach from=$user_category item=u_cat} {if $u_cat eq $cat.category__auto_id} checked="checked"{/if}{/foreach}> {$cat.category_name}<br />
			{/foreach}
        </p>
        <br />
        <p><input type="submit" name="submit" value="update"></p>
      </fieldset>
	</form>
	{checkActionsTpl location="tpl_pligg_profile_settings_end"}
{/if}

{if $user_view eq 'viewfriends2'}
	<div id="navbar">
		{if $Allow_Friends neq "0"}
         <div class="controls">
			{if $user_authenticated eq true}
				<div id="search_users">
					<form action="{$my_pligg_base}/user.php" method="get">
					<input type="hidden" name="view" value="search">
					<input type="text" name="keyword" class="field">
					<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
					</form>
				</div>
			{/if}
             <a href="{$user_url_friends}" class="control friends">{#PLIGG_Visual_User_Profile_View_Friends#}</a>
         </div>
		{/if}
	</div>
{/if}


{if $user_view eq 'removefriend'}
	<div id="navbar">
		{if $Allow_Friends neq "0"}
          <div class="controls">
			{if $user_authenticated eq true}
				<div id="search_users">
					<form action="{$my_pligg_base}/user.php" method="get">
					<input type="hidden" name="view" value="search">
					<input type="text" name="keyword" class="field">
					<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
					</form>
				</div>
			{/if}
			{if $user_login neq $user_logged_in}
             <a href="{$user_url_friends}" class="control friends">{#PLIGG_Visual_User_Profile_View_Friends#}</a>
     		 <a href="{$user_url_friends2}" class="control friends-link">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>
			{/if}
          </div>
		{/if}
	</div>
{/if}


{if $user_view eq 'addfriend'}
	<div id="navbar">
		{if $Allow_Friends neq "0"}
          <div class="controls">
			{if $user_authenticated eq true}
				<div id="search_users">
					<form action="{$my_pligg_base}/user.php" method="get">
					<input type="hidden" name="view" value="search">
					<input type="text" name="keyword" class="field">
					<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
					</form>
				</div>
			{/if}

            <a href="{$user_url_friends}" class="control friends">{#PLIGG_Visual_User_Profile_View_Friends#}</a>
    		<a href="{$user_url_friends2}" class="control friends-link">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>
          </div>
		{/if}
	</div>
{/if}


{if $user_view eq 'profile'}
	<div id="navbar">
		{if $Allow_Friends neq "0"}
			{if $user_authenticated eq true}
				<div id="search_users">
					<form action="{$my_pligg_base}/user.php" method="get">
					<input type="hidden" name="view" value="search">
					<input type="text" name="keyword" class="field">
					<input type="submit" value="{#PLIGG_Visual_User_Search_Users#}" class="button">
					</form>
				</div>
			{/if}

            <div class="controls">

			{if $user_login neq $user_logged_in}
				{if $is_friend gt 0}
					<a href="{$user_url_remove}" class="control friend-remove">{#PLIGG_Visual_User_Profile_Remove_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Remove_Friend_2#}</a>
			   		{if $user_authenticated eq true}
						{checkActionsTpl location="tpl_user_center"}
					{/if}
				{else}
		   			{if $user_authenticated eq true}
						<a href="{$user_url_add}" class="control friend-add">{#PLIGG_Visual_User_Profile_Add_Friend#} {$user_login} {#PLIGG_Visual_User_Profile_Add_Friend_2#}</a>
					{/if}
		   
				{/if}
		   		
			{else}
                <a href="{$user_url_friends}" class="control friends">{#PLIGG_Visual_User_Profile_View_Friends#}</a>
				<a href="{$user_url_friends2}" class="control friends-link">{#PLIGG_Visual_User_Profile_View_Friends_2#}</a>
			{/if}
            </div>

		{/if}
	</div>



  {checkActionsTpl location="tpl_pligg_profile_info_start"}

  <br />
  <fieldset><legend>{#PLIGG_Visual_User_PersonalData#}</legend>


  <dl>

  <dt>{#PLIGG_Visual_Login_Username#}:</dt>
  <dd>{if $UseAvatars neq "0"}<span id="ls_avatar"><img src="{$Avatar_ImgSrc}" alt="Avatar" align="absmiddle"/></span>{/if} {$user_username}</dd>

  {if $user_names ne ""}
  <dt>{#PLIGG_Visual_User_Profile_User#}:</dt>
  <dd>{$user_names}</dd>
  {/if}

  {if $user_url ne ""}
  <dt>{#PLIGG_Visual_User_Profile_Homepage#}:</dt>
  <dd><a href="{$user_url}" target="_blank">{$user_url}</a></dd>
  {/if}

  {if $user_publicemail ne ""}
  <dt>{#PLIGG_Visual_User_Profile_PublicEmail#}:</dt>
  <dd>{$user_publicemail}</dd>
  {/if}

  {if $user_location ne ""}
  <dt>{#PLIGG_Visual_Profile_Location#}:</dt>
  <dd>{$user_location}</dd>
  {/if}

  {if $user_occupation ne ""}
  <dt>{#PLIGG_Visual_Profile_Occupation#}:</dt>
  <dd>{$user_occupation}</dd>
  {/if}

  {if $user_aim ne ""}
  <dt>{#PLIGG_Visual_User_Profile_AIM#}:</dt>
  <dd>{$user_aim}</dd>
  {/if}

  {if $user_msn ne ""}
  <dt>{#PLIGG_Visual_User_Profile_MSN#}:</dt>
  <dd>{$user_msn}</dd>
  {/if}

  {if $user_yahoo ne ""}
  <dt>{#PLIGG_Visual_User_Profile_Yahoo#}:</dt>
  <dd>{$user_yahoo}</dd>
  {/if}

  {if $user_gtalk ne ""}
  <dt>{#PLIGG_Visual_User_Profile_GTalk#}:</dt>
  <dd>{$user_gtalk}</dd>
  {/if}

  {if $user_skype ne ""}
  <dt>{#PLIGG_Visual_User_Profile_Skype#}:</dt>
  <dd>{$user_skype}</dd>
  {/if}

  {if $user_irc ne ""}
  <dt>{#PLIGG_Visual_User_Profile_IRC#}:</dt>
  <dd><a href="{$user_irc}" target="_blank">{$user_irc}</a></dd>
  {/if}
  </dl>

  {if $user_login eq $user_logged_in}
  <dd><p><input type="button" value="{#PLIGG_Visual_User_Profile_Modify#}" onclick="location='{$URL_Profile}'" /></p></dd>
  {/if}

  {checkActionsTpl location=”tpl_show_extra_profile”}
  </fieldset>

  <br />

  {checkActionsTpl location="tpl_pligg_profile_info_middle"}

  <div class="content-left">
	<fieldset><legend>{#PLIGG_Visual_User_Profile_User_Stats#}</legend>
    <dl>
    <dt>{#PLIGG_Visual_User_Profile_Joined#}:</dt>
	<dd>{$user_joined}</dd>

    <dt>{#PLIGG_Visual_User_Profile_Total_Links#}:</dt>
	<dd>{$user_total_links}</dd>

    <dt>{#PLIGG_Visual_User_Profile_Published_Links#}:</dt>
	<dd>{$user_published_links}</dd>

    <dt>{#PLIGG_Visual_User_Profile_Total_Comments#}:</dt>
	<dd>{$user_total_comments}</dd>

    <dt>{#PLIGG_Visual_User_Profile_Total_Votes#}:</dt>
	<dd>{$user_total_votes}</dd>

    <dt>{#PLIGG_Visual_User_Profile_Published_Votes#}:</dt>
	<dd>{$user_published_votes}</dd>

	{if $user_karma ne ""}
	<dt>{#PLIGG_Visual_User_Profile_KarmaPoints#}:</dt>
	<dd>{$user_karma}</dd>
	{/if}
    </dl>
    </fieldset>
  </div>

  <div class="content-right">
	<fieldset>
      <legend>{#PLIGG_Visual_User_Profile_User_Groups#}</legend>
	   <table class="noborder">
         {$group_display}
	   </table>
	</fieldset>
  </div>
  <div class="clear"></div>
  <br />
  {checkActionsTpl location="tpl_pligg_profile_info_end"}

  {if $user_login eq $user_logged_in}
  <fieldset><legend>{#PLIGG_Visual_User_Profile_Bookmarklet_Title#}</legend>
   <p>{#PLIGG_Visual_User_Profile_Bookmarklet_Title_1#} {#PLIGG_Visual_Name#}.{#PLIGG_Visual_User_Profile_Bookmarklet_Title_2#}</p>
   <p><strong>{#PLIGG_Visual_User_Profile_IE#}:</strong> {#PLIGG_Visual_User_Profile_IE_1#}<br />
   <strong>{#PLIGG_Visual_User_Profile_Firefox#}:</strong> {#PLIGG_Visual_User_Profile_Firefox_1#}<br />
   <strong>{#PLIGG_Visual_User_Profile_Opera#}:</strong> {#PLIGG_Visual_User_Profile_Opera_1#}</p>
   <p><strong>{#PLIGG_Visual_User_Profile_The_Bookmarklet#}: { include file="bookmarklet.tpl" }</strong></p>
  </fieldset>
  {/if}
		
		

{/if}

{if isset($user_page)}{$user_page}{/if}
{if isset($user_pagination)}{checkActionsTpl location="tpl_pligg_pagination_start"}{$user_pagination}{checkActionsTpl location="tpl_pligg_pagination_end"}{/if}
{checkActionsTpl location="tpl_pligg_profile_end"}
