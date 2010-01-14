{checkActionsTpl location="tpl_pligg_sidebar_start"}

{assign var=sidebar_module value="categories"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}

 

{checkActionsTpl location="tpl_pligg_sidebar_stories_u"}
{checkActionsTpl location="tpl_pligg_sidebar_stories"}
{checkActionsTpl location="tpl_pligg_sidebar_comments"}

{if $Enable_Tags} {assign var=sidebar_module value="tags"}{include file=$the_template_sidebar_modules."/wrapper.tpl"} {/if}

{checkActionsTpl location="tpl_pligg_sidebar_end"}

<a href="http://battlefield3forums.com" tittle="Battlefield 3 forums">Battlefield 3 Forums</a>

