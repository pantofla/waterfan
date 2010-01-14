<h1 class="title">{#PLIGG_Visual_Login#}</h1>


{if $errorMsg ne ""}
	<p class="error">{$errorMsg}</p>
{/if}
{checkActionsTpl location="tpl_login_top"}

<div class="clearfix">
<div class="alignleft" style="width: 48%;">
<form action="{$URL_login}" id="thisform" method="post">
  <fieldset>
	<h4>{#PLIGG_Visual_Login_Login#}</h4>
	<p>{#PLIGG_Visual_Login_Have_Account#}</p>
	<form action="{$URL_login}" method="post">
		<strong>{#PLIGG_Visual_Login_Username#}:</strong><br />
			<input type="text" name="username" class="login" value="{if isset($login_username)}{$login_username}{/if}" tabindex="10" /><br />
		<br /><strong>{#PLIGG_Visual_Login_Password#}:</strong><br />
			<input type="password" name="password" class="login" tabindex="11" /><br />
		<input type="hidden" name="processlogin" value="1"/>
		<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
		<input type="checkbox" name="persistent" tabindex="12" /> {#PLIGG_Visual_Login_Remember#}
		<br /><br />
		<input type="submit" value="{#PLIGG_Visual_Login_LoginButton#}" class="submit-s" tabindex="13" />
	</form>
  </fieldset>
</form>
</div>

<div class="alignleft" style="width: 48%;">
<form action="{$URL_login}" id="thisform2" method="post">
  <fieldset>
	<h4>{#PLIGG_Visual_Login_ForgottenPassword#}</h4>
	<p>{#PLIGG_Visual_Login_EmailChangePass#}</p>
		<strong>{#PLIGG_Visual_Register_Email#}:</strong><br />
		<input type="text" name="email" size="25" tabindex="14" id="forgot-email" value="" />
		<br /><br />
		<input type="submit" value="Submit" class="log2" tabindex="15" />
		<input type="hidden" name="processlogin" value="3"/>
		<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
  </fieldset>
</form>

</div>
</div>

<h4>{#PLIGG_Visual_Login_NewUsers#}</h4>
<p>{#PLIGG_Visual_Login_NewUsersA#}<a href="{$register_url}">{#PLIGG_Visual_Login_NewUsersB#}</a>{#PLIGG_Visual_Login_NewUsersC#}</p>

{checkActionsTpl location="tpl_login_bottom"}
