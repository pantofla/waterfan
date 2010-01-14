
<ul class="catpage">

			{section name=thecat loop=$cat_array}
				{if $lastspacer eq ""}
					{assign var=lastspacer value=$cat_array[thecat].spacercount}
				{/if}

					<li><a href="{$URL_rsscategory, $cat_array[thecat].auto_id}" target="_blank" style="border:none;"><img src="{$my_pligg_base}/templates/{$the_template}/images/rss.gif" border="0" alt="RSS" /></a><a href="{$URL_rsscategory, $cat_array[thecat].auto_id}" target="_blank" style="border:none;">{$cat_array[thecat].name}</a></li>

				{assign var=lastspacer value=$cat_array[thecat].spacercount}
			{/section}
	
	</ul>
<br style="clear:both"/><br/>
