{if $pagename == 'index' && count($templatelite.get) == 0}
	<div class="clearfloat" id="top">
		{$featurify}
	</div>
	<div class="clearfloat" id="middle">
		<img alt="Browse Categories" class="clearfloat" src="{$my_pligg_base}/templates/{$the_template}/images/category.png"/>
		
		{section name=thecat loop=$cat_array start=$start}
			<div {if $templatelite.section.thecat.index % 2}class="category cat-even"{else}class="category cat-odd"{/if}>
				{if $lastspacer eq ""}
					{assign var=lastspacer value=$cat_array[thecat].spacercount}
				{/if}
				<li class="cat-item">
				<span class="cat_title"><a href="{$URL_maincategory, $cat_array[thecat].safename}{php}
		global $URLMethod;
		if ($URLMethod==2) print "/";
		{/php}">{$cat_array[thecat].name} 
				</span><p>{$cat_array[thecat].description}</p></a>						
				{assign var=lastspacer value=$cat_array[thecat].spacercount}
			</div>
		{/section}

	</div>
{/if}

<div id="front-list">
	<!-- START BREADCRUMBS -->
	<h2>
	{if $pagename eq "published" || $pagename eq "index"}{#PLIGG_Visual_Published_News#}{/if}
	{if $pagename neq "story" && $pagename neq "user" && $pagename neq "profile"}
		{if isset($navbar_where.link2) && $navbar_where.link2 neq ""} &#187; <a href="{$navbar_where.link2}">{$navbar_where.text2}</a>{elseif isset($navbar_where.text2) && $navbar_where.text2 neq ""} &#187; {$navbar_where.text2}{/if}
		{if isset($navbar_where.link3) && $navbar_where.link3 neq ""} &#187; <a href="{$navbar_where.link3}">{$navbar_where.text3}</a>{elseif isset($navbar_where.text3) && $navbar_where.text3 neq ""} &#187; {$navbar_where.text3}{/if}
		{if isset($navbar_where.link4) && $navbar_where.link4 neq ""} &#187; <a href="{$navbar_where.link4}">{$navbar_where.text4}</a>{elseif isset($navbar_where.text4) && $navbar_where.text4 neq ""} &#187; {$navbar_where.text4}{/if}
	{/if}
	</h2>
	<hr />
	<!-- END BREADCRUMBS -->
	
	
	{$link_summary_output}
	{checkActionsTpl location="tpl_pligg_pagination_start"}
	{$link_pagination}
	{checkActionsTpl location="tpl_pligg_pagination_end"}
</div>