
<h1>{#PLIGG_Visual_Login#}</h1>

{checkActionsTpl location="tpl_login_top"}

{if $errorMsg ne ""}<p><div class="error">{$errorMsg}</div></p>{/if}

<div class="content-left">


<form action="{$URL_login}" id="thisform" method="post">

 <fieldset>
   <p>{#PLIGG_Visual_Login_Have_Account#}</p>
   <br />
   <p>
    <label>{#PLIGG_Visual_Login_Username#}:</label><br />
    <input type="text" name="username" size="30" value="{if isset($login_username)}{$login_username}{/if}" tabindex="10" />
   </p>
   <p>
    <label>{#PLIGG_Visual_Login_Password#}:</label><br />
	<input type="password" size="30" name="password" class="login" tabindex="11" /><br />
	<input type="hidden" name="processlogin" value="1"/>
	<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
   </p>
   <p>
   	<input type="checkbox" name="persistent" tabindex="12" class="checkbox" /> <label>{#PLIGG_Visual_Login_Remember#}</label>
   </p>
   <br />
   <p><input type="submit" value="{#PLIGG_Visual_Login_LoginButton#}" class="submit-s" tabindex="13" /></p>
 </fieldset>
</form>

</div>


<div class="content-right">
<form action="{$URL_login}" id="thisform2" method="post">
<fieldset>
    <p>{#PLIGG_Visual_Login_EmailChangePass#}</p>
    <br />

	<p>
     <label>{#PLIGG_Visual_Register_Email#}:</label><br />
	 <input type="text" name="email" size="30" tabindex="14" id="forgot-email" value="" />
	</p>
    <br />
	<p>
     <input type="submit" value="Submit" class="log2" tabindex="15" />
	 <input type="hidden" name="processlogin" value="3"/>
	 <input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
    </p>
</fieldset>
</form>
</div>

<div class="content-clear">

<h3>{#PLIGG_Visual_Login_NewUsers#}</h3>
	<p>{#PLIGG_Visual_Login_NewUsersA#}<a href="{$register_url}">{#PLIGG_Visual_Login_NewUsersB#}</a>{#PLIGG_Visual_Login_NewUsersC#}</p>
</div>


{checkActionsTpl location="tpl_login_bottom"}
