{*
/**
 * License GNU/LGPL
 * @package Zip_Install
 * @copyright (C) 2007 EXP Team
 * @url http://www.pliggtemplates.eu/
 * @author XrByte <info@exp.ee>, Grusha <grusha@feellove.eu>
**/
*}
{config_load file=$zip_install_lang_conf}
<fieldset><legend><img src="{$my_pligg_base}/modules/zip_install/images/templates.png" align="absmiddle"/> {#PLIGG_ZIP_INSTALL_TEMPLATES#}</legend>
<img src="{$my_pligg_base}/modules/zip_install/images/back.png" align="absmiddle"/> <a href="module.php?module=zip_install"><strong> Back</strong></a><br />
{#PLIGG_ZIP_INSTALL_TEMPLATES_UPLOAD_INSTRUCTIONS#}
<hr />
<form action="module.php?module=zip_install&action=filetem" method="post" enctype="multipart/form-data">
<p>{#PLIGG_ZIP_INSTALL_PACKAGE#}
<input type="file" name="archzip" />
<input type="submit" value="{#PLIGG_ZIP_INSTALL_UPINSTALL#}" />
</p>
</form> 
</fieldset>
{config_load file=zip_install_pligg_lang_conf}