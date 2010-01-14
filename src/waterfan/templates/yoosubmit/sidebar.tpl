	{if $user_authenticated neq true}
{assign var=sidebar_module value="about_box"}{include file=$the_template_sidebar_modules."/wrapper.tpl"}
	{/if}
	