{checkActionsTpl location="tpl_pligg_story_comments_submit_start"}
<h4>{#PLIGG_Visual_Comment_Send#}</h4>

  <div class="clearfix">
    <label>{#PLIGG_Visual_Comment_NoHTML#}</label>
    <textarea name="comment_content" id="comment_content" class="comment-form" rows="8" cols="77"/>{if isset($TheComment)}{$TheComment}{/if}</textarea>
   </div>
   <div class="captcha-box-main"><div id="captcha">{if isset($register_step_1_extra)} {$register_step_1_extra} {/if}</div></div>

   {if $Spell_Checker eq 1}<input type="button" name="spelling" value="{#PLIGG_Visual_Check_Spelling#}" class="submit" onClick="openSpellChecker('comment_content');"/>{/if}
   <input type="submit" name="submit" value="{#PLIGG_Visual_Comment_Submit#}" class="button" />
   <input type="hidden" name="process" value="newcomment" />
   <input type="hidden" name="randkey" value="{$randkey}" />
   <input type="hidden" name="link_id" value="{$link_id}" />
   <input type="hidden" name="user_id" value="{$user_id}" />

{checkActionsTpl location="tpl_pligg_story_comments_submit_end"}
