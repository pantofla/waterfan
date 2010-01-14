<!-- Page WYSIWYG Editor -->
<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/admin/css/MooEditable.css" />
<script type='text/javascript' src="{$my_pligg_base}/templates/admin/js/MooEditable.js" ></script>
{literal}
	<script type="text/javascript">
		MooEditable.Actions.extend({
			'h1' : {
				title: 'H1',
				tags: ['h1'],
				arguments: '<h1>',
				command: 'formatBlock',
				mode: 'text'
			},
			'h2' : {
				title: 'H2',
				tags: ['h2'],
				arguments: '<h2>',
				command: 'formatBlock',
				mode: 'text'
			},
			'h3' : {
				title: 'H3',
				tags: ['h3'],
				arguments: '<h3>',
				command: 'formatBlock',
				mode: 'text'
			},
			'p' : {
				title: 'P',
				tags: ['p'],
				arguments: '<p>',
				command: 'formatBlock',
				mode: 'text'
			}
		});
		
		window.addEvent('load', function(){
			$('textarea-1').mooEditable({
				buttons: 'bold,italic,underline,strikethrough,|,h1,h2,h3,p,|,insertunorderedlist,insertorderedlist,indent,outdent,|,undo,redo,|,createlink,unlink,|,urlimage,|,toggleview'
			});

			// Post submit
			$('theForm').addEvent('submit', function(e){
				alert($('textarea-1').value);
				return true;
			});
		});
	</script>
{/literal}

<fieldset><legend>{#PLIGG_Visual_AdminPanel_Page_Edit#}</legend>	
	<form action="" method="POST" id="thisform">
		<label>{#PLIGG_Visual_AdminPanel_Page_Submit_Title#}: </label><input type="text" name="page_title" id="page_title" size="66" value="{$page_title}"/>
		<br />
		<label>{#PLIGG_Visual_AdminPanel_Page_HTML#}</label>
		<br />
		<div class="width100">
			<textarea class="mooeditable" id="textarea-1" name="page_content" name="editable1" rows="30">
				{$page_content}
			</textarea>
		</div>
		<div class="submitbuttonfloat">
		<br />
			<input type="submit" name="submit" value="{#PLIGG_Visual_AdminPanel_Page_Submit#}" class="log2" />
		</div>
		<input type="hidden" name="process" value="edit_page" />
		<input type="hidden" name="randkey" value="{$randkey}" />
		<input type="hidden" name="link_id" value="{$link_id}" />
	</form>
</fieldset>