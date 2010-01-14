{if $pagename eq "groups"}
<h1 class="title">{#PLIGG_Visual_Groups#}</h1>

{#PLIGG_Visual_Group_Explain#}
 {if $group_allow eq "1"}
  <h4><a href="{$URL_submit_groups}"><span>{#PLIGG_Visual_Submit_A_New_Group#}</span></a></h4>
 {/if}
{/if}

{include file=$the_template."/sort.tpl"}

<div class="clearfix">
{$group_display}
</div>

{$group_pagination}