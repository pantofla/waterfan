{config_load file=featurify_lang_conf}
<div id="featurify">
	<fieldset>
		<legend>{#PLIGG_Featurify#}</legend>
		<p>
			A  <a href="http://www.netwaver.com/?page_id=105" target="_blank">Featured Content Gallery</a>
			Pligg mod that allows you to create an automated rotating image gallery of your stories.
		</p>
		<form action="{$featurify_URL}&amp;action=addfeatured" method="post" enctype="multipart/form-data">
			<table cellpadding="0" cellspacing="0">
				<thead>
				<tr class="odd">
					<th colspan="3">{#PLIGG_Featurify_AddNew#}</th>
				</tr>
				</thead>
				<tbody>
				{if $msg ne ''}
					<tr>
						<td colspan="3"><div class="success">{$msg}</div></td>
					</tr>
				{/if}
				{if $err ne ''}
					<tr>
						<td colspan="3"><div class="error">{$err}</div></td>
					</tr>
				{/if}
					<tr>
						<td width="200">{#PLIGG_Featurify_ID#}</td>
						<td width="330"><input type="text" id="featurify_link_id" name="featurify_link_id" /></td>
						<td rowspan="5" valign="top">
							<ul>
								<li>All fields are required.</li>
								<li>
									<strong>Featured News ID</strong> is the <em>ID</em> of the news submitted by the users. To know
									what is the <em>ID</em>, logout first from your Pligg site then point your mouse to the
									&quot;<strong>Vote</strong>&quot; link - don't click. When pointing your mouse, you can see in the
									<a href="http://www.jegsworks.com/Lessons/web/basics/statusbar.htm" target="_blank">status bar</a>
									something like:<br />
									<strong>javascript:vote(0,<span class="red">3</span>,0,'d5ec594f11a236ffe5857c8160c5b267',10)</strong><br />
									The second value above ( <em>which is <span class="red"><strong>3</strong></span></em> ) is the News ID.
								</li>
								<li>
									<strong>Featured News Title</strong> is just a fancy title for use in the Admin section. What will be displayed
									in the slideshow is the actual title when the news was submitted, not this one.
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Title2#}</td>
						<td><input type="text" id="featurify_link_title" name="featurify_link_title" /></td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Status#}?</td>
						<td>
							<input type="radio" id="status" name="status" value="Yes" checked="checked" />Yes
							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
							<input type="radio" name="status" value="No" />No
						</td>
					</tr>
					<tr>
						<td>{#PLIGG_Featurify_Image#}</td>
						<td><input type="file" name="image" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="submit" value="Add Featured News" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<br />
		<a href="{$featurify_URL}"><img src="{$featurify_path}/images/manage.gif" alt="Manage Featured News" /></a>
	</fieldset>
</div>
{config_load file=featurify_pligg_lang_conf}