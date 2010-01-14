
{checkActionsTpl location="tpl_login_top"}

<div class="section-left">
	<h2>{#PLIGG_Visual_Login_Login#}</h2>

<form action="{$URL_login}" id="thisform" method="post">
	<p>{#PLIGG_Visual_Login_Have_Account#}</p>
	<form action="{$URL_login}" method="post">	
		<strong>{#PLIGG_Visual_Login_Username#}:</strong><br />
			<input type="text" name="username" class="text-short" value="{if isset($login_username)}{$login_username}{/if}" tabindex="10" /><br />
		<br /><strong>{#PLIGG_Visual_Login_Password#}:</strong><br />
			<input type="password" name="password" class="text-short" tabindex="11" /><br />
		<input type="hidden" name="processlogin" value="1"/>
		<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
		<input type="checkbox" name="persistent" tabindex="12" /> {#PLIGG_Visual_Login_Remember#}
		<br /><br />
		<input type="submit" value="{#PLIGG_Visual_Login_LoginButton#}" class="submit-s" tabindex="13" />
	</form>
</form>
</div>

<div class="section-right">

<form action="{$URL_login}" id="thisform2" method="post">
	<h2>{#PLIGG_Visual_Login_ForgottenPassword#}</h2>
	<p>{#PLIGG_Visual_Login_EmailChangePass#}</p>
		<strong>{#PLIGG_Visual_Register_Email#}:</strong><br />
		<input type="text" name="email" class="text-short" size="25" tabindex="14" id="forgot-email" value="" />
	
		<input type="submit" value="Submit" class="log2" tabindex="15" />
		<input type="hidden" name="processlogin" value="3"/>
		<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
</form>

</div>



	{if $errorMsg ne ""}<div class="section-full">

		<div class="errordiv">{$errorMsg}</div></div>
	{/if} 






<div class="section-full">
<h2>{#PLIGG_Visual_Login_NewUsers#}</h2>
	<p>{#PLIGG_Visual_Login_NewUsersA#}<a href="{$register_url}">{#PLIGG_Visual_Login_NewUsersB#}</a>{#PLIGG_Visual_Login_NewUsersC#}</p>

</div>

{checkActionsTpl location="tpl_login_bottom"}



