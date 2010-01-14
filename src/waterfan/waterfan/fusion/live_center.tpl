
<h1>{#PLIGG_Visual_Live#}</h1>

<ul class="menu">
  <li {if $pagename eq "live"}class="active"{/if}><a href="{$URL_live}"><span><span>{#PLIGG_Visual_Breadcrumb_All#}</span></span></a></li>
  <li {if $pagename eq "live_published"}class="active"{/if}><a href="{$URL_published}"><span><span>{#PLIGG_Visual_Breadcrumb_Published_Tab#}</span></span></a></li>
  <li {if $pagename eq "live_unpublished"}class="active"{/if}><a href="{$URL_unpublished}"><span><span>{#PLIGG_Visual_Breadcrumb_Unpublished_Tab#}</span></span></a></li>
  <li {if $pagename eq "live_comments"}class="active"{/if}><a href="{$URL_comments}"><span><span>{#PLIGG_Visual_Breadcrumb_Comments#}</span></span></a></li>
</ul>

<div class="live2-item">
		<div class="live2-ts"><strong>{#PLIGG_Visual_All_Hour#}</strong></div>
		<div class="live2-type"><strong>{#PLIGG_Visual_All_Action#}</strong></div>
		<div class="live2-votes"><strong><center>{#PLIGG_Visual_All_Votes#}</center></strong></div>
		<div class="live2-story"><div align="center"><strong>{#PLIGG_Visual_All_Story#}</strong></div></div>
		<div class="live2-who"><strong>{#PLIGG_Visual_All_User#}</strong></div>
		<div class="live2-status"><strong>{#PLIGG_Visual_All_State#}</strong></div>
	</div>
	{section name=foo start=0 loop=$items_to_show step=1}
		<div id="live2-{$templatelite.section.foo.index}" class="live2-item">&nbsp;</div>
	{/section}
	<br />

