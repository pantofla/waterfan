{include file=$the_template."/sort.tpl"}

{checkActionsTpl location="tpl_pligg_content_start"}
{checkActionsTpl location="tpl_pligg_above_center"}

{$link_summary_output}

{checkActionsTpl location="tpl_pligg_below_center"}

{checkActionsTpl location="tpl_pligg_pagination_start"}
{$link_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}

{checkActionsTpl location="tpl_pligg_content_end"}
