{if isset($templatelite.get.search)}<h1 class="title">{#PLIGG_Visual_Search_SearchResults#} <span class="altText">{$templatelite.get.search|sanitize:2|stripslashes}</span></h1>{/if}

{$link_summary_output}

{checkActionsTpl location="tpl_pligg_pagination_start"}
{$search_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}
