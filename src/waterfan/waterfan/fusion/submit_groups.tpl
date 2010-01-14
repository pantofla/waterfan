{if $enable_group eq "true" && $group_allow eq 1}
<h1>{#PLIGG_Visual_Submit_A_New_Group#}</h1>
{if $error}<p class="error">{$error}</p>{/if}
	<form action="{$URL_submit_groups}" method="post" name="thisform" id="thisform" enctype="multipart/form-data">
       <p>
		<label>{#PLIGG_Visual_Submit_Group_Title#} <span>({#PLIGG_Visual_Group_Submit_TitleInstruction#})</span>:</label><br/>
		<input type="text" id="group_title" class="text" name="group_title" size="60" maxlength="120" />
  	   </p>
       <br/>
       <p>
        <label>{#PLIGG_Visual_Submit_Group_Description#} <span>({#PLIGG_Visual_Group_Submit_DescriptionInstruction#})</span>:</label><br/>
		<textarea name="group_description" rows="10" cols="60" maxlength="600" id="group_description" ></textarea><br />
       </p>
		<br />

		<label>{#PLIGG_Visual_Submit_Group_Privacy#}: &nbsp;</label>
			<select name="group_privacy">
				<option value = "pubic">{#PLIGG_Visual_Submit_Group_Public#}</option>
				<option value = "private">{#PLIGG_Visual_Submit_Group_Private#}</option>
				<option value = "restricted">{#PLIGG_Visual_Submit_Group_Restricted#}</option>
			</select>
		<br/>{#PLIGG_Visual_Group_Submit_PrivacyInstruction#}<br/>
        <br />
        <p>
		<label>{#PLIGG_Visual_Submit_Group_Mail_Friends#} <span>({#PLIGG_Visual_Group_Submit_Mail_Friends_Desc#})</span>:</label><br />
		<textarea type="text" id="group_mailer" rows="4" cols="60" name="group_mailer" ></textarea>
        </p>
        <br />
        <p>
		<label>{#PLIGG_Visual_Submit_Group_vote_to_publish#} <span>({#PLIGG_Visual_Group_Submit_NoOfVoteInstruction#})</span>:</label><br/>
		<input type="text" id="group_vote_to_publish" size="4" name="group_vote_to_publish" ><br />
        </p>
        <br />
        <p>
		<input type="submit" value="{#PLIGG_Visual_Submit_Group_create#}" class="submit" />
        </p>
	</form>


{else}
	{#PLIGG_Visual_Group_Disabled#}
{/if}
