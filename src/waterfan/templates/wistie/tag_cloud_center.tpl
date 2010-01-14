<div class="pagewrap" style="line-height:{$tags_max_pts}pt;">
{if $SearchMethod eq 4}
	{section name=customer loop=$tag_number}
		<span style="font-size: {$tag_size[customer]}pt"><a href="{$my_base_url}{$my_pligg_base}/search.php?q={$tag_name[customer]}&sa=Go&sitesearch={$my_base_url}{$my_pligg_base}/&flav=0002&client=pub-1628281707918473&forid=1&ie=ISO-8859-1&oe=ISO-8859-1&cof=GALT%3A%23008000%3BGL%3A1%3BDIV%3A%23336699%3BVLC%3A663399%3BAH%3Acenter%3BBGC%3AFFFFFF%3BLBGC%3A336699%3BALC%3A0000FF%3BLC%3A0000FF%3BT%3A000000%3BGFNT%3A0000FF%3BGIMP%3A0000FF%3BFORID%3A11&hl=en">{$tag_name[customer]}</a></span>&nbsp;&nbsp;
	{/section}
{else}
{section name=customer loop=$tag_number}
		<span style="font-size: {$tag_size[customer]}pt"><a href="{$tag_url[customer]}">{$tag_name[customer]}</a></span>&nbsp;&nbsp;
	{/section}
{/if}
</div>