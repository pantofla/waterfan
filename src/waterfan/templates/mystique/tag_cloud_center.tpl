<h1 class="title">{#PLIGG_Visual_Tags_Tags#}</h1>

{include file=$the_template."/sort.tpl"}

<div style="line-height:{$tags_max_pts}pt;">
	{section name=customer loop=$tag_number}
		<a href="{$tag_url[customer]}" style="font-size: {$tag_size[customer]}pt">{$tag_name[customer]}</a>
	{/section}
</div>