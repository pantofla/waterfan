<h1>{#PLIGG_Visual_RSS_Feeds#}</h1>

<ul id="rssfeeds">
<li>
 {section name=thecat loop=$cat_array}
  {if $lastspacer eq ""}
   {assign var=lastspacer value=$cat_array[thecat].spacercount}
  {/if}

  <li><a href="{$URL_rsscategory, $cat_array[thecat].auto_id}" target="_blank" class="rss">{$cat_array[thecat].name}</a>
  <p><input type="text" class="rssfield" value="{$my_base_url}{$URL_rsscategory, $cat_array[thecat].auto_id}"></p> </li>

  {assign var=lastspacer value=$cat_array[thecat].spacercount}
 {/section}
</li>
</ul>
