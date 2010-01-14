<a id="c{$comment_id}"></a>
{checkActionsTpl location="tpl_pligg_story_comments_single_start"}
<div class="comment-wrap">
	
<div>
{if $UseAvatars neq "0"}<img src="{$Avatar_ImgSrc}" alt="comment-avatar" class="avatar"/>{/if}      
</div>
	
	


	<div class="comment-details"  id="wholecomment{$comment_id}">
	
		{if $is_anonymous}<b>Unregistered</b>{/if} <a href="{$user_view_url}"><b>{$user_username}</b></a><br/>
		<span>{$comment_age} {#PLIGG_Visual_Comment_Ago#} </span>
		
			
			{if $comment_votes lt 0}
			 - <span id = "show_hide_comment_content-{$comment_id}"> <a href = "javascript://"  onclick="var replydisplay=document.getElementById('comment_content-{$comment_id}').style.display ? '' : 'none'; document.getElementById('comment_content-{$comment_id}').style.display = replydisplay;">{#PLIGG_Visual_Comment_Show_Hide#}</a></span>
			{/if} 
			
			
				{if $comment_parent eq 0 && $current_userid neq 0} 
				- <a href = "javascript://" onClick="var replydisplay=document.getElementById('reply-{$comment_id}').style.display ? '' : 'none'; document.getElementById('reply-{$comment_id}').style.display = replydisplay;">{#PLIGG_Visual_Comment_Reply#}</a>
			{/if}
			
		
			{if $hide_comment_edit neq 'yes'}
				{if $isadmin eq 1}
					- <a href="{$edit_comment_url}">{#PLIGG_Visual_Comment_Edit#}</a>
				{else}	  
					{if $user_username eq 'you'}
						- <a href="{$edit_comment_url}">{#PLIGG_Visual_Comment_Edit#}</a> 
					{/if}
				{/if}
			{/if} 
			
			
			
			
			</div>
			
			
		
	
	
		{if $comment_votes gte 0} 
			<div class="the-comment" id="comment_content-{$comment_id}"><span>{$comment_content}</span></div> 
		{else}
			<div class="the-comment" id= "comment_content-{$comment_id}" style="display:none"><span>{$comment_content}</span></div>
		{/if}


		{if $Enable_Comment_Voting eq 1}<div class="thumb-buttons">
					{#PLIGG_Visual_Comment_Rating#}:  <a id="cvote-{$comment_id}" style='text-decoration: none;'>{$comment_votes}</a>&nbsp;&nbsp;

				{if $comment_user_vote_count eq 0 && $current_userid neq $comment_author}
					<span id="ratebuttons-{$comment_id}">	  
						<a href="javascript:{$link_shakebox_javascript_votey}"><img src="{$my_pligg_base}/templates/silverbullet/images/up.gif" alt="up"/></a> 
						<a href="javascript:{$link_shakebox_javascript_voten}"><img src="{$my_pligg_base}/templates/silverbullet/images/down.gif" alt="down"/></a> 
					</span>
				{/if}
			</div>
			{/if}




	
	
		
			
	
		
	{if $comment_parent eq 0 && $current_userid neq 0} 
	{* display comment form if replying to a comment *}
		<div id="reply-{$comment_id}" style="display:none;" align="left"> 
			<div class="border-sections"><h2>{#PLIGG_Visual_Comment_Send#}</h2>
				<form action="" method="POST" id="thisform" style="display:inline;">
					<label>{#PLIGG_Visual_Comment_NoHTML#}</label>
					<textarea name="reply_comment_content-{$comment_id}" id="reply_comment_content-{$comment_id}" rows="3" cols="55"/>{$TheComment}</textarea><br/>			  
					{if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" onClick="openSpellChecker('reply_comment_content-{$comment_id}');" class="log2"/>{/if}
					<input type="submit" name="submit" value="{#PLIGG_Visual_Comment_Submit#}" class="log2" />
					<input type="hidden" name="process" value="newcomment" />
					<input type="hidden" name="randkey" value="{$rand}" />
					<input type="hidden" name="link_id" value="{$comment_link}" />
					<input type="hidden" name="comment_parent_id" value="{$comment_id}" />
					<input type="hidden" name="user_id" value="{$current_userid}" />
				</form>	
			</div>
		</div>
	{/if}	
	  	
</div>	 

{checkActionsTpl location="tpl_pligg_story_comments_single_end"}

