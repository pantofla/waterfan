<div id="sidebar-ads">
	{include file="./templates/arthemia/ads/ad_sidebar_large.php"}
</div>

{checkActionsTpl location="tpl_pligg_sidebar_start"}

{if $user_authenticated ne true && $name neq "login"}
	<div id="sidebar-top">
		<h3><a href="{$URL_login}">{#PLIGG_Visual_Login_Title#}</a></h3>
		{checkActionsTpl location="tpl_widget_login_start"}
		<form action="{$URL_login}" method="post"> 
			{#PLIGG_Visual_Login_Username#}:<br /><input type="text" name="username" class="login" value="{if isset($login_username)}{$login_username}{/if}" tabindex="40" /><br />
			{#PLIGG_Visual_Login_Password#}:<br /><input type="password" name="password" class="login" tabindex="41" /><br />
			<input type="hidden" name="processlogin" value="1"/>
			<input type="hidden" name="return" value="{$templatelite.get.return|sanitize:3}"/>
			{#PLIGG_Visual_Login_Remember#}: <input type="checkbox" name="persistent" tabindex="42" />
			<input type="submit" value="{#PLIGG_Visual_Login_LoginButton#}" class="submit-s" tabindex="43" />
		</form>
		{checkActionsTpl location="tpl_widget_login_end"}
		
		<p>{#PLIGG_Visual_Login_NewUsersA#} <a href="{$URL_register}">{#PLIGG_Visual_Login_NewUsersB#}</a></p>
	</div>
	<div class="clear"> </div><br />
{/if}

{checkActionsTpl location="tpl_pligg_sidebar_end"}