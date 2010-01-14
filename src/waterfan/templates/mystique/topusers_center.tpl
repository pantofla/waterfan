<h1 class="title">{#PLIGG_Visual_TopUsers_Statistics#}</h1>
{checkActionsTpl location="tpl_pligg_topusers_start"}
<table>
	<tr>

		{foreach from=$headers item=header key=number}
			<th>
				{ if $number eq $templatelite.GET.sortby }
					<span>{$header}</span>
				{ else }
					<a href="?sortby={$number}">{$header}</a>
				{ /if }
			</th>
		{/foreach}

		<th>
			{#PLIGG_Visual_TopUsers_TH_Karma#}
		</th>
	</tr>

	{$users_table}

</table>
{checkActionsTpl location="tpl_pligg_topusers_end"}

<br />
{checkActionsTpl location="tpl_pligg_pagination_start"}
{$topusers_pagination}
{checkActionsTpl location="tpl_pligg_pagination_end"}