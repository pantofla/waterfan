

{if $pagename eq "search"}

			<ul id="filter">

<li><a href="{$URL_advancedsearch}">{#PLIGG_Visual_Search_Advanced#}</a></li>

	</ul>
	{/if}
	
{if $pagename eq "user"  }
			<ul id="filter">
			
					{checkActionsTpl location="tpl_pligg_profile_sort_start"}
					<li><a href="{$user_url_personal_data}" class="current{$nav_pd}"><span>{#PLIGG_Visual_User_PersonalData#}</span></a></li>
					{if $user_login eq $user_logged_in}
					<li><a href="{$user_url_setting}" class="current{$nav_set}"><span>{#PLIGG_Visual_User_Setting#}</span></a></li>
					{/if}
					<li><a href="{$user_url_news_sent}" class="current{$nav_ns}"><span>{#PLIGG_Visual_User_NewsSent#}</span></a></li>
					<li><a href="{$user_url_news_published}" class="current{$nav_np}"><span>{#PLIGG_Visual_User_NewsPublished#}</span></a></li>
					<li><a href="{$user_url_news_unpublished}" class="current{$nav_nu}"><span>{#PLIGG_Visual_User_NewsUnPublished#}</span></a></li>
					<li><a href="{$user_url_commented}" class="current{$nav_c}"><span>{#PLIGG_Visual_User_NewsCommented#}</span></a></li>
					<li><a href="{$user_url_news_voted}" class="current{$nav_nv}"><span>{#PLIGG_Visual_User_NewsVoted#}</span></a></li>
					<li><a href="{$user_url_saved}" class="current{$nav_s}"><span>{#PLIGG_Visual_User_NewsSaved#}</span></a></li>
					{checkActionsTpl location="tpl_pligg_profile_sort_end"}
				</ul>
		
		{/if}
		
		
		
		{if $pagename eq "published" || $pagename eq "index" || $pagename eq "upcoming" && $pagename neq "groups"}
	<!-- START SORT -->
		<ul id="filter">
			<li><span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_TopUsers_TH_News#}</span></li>
		
		
				{if $setmeka eq "" || $setmeka eq "recent"}<li id="active"><a class="current4" href="{$index_url_recent}"><span class="active">{#PLIGG_Visual_Recently_Pop#}</span></a>{else}<li><a href="{$index_url_recent}">{#PLIGG_Visual_Recently_Pop#}</a>{/if}</li>
				{if $setmeka eq "today"}<li id="active" href="{$index_url_today}"><a href="{$index_url_today}" class="current4"><span class="active">{#PLIGG_Visual_Top_Today#}</span></a>{else}<li><a href="{$index_url_today}">{#PLIGG_Visual_Top_Today#}</a>{/if}</li>
				{if $setmeka eq "yesterday"}<li id="active"><a class="current4" href="{$index_url_yesterday}"><span class="active">{#PLIGG_Visual_Yesterday#}</span></a>{else}<li><a href="{$index_url_yesterday}">{#PLIGG_Visual_Yesterday#}</a>{/if}</li>
				{if $setmeka eq "week"}<li id="active"><a class="current4" href="{$index_url_week}"><span class="active">{#PLIGG_Visual_This_Week#}</span></a>{else}<li><a href="{$index_url_week}">{#PLIGG_Visual_This_Week#}</a>{/if}</li>
				{if $setmeka eq "month"}<li id="active"><a class="current4" href="{$index_url_month}"><span class="active">{#PLIGG_Visual_This_Month#}</span></a>{else}<li><a href="{$index_url_month}">{#PLIGG_Visual_This_Month#}</a>{/if}</li>
				{if $setmeka eq "year"}<li id="active"><a class="current4" href="{$index_url_year}"><span class="active">{#PLIGG_Visual_This_Year#}</span></a>{else}<li><a href="{$index_url_year}">{#PLIGG_Visual_This_Year#}</a>{/if}</li>
			</ul>
		

	<!-- END SORT -->
	{/if}
	
	
	

	{if $pagename eq "groups"}
	<!-- START GROUP SORT -->
			<ul id="filter">
			<li><span class="title">{#PLIGG_Visual_Group_Sort#}</span></li>
	

		
				{checkActionsTpl location="tpl_pligg_group_sort_start"}
				
				{if $sortby eq "members"}
					<li id="active"><span class="active"><a class="current4">
						{#PLIGG_Visual_Group_Sort_Members#}
					</a></span></li>
				{else} 
					<li><a href="{$group_url_members}">
						{#PLIGG_Visual_Group_Sort_Members#}
					</a></li>
				{/if}
				
				{if $sortby eq "name"}
					<li id="active"><span class="active"><a class="current4">
						{#PLIGG_Visual_Group_Sort_Name#}
					</a></span></li> 
				{else}
					<li><a href="{$group_url_name}">
						{#PLIGG_Visual_Group_Sort_Name#}
					</a></li>
				{/if}
				
				{if $sortby eq "newest"}
					<li id="active"><span class="active"><a class="current4">
						{#PLIGG_Visual_Group_Sort_Newest#}
					</a></span></li>
				{else}
					<li><a href="{$group_url_newest}">
						{#PLIGG_Visual_Group_Sort_Newest#}
					</a></li>
				{/if}
				
				{if $sortby eq "oldest"}
					<li id="active"><span class="active"><a class="current4">
						{#PLIGG_Visual_Group_Sort_Oldest#}
					</a></span></li>
				{else}
					<li><a href="{$group_url_oldest}">
						{#PLIGG_Visual_Group_Sort_Oldest#}
					</a></li>
				{/if}
				
				{checkActionsTpl location="tpl_pligg_group_sort_end"}
			</ul>
	
	<!-- END GROUP SORT -->
	{/if}



	{if $pagename eq "group_story"}
	<!-- START GROUP SORT -->
		<ul id="filter">

		<li><span class="title">{#PLIGG_Visual_Group_Sort#}</span></li>
		<li><span><a href="{$groupview_published}"  {if $groupview eq "published"}class="current4"{/if}>{#PLIGG_Visual_Group_Published#}</a></span></li>
		<li><span><a href="{$groupview_upcoming}"   {if $groupview eq "upcoming"}class="current4"{/if}>{#PLIGG_Visual_Group_Upcoming#}</a></span></li>
		<li><span><a href="{$groupview_sharing}"       {if $groupview eq "shared"}class="current4"{/if}> {#PLIGG_Visual_Group_Shared#}</a></span></li>
		<li><span><a href="{$groupview_members}"    {if $groupview eq "members"}class="current4"{/if}>{#PLIGG_Visual_Group_Member#}</a></span></li>
				
		</ul>
		
	<!-- END GROUP SORT -->
	{/if}
	
	
	
	
	
	{if $pagename eq "cloud"}
			<ul id="filter">
		<li><span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_Tags_Link_Summary#}</span></li>
		
	
				{section name=i start=0 loop=$count_range_values step=1}
					{if $templatelite.section.i.index eq $current_range}
						<li id="active"><a href="#" class="current4"><span class="active">{$range_names[i]}</span></a></li>
					{else}	
						<li><a href="{$URL_tagcloud_range, $templatelite.section.i.index}"><span>{$range_names[i]}</span></a></li>
					{/if}
				{/section}
			</ul>   
	
	{/if}
	
	

	{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}
		
		<ul id="filter">

			<li><span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_Live#}</span></li>
			<li><a href="{$URL_live}" {if $pagename eq "live"}class="current4"{/if}><span {if $pagename eq "live"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_All#}</span></a></li>
			<li><a href="{$URL_published}" {if $pagename eq "live_published"}class="current4"{/if}><span {if $pagename eq "live_published"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span></a></li>
			<li><a href="{$URL_unpublished}" {if $pagename eq "live_unpublished"}class="current4"{/if}><span {if $pagename eq "live_unpublished"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span></a></li>
			<li><a href="{$URL_comments}" {if $pagename eq "live_comments"}class="current4"{/if}><span {if $pagename eq "live_comments"}class="active"{/if}>{#PLIGG_Visual_Breadcrumb_Comments#}</span></a></li>
			</ul>
	
	{/if}