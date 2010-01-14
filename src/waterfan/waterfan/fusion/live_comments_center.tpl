
<h1>{#PLIGG_Visual_Live#}</h1>

<ul class="menu">
  <li {if $pagename eq "live"}class="active"{/if}><a href="{$URL_live}"><span><span>{#PLIGG_Visual_Breadcrumb_All#}</span></span></a></li>
  <li {if $pagename eq "live_published"}class="active"{/if}><a href="{$URL_published}"><span><span>{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span></span></a></li>
  <li {if $pagename eq "live_unpublished"}class="active"{/if}><a href="{$URL_unpublished}"><span><span>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span></span></a></li>
  <li {if $pagename eq "live_comments"}class="active"{/if}><a href="{$URL_comments}"><span><span>{#PLIGG_Visual_Breadcrumb_Comments#}</span></span></a></li>
</ul>

	<table style="border-bottom:2px solid #dedede"><tr>
		<td width="290px" align="center"><strong>{#PLIGG_Visual_Comments_Comment#}</strong></td>
		<td width="70px" align="center"><strong>{#PLIGG_Visual_Comments_Author#}</strong></td>
		<td width="140px" align="center"><strong>{#PLIGG_Visual_Comments_Link#}</strong></td>
		<td width="50px" align="center"><strong>{#PLIGG_Visual_Comments_Date#}</strong></td>
	</tr></table>

{section name=live_item loop=$live_items}

	<div class="live2-item">
	<table><tr>
		<td width="290px" align="left">{$live_items[live_item].comment_content}</td>
		<td width="90px"><a href="{$URL_user, $live_items[live_item].comment_author}">{$live_items[live_item].comment_author}</a></td>
		<td width="140px" align="left"><a href="{$live_items[live_item].comment_link_url}">{$live_items[live_item].comment_link_title}</a></td>
		<td width="50px">{$live_items[live_item].comment_date}</td>
	</tr></table>
	</div>

{/section}


{checkActionsTpl location="tpl_pligg_pagination_start"}
{$live_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}
