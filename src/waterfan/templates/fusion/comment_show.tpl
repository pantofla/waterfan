<ol class="comments">
<li id="c{$comment_id}" class="comment{if $UseAvatars neq "0"} with-avatars{/if}">
{checkActionsTpl location="tpl_pligg_story_comments_single_start"}
<div class="wrap tiptrigger">
   {if $UseAvatars neq "0"} <div class="avatar"><img src="{$Avatar_ImgSrc}" align="absmiddle" /></div>{/if}
   <div class="details">
     <p class="head">
	   {#PLIGG_Visual_Comment_WrittenBy#} {if $is_anonymous}<strong>Unregistered</strong>{/if} <a href="{$user_view_url}">{$user_username}</a> {$comment_age} {#PLIGG_Visual_Comment_Ago#}
			{if $comment_votes lt 0}
				<br /><span id = "show_hide_comment_content-{$comment_id}"> <a href = "javascript://"  onclick="var replydisplay=document.getElementById('comment_content-{$comment_id}').style.display ? '' : 'none'; document.getElementById('comment_content-{$comment_id}').style.display = replydisplay;">{#PLIGG_Visual_Comment_Show_Hide#}</a></span>
			{/if}


			{if $Enable_Comment_Voting eq 1}
				{if $comment_user_vote_count eq 0 && $current_userid neq $comment_author}
					<span class="rate" id="ratebuttons-{$comment_id}">
						<a href="javascript:{$link_shakebox_javascript_voten}" style='text-decoration:none;'>- </a>
						<a id="cvote-{$comment_id}" class="karma">{$comment_votes}</a>
						<a href="javascript:{$link_shakebox_javascript_votey}" style='text-decoration:none;'> +</a>
					</span>
				{/if}
			{/if}

     </p>

             <!-- comment contents -->
        <div class="text">

		{if $comment_votes gte 0}
			{$comment_content}
		{else}
		   <div style="display:none">{$comment_content}</div>
		{/if}


	{if $comment_parent eq 0 && $current_userid neq 0}
	{* display comment form if replying to a comment *}
		<div id="reply-{$comment_id}" style="display:none;">
			<fieldset><legend>{#PLIGG_Visual_Comment_Send#}</legend>
				<form action="" method="POST" id="thisform" style="display:inline;">
					<small><em>{#PLIGG_Visual_Comment_NoHTML#}</em></small><br />
					<textarea name="reply_comment_content-{$comment_id}" id="reply_comment_content-{$comment_id}" rows="3" cols="45"/>{$TheComment}</textarea><br/>
					{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" onClick="openSpellChecker('reply_comment_content-{$comment_id}');" class="log2"/>{/if}
					<input type="submit" name="submit" value="{#PLIGG_Visual_Comment_Submit#}" class="log2" />
					<input type="hidden" name="process" value="newcomment" />
					<input type="hidden" name="randkey" value="{$rand}" />
					<input type="hidden" name="link_id" value="{$comment_link}" />
					<input type="hidden" name="comment_parent_id" value="{$comment_id}" />
					<input type="hidden" name="user_id" value="{$current_userid}" />
				</form>
			</fieldset>
		</div>
	{/if}

       </div>
       <!-- /comment contents -->
     </div>



       <div class="act tip">
         {if $comment_parent eq 0 && $current_userid neq 0}
	     <span class="button reply"><a href = "javascript://" onClick="var replydisplay=document.getElementById('reply-{$comment_id}').style.display ? '' : 'none'; document.getElementById('reply-{$comment_id}').style.display = replydisplay;"><span><span>{#PLIGG_Visual_Comment_Reply#}</span></span></a></span>

         {/if}

		{if $hide_comment_edit neq 'yes'}
				{if $isadmin eq 1}
					<span class="button quote"><a href="{$edit_comment_url}"><span><span>{#PLIGG_Visual_Comment_Edit#}</span></span></a></span>
				{else}
					{if $user_username eq 'you'}
					<span class="button quote"><a href="{$edit_comment_url}"><span><span>{#PLIGG_Visual_Comment_Edit#}</span></span></a></span>
					{/if}
				{/if}
		{/if}
	   </div>

 </div>
{checkActionsTpl location="tpl_pligg_story_comments_single_end"}

</li>
</ol>