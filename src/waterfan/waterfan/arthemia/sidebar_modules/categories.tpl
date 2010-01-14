<div id="sidebar-left"> 
	<h3>{#PLIGG_Visual_Category_Title#}</h3>
	<ul class="category-list">
{checkActionsTpl location="tpl_widget_categories_start"}
		{section name=thecat loop=$cat_array start=$start}
			{if $lastspacer eq ""}
				{assign var=lastspacer value=$cat_array[thecat].spacercount}
			{/if}
			{if $cat_array[thecat].spacercount lt $lastspacer}{$cat_array[thecat].spacerdiff|repeat_count:'</ul></li>'}{/if}
			
			<li class="cat-item">
			<a href="{if $pagename eq "upcoming" || $groupview eq "upcoming"}{$URL_queuedcategory, $cat_array[thecat].safename}{else}{$URL_maincategory, $cat_array[thecat].safename}{/if}{php}
global $URLMethod;
if ($URLMethod==2) print "/";
{/php}">{$cat_array[thecat].name}</a>
			{if $cat_array[thecat].principlecat eq 0}</li>{else}<ul>{/if}						
			{assign var=lastspacer value=$cat_array[thecat].spacercount}
		{/section}
{checkActionsTpl location="tpl_widget_categories_end"}
{$lastspacer|repeat_count:'</ul></li>'}
	</ul>
</div>