{if $link_summary_output eq ""}
	<h2>There were no search results for those terms</h2>
	<p>Please modify your search keywords and try again.</p>
{else}
	{if isset($templatelite.get.search)}<h2>{#PLIGG_Visual_Search_SearchResults#} "{$templatelite.get.search|sanitize:2|stripslashes}"</h2>{/if}
	{if isset($templatelite.get.q)}<h2>{#PLIGG_Visual_Search_SearchResults#} "{$templatelite.get.q|sanitize:2|stripslashes}"</h2>{/if} 
	<hr />
{/if}
{$link_summary_output}
<br />
{checkActionsTpl location="tpl_pligg_pagination_start"}
{$search_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}
