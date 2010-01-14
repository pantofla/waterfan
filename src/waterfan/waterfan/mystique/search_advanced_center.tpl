<h1 class="title">{#PLIGG_Visual_Search_Advanced#}</h1>


<script>
{literal}
function SEO2submit(form)
{
    var datastr = '';
    var fields  = form.getElementsByTagName('INPUT');
    for (var i=0; i<fields.length; i++)
     	if (fields[i].type=="text")
	    datastr += encodeURIComponent(fields[i].value) + '/';
     	else if (fields[i].type=="radio" && fields[i].checked)
	    datastr += fields[i].name + '/' + encodeURIComponent(fields[i].value) + '/';
    fields  = form.getElementsByTagName('SELECT');
    for (var i=0; i<fields.length; i++)
     	    for (var j=0; j<fields[i].length; j++)
		if (fields[i][j].selected)
	    	    datastr += fields[i].name + '/' + encodeURIComponent(fields[i][j].value) + '/';

	document.location.href=form.action+datastr+'adv/1';
}
{/literal}
</script>
<form method="get" action="{$URL_search}"
{php}
global $URLMethod;
if ($URLMethod==2) print "onsubmit='SEO2submit(this); return false;'";
{/php}
>
<fieldset>
<div class="clearfix">
<div class="alignleft" style="width: 48%;">
<br />
<label>{#PLIGG_Visual_Search_Keywords#}:</label>
<small>{#PLIGG_Visual_Search_Keywords_Instructions#}</small>
<input name="search" type="text" size="40"/>
<br /><br />
<label>{#PLIGG_Visual_Search_Story#}:</label>
	<select name="slink">
		<option value="3" selected="selected">{#PLIGG_Visual_Search_Story_Title_and_Description#}</option>
		<option value="1">{#PLIGG_Visual_Search_Story_Title#}</option>
		<option value="2">{#PLIGG_Visual_Search_Story_Description#}</option>
	</select>
<br /><br />
<label>{#PLIGG_Visual_Search_Category#}:</label>
	<select name="scategory" >
		{$category_option}
	</select>

</div>
<div class="alignleft" style="width: 48%;">
<br />
	<label>{#PLIGG_Visual_Search_Comments#}:</label>
		<input type="radio" name="scomments" value="1" checked="checked" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input type="radio" name="scomments" value="0" /> {#PLIGG_Visual_Search_Advanced_No#}
	<br /><br />
	<label>{#PLIGG_Visual_Search_Tags#}:</label>
		<input type="radio" name="stags" value="1" checked="checked" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input type="radio" name="stags" value="0" /> {#PLIGG_Visual_Search_Advanced_No#}
	<br /><br />

	<label>{#PLIGG_Visual_Search_User#}:</label>
		<input type="radio" name="suser" value="1" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input type="radio" name="suser" value="0" checked="checked" /> {#PLIGG_Visual_Search_Advanced_No#}
	
{php}
if (enable_group=='true') {
{/php}
<br /><br />
<label>{#PLIGG_Visual_Search_Group#}:</label>
	<select name="sgroup">
		<option value="3" selected="selected">{#PLIGG_Visual_Search_Group_Named_and_Description#}</option>
		<option value="1">{#PLIGG_Visual_Search_Group_Name#}</option>
		<option value="2">{#PLIGG_Visual_Search_Group_Description#}</option>												
	</select>
{php}	
}
{/php}
<br /><br />
<label>{#PLIGG_Visual_Search_Status#}:</label>
	<select name="status">
		<option value="all" selected="selected">{#PLIGG_Visual_Search_Status_All#}</option>
		<option value="published">{#PLIGG_Visual_Search_Status_Published#}</option>
		<option value="queued">{#PLIGG_Visual_Search_Status_Upcoming#}</option>
	</select>

</div>
</div>
	<input name="adv" type="hidden" value="1" />
	<input name="advancesearch" value="&nbsp;Search&nbsp; " type="submit" class="submit" />

</fieldset>
</form>

