{if $pagename eq "groups"}
<h2>{#PLIGG_Visual_Groups#}</h2>
<hr />
<div class="groupexplain">
	{#PLIGG_Visual_Group_Explain#}
	{if $group_allow eq "1"}
		<div class="create_group">
			<a href="{$URL_submit_groups}"><h2>{#PLIGG_Visual_Submit_A_New_Group#}</h2></a>
		</div>
		<div class="clear"> </div>
	{/if}
</div>
{/if}

{$group_display}

<div style="clear:both;"></div>
{$group_pagination}