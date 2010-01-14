<div class="clearfix">
<div class="sort">
{if $pagename eq "published" || $pagename eq "index" || $pagename eq "upcoming" && $pagename neq "groups"}
   <span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_TopUsers_TH_News#}</span>
   {if $setmeka eq "" || $setmeka neq "recent"}<a href="{$index_url_recent}">{#PLIGG_Visual_Recently_Pop#}</a>{else}<span class="active">{#PLIGG_Visual_Recently_Pop#}</span>{/if}
   {if $setmeka neq "today"}<a href="{$index_url_today}">{#PLIGG_Visual_Top_Today#}</a>{else}<span class="active">{#PLIGG_Visual_Top_Today#}</span>{/if}
   {if $setmeka neq "yesterday"}<a href="{$index_url_yesterday}">{#PLIGG_Visual_Yesterday#}</a>{else}<span class="active">{#PLIGG_Visual_Yesterday#}</span>{/if}
   {if $setmeka neq "week"}<a href="{$index_url_week}">{#PLIGG_Visual_This_Week#}</a>{else}<span class="active">{#PLIGG_Visual_This_Week#}</span>{/if}
   {if $setmeka neq "month"}<a href="{$index_url_month}">{#PLIGG_Visual_This_Month#}</a>{else}<span class="active">{#PLIGG_Visual_This_Month#}</span>{/if}
   {if $setmeka neq "year"}<a href="{$index_url_year}">{#PLIGG_Visual_This_Year#}</a>{else}<span class="active">{#PLIGG_Visual_This_Year#}</span>{/if}
   {if $setmeka neq "alltime"}<a href="{$index_url_alltime}">{#PLIGG_Visual_This_All#}</a>{else}<span class="active">{#PLIGG_Visual_This_All#}</span>{/if}
{/if}


{if $pagename eq "groups"}
   <span class="title">{#PLIGG_Visual_Group_Sort#}</span>
   {checkActionsTpl location="tpl_pligg_group_sort_start"}
   {if $sortby eq "members"}<span class="active">{#PLIGG_Visual_Group_Sort_Members#}</span>{else} <a href="{$group_url_members}">{#PLIGG_Visual_Group_Sort_Members#}</a>{/if}
   {if $sortby eq "name"}<span class="active">{#PLIGG_Visual_Group_Sort_Name#}</span>{else} <a href="{$group_url_name}">{#PLIGG_Visual_Group_Sort_Name#}</a>{/if}
   {if $sortby eq "newest"}<span class="active">{#PLIGG_Visual_Group_Sort_Newest#}</span>{else} <a href="{$group_url_newest}">{#PLIGG_Visual_Group_Sort_Newest#}</a>{/if}
   {if $sortby eq "oldest"}<span class="active">{#PLIGG_Visual_Group_Sort_Oldest#}</span>{else} <a href="{$group_url_oldest}">{#PLIGG_Visual_Group_Sort_Oldest#}</a>{/if}
   {checkActionsTpl location="tpl_pligg_group_sort_end"}
{/if}

{if $pagename eq "group_story"}
   <span class="title">{#PLIGG_Visual_Group_Sort#}</span>
   {if $groupview eq "published"}<span class="active">{#PLIGG_Visual_Group_Published#}</span>{else}<a href="{$groupview_published}">{#PLIGG_Visual_Group_Published#}</a>{/if}
   {if $groupview eq "upcoming"}<span class="active">{#PLIGG_Visual_Group_Upcoming#}</span>{else}<a href="{$groupview_upcoming}">{#PLIGG_Visual_Group_Upcoming#}</a>{/if}
   {if $groupview eq "shared"}<span class="active">{#PLIGG_Visual_Group_Shared#}</span>{else}<a href="{$groupview_sharing}">{#PLIGG_Visual_Group_Shared#}</a>{/if}
   {if $groupview eq "members"}<span class="active">{#PLIGG_Visual_Group_Member#}</span>{else}<a href="{$groupview_members}">{#PLIGG_Visual_Group_Member#}</a>{/if}
{/if}

{if $pagename eq "cloud"}
   <span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_Tags_Link_Summary#}</span>
   {section name=i start=0 loop=$count_range_values step=1}
      {if $templatelite.section.i.index eq $current_range}
        <span class="active">{$range_names[i]}</span>
      {else}
        <a href="{$URL_tagcloud_range, $templatelite.section.i.index}">{$range_names[i]}</a>
      {/if}
   {/section}
{/if}

{if $pagename eq "live" || $pagename eq "live_unpublished" || $pagename eq "live_published" || $pagename eq "live_comments"}
   <span class="title">{#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_Live#}</span>
   {if $pagename eq "live"}<span class="active">{#PLIGG_Visual_Breadcrumb_All#}</span>{else}<a href="{$URL_live}">{#PLIGG_Visual_Breadcrumb_All#}</a>{/if}
   {if $pagename eq "live_published"}<span class="active">{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span>{else}<a href="{$URL_published}">{#PLIGG_Visual_Breadcrumb_Published_Tab#}</a>{/if}
   {if $pagename eq "live_unpublished"}<span class="active">{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span>{else}<a href="{$URL_unpublished}">{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</a>{/if}
   {if $pagename eq "live_comments"}<span class="active">{#PLIGG_Visual_Breadcrumb_Comments#}</span>{else}<a href="{$URL_comments}">{#PLIGG_Visual_Breadcrumb_Comments#}</a>{/if}
{/if}


{if $pagename eq "user"}
   {checkActionsTpl location="tpl_pligg_profile_sort_start"}
   {if $user_view eq 'profile'} <span class="active">{#PLIGG_Visual_Profile#}</span>{else}<a href="{$user_url_personal_data}"><span>{#PLIGG_Visual_Profile#}</span></a>{/if}
   {if $user_login eq $user_logged_in}
   {if $user_view eq 'setting'} <span class="active">{#PLIGG_Visual_User_Setting#}</span>{else}<a href="{$user_url_setting}"><span>{#PLIGG_Visual_User_Setting#}</span></a>{/if}
   {/if}
   {if $user_view eq 'published'} <span class="active">{#PLIGG_Visual_User_NewsPublished#}</span>{else}<a href="{$user_url_news_published}"><span>{#PLIGG_Visual_User_NewsPublished#}</span></a>{/if}
   {if $user_view eq 'history'} <span class="active">{#PLIGG_Visual_User_NewsSent#}</span>{else}<a href="{$user_url_news_sent}"><span>{#PLIGG_Visual_User_NewsSent#}</span></a>{/if}
   {if $user_view eq 'shaken'} <span class="active">{#PLIGG_Visual_User_NewsUnPublished#}</span>{else}<a href="{$user_url_news_unpublished}"><span>{#PLIGG_Visual_User_NewsUnPublished#}</span></a>{/if}
   {if $user_view eq 'commented'} <span class="active">{#PLIGG_Visual_User_NewsCommented#}</span>{else}<a href="{$user_url_commented}"><span>{#PLIGG_Visual_User_NewsCommented#}</span></a>{/if}
   {if $user_view eq 'voted'} <span class="active">{#PLIGG_Visual_User_NewsVoted#}</span>{else}<a href="{$user_url_news_voted}"><span>{#PLIGG_Visual_User_NewsVoted#}</span></a>{/if}
   {if $user_view eq 'saved'} <span class="active">{#PLIGG_Visual_User_NewsSaved#}</span>{else}<a href="{$user_url_saved}"><span>{#PLIGG_Visual_User_NewsSaved#}</span></a>{/if}
   {checkActionsTpl location="tpl_pligg_profile_sort_end"}
{/if}
</div>
</div>