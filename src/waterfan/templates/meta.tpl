{* define your meta data here *}

	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
	<meta name="google-site-verification" content="9xNxDvZnuzxPGUiVFlKS6YjMqTjdLp8XbjPVfFT2ug8" />
		
{if $meta_description neq ""}
	<meta name="description" content="{$meta_description}" />
{else}
	<meta name="description" content="{#PLIGG_Visual_What_Is_Pligg_Text#}" />
{/if}

{if $meta_keywords neq ""}
	<meta name="keywords" content="{$meta_keywords}" />
{else}
	<meta name="keywords" content="offers,deals,latest,tech,pc,mobile,laptop,geek,iphone,android,maemo,netbook,web 2.0,eshops,shopping" />
{/if}
	<meta name="Language" content="{#PLIGG_Visual_Meta_Language#}" />
	<meta name="Robots" content="All" />
		
{* the extra tabs are to make it lineup when viewing the source *}