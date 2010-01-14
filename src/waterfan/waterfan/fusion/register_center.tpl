
<h1>{#PLIGG_Visual_Register#}</h1>


<h3>{#PLIGG_Visual_Register_Description_Title#}</h3>
<p>{#PLIGG_Visual_Register_Description_Paragraph#}</p>
<ul>
 {#PLIGG_Visual_Register_Description_Points#}
</ul>
<br />
<form action="{$URL_register}" method="post" id="thisform">
 <fieldset>
	<p><label>{#PLIGG_Visual_Register_Username#}</label><br />
	{if isset($form_username_error)}{ foreach value=error from=$form_username_error }<p class="error">{$error}</p>{ /foreach }{/if}
	<input type="text" name="reg_username" id="reg_username" value="{if isset($reg_username)}{$reg_username}{/if}" size="25" tabindex="10" maxlength="32"/>
	<span id="checkit-reg-username"><input type="button" name="reg-checkbutton1" id="reg-checkbutton1" value="{#PLIGG_Visual_Register_Verify#}" onclick="checkfield('username', this.form, this.form.reg_username)" class="submit-s" tabindex="11" /></span><br/><span id="reg_usernamecheckitvalue"></span>
    </p>
    <br />
    <p>
	<label>{#PLIGG_Visual_Register_Email#} <span>({#PLIGG_Visual_Register_Lowercase#})</span></label><br />
	{if isset($form_email_error)}{ foreach value=error from=$form_email_error }<p class="error">{$error}</p>{ /foreach }{/if}
	<input type="text" id="reg_email" name="reg_email" value="{if isset($reg_email)}{$reg_email}{/if}" size="25" tabindex="12" maxlength="128"/>
	<span id="checkit-reg-pass"><input type="button" name="reg-checkbutton2" id="reg-checkbutton2" value="{#PLIGG_Visual_Register_Verify#}" onclick="checkfield('email', this.form, this.form.reg_email)" class="submit-s" tabindex="13" /></span><br/><span id="reg_emailcheckitvalue"></span>
    </p>
    <br />
    <p>
	<label>{#PLIGG_Visual_Register_Password#} <span>({#PLIGG_Visual_Register_FiveChar#})</span></label><br />
	{if isset($form_password_error)}{ foreach value=error from=$form_password_error }<p class="error">{$error}</p>{ /foreach }{/if}
	<input type="password" id="reg_password" name="reg_password" value="{if isset($reg_password)}{$reg_password}{/if}" size="25" tabindex="14"/>

	</p>
    <br />
    <p>
	<label>{#PLIGG_Visual_Register_Verify_Password#} </label><br />
	<input type="password" id="reg_verify" name="reg_password2" value="{if isset($reg_password2)}{$reg_password2}{/if}" size="25" tabindex="15"/>
    </p>
	{if isset($register_step_1_extra)}
		<br />
        <p>
		{$register_step_1_extra}
        </p>
	{/if}
    <br />
	<input type="submit" name="submit" value="{#PLIGG_Visual_Register_Create_User#}" tabindex="16" />
	<input type="hidden" name="regfrom" value="full"/>
 </fieldset>
</form>
