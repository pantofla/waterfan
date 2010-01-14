{if $pagename eq "groups"}
<div class="groupexplain">
	{#PLIGG_Visual_Group_Explain#}
	{if $group_allow eq "1"}
		<br /><br />
		<h2><a href="{$URL_submit_groups}"><span>{#PLIGG_Visual_Submit_A_New_Group#}</span></a></h2>
	{/if}
</div>
{/if}

{$group_display}
<div style="clear:both;"></div>
{$group_pagination}