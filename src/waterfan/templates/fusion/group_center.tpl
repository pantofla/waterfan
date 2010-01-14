{if $pagename eq "groups"}
<h1>{#PLIGG_Visual_Groups#}</h1>
{if $group_allow eq "1"}
<p>{#PLIGG_Visual_Group_Explain#}</p>
<h4><a href="{$URL_submit_groups}">{#PLIGG_Visual_Submit_A_New_Group#}</a></h4>
{/if}
{/if}


{$group_display}
<div class="clear"></div>
{$group_pagination}