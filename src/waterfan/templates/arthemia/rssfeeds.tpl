<div id="feeds">
	{section name=thecat loop=$cat_array}
		{if $lastspacer eq ""}
			{assign var=lastspacer value=$cat_array[thecat].spacercount}
		{/if}
		<div class="feedimage">
			<img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" border="0" alt="RSS" style="border:0;" />
		</div>
		<div class="feedname">
			<a href="{$URL_rsscategory, $cat_array[thecat].auto_id}" target="_blank" style="border:none;">{$cat_array[thecat].name}</a>
		</div>
		<div class="feedurl"><input type="text" class="rssfield" value="{$my_base_url}{$URL_rsscategory, $cat_array[thecat].auto_id}"></div>
		<div class="feed-spacer clear"> </div>
		{assign var=lastspacer value=$cat_array[thecat].spacercount}
	{/section}
</div>
