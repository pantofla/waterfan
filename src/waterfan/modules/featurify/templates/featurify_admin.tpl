{config_load file=featurify_lang_conf}
<div id="featurify">
	<fieldset>
		<legend>{#PLIGG_Featurify#}</legend>
		<p>
			A  <a href="http://www.netwaver.com/?page_id=105" target="_blank">Featured Content Gallery</a>
			Pligg mod that allows you to create an automated rotating image gallery of your stories.
		</p>
		<table cellpadding="0" cellspacing="0">
			<thead>
			<tr class="odd">
				<th>{#PLIGG_Featurify_ID#}</th>
				<th>{#PLIGG_Featurify_Title#}</th>	
				<th>{#PLIGG_Featurify_Status#}</th>
				<th>{#PLIGG_Featurify_Actions#}</th>
			</tr>	
			</thead>		
			<tbody>
			{section name=featured loop=$news}
			<tr>
				<td width="130">{$news[featured].featurify_link_id}</td>
				<td>{$news[featured].featurify_link_title}</td>
				<td width="100">
					{if $news[featured].featurify_enabled eq "Yes"}
					<img src="{$featurify_path}/images/enabled.gif" alt="Yes" />
					{else}
					<img src="{$featurify_path}/images/disabled.png" alt="No" />
					{/if}
				</td>
				<td>
					<a href="#" onclick="window.open('{$featurify_URL}&amp;action=view_image&amp;id={$news[featured].featurify_id}', null, 'width=300, height=300, top=50, left=50, status=yes, toolbar=no, menubar=no, location=no, resizable=yes, scrollbars=no');">{#PLIGG_Featurify_ViewImage#}</a> &nbsp;|&nbsp;
					<a href="{$featurify_URL}&amp;action=editfeatured&amp;id={$news[featured].featurify_id}">{#PLIGG_Featurify_Edit#}</a> &nbsp;|&nbsp;
					<a href="{$featurify_URL}&amp;action=manage_news&amp;delete=delete&amp;id={$news[featured].featurify_id}">{#PLIGG_Featurify_Delete#}</a>
				</td>
			</tr>
			{/section}	
			</tbody>
		</table>
		<br />
		<a href="{$featurify_URL}&amp;action=addfeatured"><img src="{$featurify_path}/images/add.gif" alt="Add Featured News" /></a>
	</fieldset>
</div>
{config_load file=featurify_pligg_lang_conf}