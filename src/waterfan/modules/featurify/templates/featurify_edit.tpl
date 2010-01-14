{config_load file=featurify_lang_conf}
<div id="featurify">
	<fieldset>
		<legend>{#PLIGG_Featurify#}</legend>
		<p align="right"><a href="{$featurify_URL}"><img src="{$featurify_path}/images/manage.gif" alt="Manage Featured News" /></a></p>
		<form action="{$featurify_URL}&amp;action=editfeatured" method="post" enctype="multipart/form-data">
			<input type="hidden" value="{$news[0].featurify_id}" id="id" name="id">
			<table cellpadding="0" cellspacing="0">
				<thead>
				<tr class="odd">
					<th colspan="2">{#PLIGG_Featurify_Edit2#}</th>
				</tr>
				</thead>
				<tbody>
				{if $msg ne ''}
					<tr>
						<td colspan="2"><div class="success">{$msg}</div></td>
					</tr>
				{/if}
				{if $err ne ''}
					<tr>
						<td colspan="2"><div class="error">{$err}</div></td>
					</tr>
				{/if}
					<tr>
						<td width="200">{#PLIGG_Featurify_ID#}</td>
						<td><input type="text" id="featurify_link_id" name="featurify_link_id" value="{$news[0].featurify_link_id}" /></td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Title2#}</td>
						<td><input type="text" id="featurify_link_title" name="featurify_link_title" value="{$news[0].featurify_link_title}" /></td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Status#}?</td>
						<td>
							<input type="radio" id="status" name="status" value="Yes" {if $news[0].featurify_enabled eq 'Yes'}checked="checked"{/if} />Yes
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							<input type="radio" name="status" value="No" {if $news[0].featurify_enabled eq 'No'}checked="checked"{/if} />No
						</td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Image#}</td>
						<td><input type="file" name="image" /></td>
					</tr>
					<tr>
						<td valign="top">{#PLIGG_Featurify_CurrentImage#}</td>
						<td><img src="{$featurify_URL}&amp;action=view_image&amp;id={$news[0].featurify_id}" alt="{$news[0].featurify_link_title}" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="submit" value="Edit Featured News" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</fieldset>
</div>
{config_load file=featurify_pligg_lang_conf}