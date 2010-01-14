<h1>{#PLIGG_Visual_Submit3_Header#}</h1>

<h4>{#PLIGG_Visual_Submit3_Details#}:</h4>
	{checkActionsTpl location="tpl_pligg_submit_step3_start"}
	{* javascript that protects people from clicking away from the story before submitting it *}
	{literal}
	<script>
		// Variable toggles exit confirmation on and foff.
		var gPageIsOkToExit = false;

		function submitEdgeStory()
		{
			// Set a variable so that our "before unload" exit handler knows not to verify
			// the page exit operation.
			gPageIsOkToExit = true;

			// Do the submission.
			// var frm = document.getElementById("thisform");
			frms = document.getElementsByName("ATISUBMIT");
			
			if (frms)
			{
				if (frms[0])
					frms[0].submit();
			}
		}

		window.onbeforeunload = function (event) 
		{
			// See if this is a safe exit.
			if (gPageIsOkToExit)
				return;

			if (!event && window.event) 
	          		event = window.event;
	          		
	   		event.returnValue = "You have not hit the Submit Button to submit your story yet.";
		}
	</script>
	{/literal}


	{php}
		Global $db, $main_smarty, $dblang, $the_template, $linkres, $current_user;

		$linkres=new Link;
		$linkres->id=$link_id = $_POST['id'];
		if (!is_numeric($link_id)) die();
		$linkres->read(FALSE);
		$linkres->print_summary();
		
		$main_smarty->assign('tags', $linkres->tags);
		if (!empty($linkres->tags)) {
			$tags_words = str_replace(",", ", ", $linkres->tags);
			$tags_url = urlencode($linkres->tags);
			$main_smarty->assign('tags_words', $tags_words);
			$main_smarty->assign('tags_url', $tags_url);
		}

		$main_smarty->assign('submit_url', $url);
		$main_smarty->assign('submit_url_title', $linkres->url_title);
		$main_smarty->assign('submit_id', $linkres->id);
		$main_smarty->assign('submit_type', $linkres->type());
		$main_smarty->assign('submit_title', $link_title);
		$main_smarty->assign('submit_content', $link_content);
		$main_smarty->assign('submit_trackback', $trackback);
	{/php}
    <br />
	<form action="{$URL_submit}" method="post" id="thisform" name="ATISUBMIT" >
     <fieldset>
		<input type="hidden" name="phase" value="3" />
		<input type="hidden" name="randkey" value="{$templatelite.post.randkey}" />
		<input type="hidden" name="id" value="{$submit_id}" />
		<input type="hidden" name="trackback" value="{$templatelite.post.trackback|escape:"html"}" />


		<center>
		<input type="button" onclick="gPageIsOkToExit = true; document.location.href='submit.php?id='+this.form.id.value+'&trackback='+this.form.trackback.value;" value="{#PLIGG_Visual_Submit3_Modify#}" class="log2">&nbsp;&nbsp;
		<input type="button" onclick="submitEdgeStory();" value="{#PLIGG_Visual_Submit3_SubmitStory#}" class="submit" />
		</center>
     	{checkActionsTpl location="tpl_pligg_submit_step3_end"}
      </fieldset>
	</form>

{checkActionsTpl location="tpl_submit_step_3_end"}

