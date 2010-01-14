{if $pagename eq "groups"}

<div class="border-sections">
	{#PLIGG_Visual_Group_Explain#}
	{if $group_allow eq "1"}
		<br /><br />
		<a href="{$URL_submit_groups}" class="a-button"><span>{#PLIGG_Visual_Submit_A_New_Group#}</span></a>
	{/if}
</div>
{/if}

{$group_display}
<div style="clear:both;"></div>
{$group_pagination}