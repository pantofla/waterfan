
<li class="comment{if $UseAvatars neq "0"} withAvatars{/if}">
 <div class="comment-head">
   {if $UseAvatars neq "0"}<div class="avatar-box"><img src="{$Avatar_ImgSrc}" alt="{$user_username}" align="absmiddle"/></div>{/if}
   <div class="author">
     {#PLIGG_Visual_Comment_WrittenBy#} {if $is_anonymous}<b>Unregistered</b>{/if} <span style="text-transform:capitalize"><a href="{$user_view_url}">{$user_username}</a></span><br />  {$comment_age} {#PLIGG_Visual_Comment_Ago#}
   </div>

   {if $Enable_Comment_Voting eq 1}
    <div class="comment-rating">
      <a class="comment-votes" id="cvote-{$comment_id}">{$comment_votes}</a>
    </div>
   {/if}

 <div class="controls bubble">
 	{if $hide_comment_edit neq 'yes'}
 	 {if $isadmin eq 1}<a href="{$edit_comment_url}">{#PLIGG_Visual_Comment_Edit#}</a>{else}
     {if $user_username eq 'you'}<a href="{$edit_comment_url}">{#PLIGG_Visual_Comment_Edit#}</a>{/if}
     {/if}
    {/if}

			{if $comment_parent eq 0 && $current_userid neq 0}
				<a class="js-link reply" href="#replylink-{$comment_id}">{#PLIGG_Visual_Comment_Reply#}</a>
			{/if}

			{if $Enable_Comment_Voting eq 1}
				{if $comment_user_vote_count eq 0 && $current_userid neq $comment_author}
					<span id="ratebuttons-{$comment_id}">
						<a href="javascript:{$link_shakebox_javascript_voten}" class="vote-down">- </a>
						<a href="javascript:{$link_shakebox_javascript_votey}" class="vote-up"> +</a>
					</span>
				{/if}
			{/if}

 </div>
 </div>

 <div class="comment-body clearfix">
 {checkActionsTpl location="tpl_pligg_story_comments_single_start"}

	 {if $comment_votes lt 0}
	  <span class="showhide" id="show_hide_comment_content-{$comment_id}"> <a href = "javascript://"  onclick="var replydisplay=document.getElementById('comment_content-{$comment_id}').style.display ? '' : 'none'; document.getElementById('comment_content-{$comment_id}').style.display = replydisplay;">{#PLIGG_Visual_Comment_Show_Hide#}</a></span>
	 {/if}


		{if $comment_votes gte 0}
			<div class="comment-text" id="comment_content-{$comment_id}">{$comment_content}</div>
		{else}
			<div class="comment-text" id = "comment_content-{$comment_id}" style="display:none">{$comment_content}</div>
		{/if}

	{if $comment_parent eq 0 && $current_userid neq 0}
	{* display comment form if replying to a comment *}
		<div class="inline-comment" id="reply-{$comment_id}">
			<fieldset><legend>{#PLIGG_Visual_Comment_Send#}</legend>

                    <div class="clearfix">
                     <div class="cancel-comment-reply alignright">
          	          <a class="cancel-reply" href="#cancelreplylink-{$comment_id}">Cancel reply</a>
                     </div>
                    </div>
                    <div class="clearfix">
					<label>{#PLIGG_Visual_Comment_NoHTML#}</label>
                      <textarea name="reply_comment_content[{$comment_id}]" id="reply_comment_content-{$comment_id}" rows="3" cols="55"/>{$TheComment}</textarea><br/>
                     <div class="captcha-box">  </div>
		      		  {if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" onClick="openSpellChecker('reply_comment_content-{$comment_id}');" class="submit"/>{/if}

			       <input type="submit" name="submit[{$comment_id}]" value="{#PLIGG_Visual_Comment_Submit#}" class="submit" />

                    </div>
			</fieldset>
		</div>
	{/if}

 {checkActionsTpl location="tpl_pligg_story_comments_single_end"}
 </div>
 <a id="c{$comment_id}"></a>

</li>