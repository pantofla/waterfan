<h1>{#PLIGG_Visual_Search_Advanced#}</h1>

<fieldset>
<script>
{literal}
function SEO2submit(form)
{
    var datastr = '';
    var fields  = form.getElementsByTagName('INPUT');
    for (var i=0; i<fields.length; i++)
     	if (fields[i].type=="text")
	    datastr += escape(fields[i].value) + '/';
     	else if (fields[i].type=="radio" && fields[i].checked)
	    datastr += fields[i].name + '/' + escape(fields[i].value) + '/';
    fields  = form.getElementsByTagName('SELECT');
    for (var i=0; i<fields.length; i++)
     	    for (var j=0; j<fields[i].length; j++)
		if (fields[i][j].selected)
	    	    datastr += fields[i].name + '/' + escape(fields[i][j].value) + '/';

	document.location.href=form.action+datastr;
}
{/literal}
</script>

<form method="get" action="{$URL_search}"
{php}
global $URLMethod;
if ($URLMethod==2) print "onsubmit='SEO2submit(this); return false;'";
{/php}
>
<div class="content-left">
<p>
<label>{#PLIGG_Visual_Search_Keywords#}:</label><br />
<small>{#PLIGG_Visual_Search_Keywords_Instructions#}</small><br />
<input name="search" type="text" size="40"/>
</p>
<br />
<p>
<label>{#PLIGG_Visual_Search_Story#}:</label><br />
<select name="slink">
 <option value="3" selected="selected">{#PLIGG_Visual_Search_Story_Title_and_Description#}</option>
 <option value="1">{#PLIGG_Visual_Search_Story_Title#}</option>
 <option value="2">{#PLIGG_Visual_Search_Story_Description#}</option>
</select>
</p>
<br />
<p>
<label>{#PLIGG_Visual_Search_Category#}:</label><br />
 <select name="scategory" >
   {$category_option}
 </select>
</p>
</div>

<div class="content-right">
 <p>
  <label>{#PLIGG_Visual_Search_Comments#}:</label>
  <input class="radio" type="radio" name="scomments" value="1" checked="checked" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input class="radio" type="radio" name="scomments" value="0" /> {#PLIGG_Visual_Search_Advanced_No#}
 </p>
 <p>
  <label>{#PLIGG_Visual_Search_Tags#}:</label>
  <input class="radio" type="radio" name="stags" value="1" checked="checked" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input class="radio" type="radio" name="stags" value="0" /> {#PLIGG_Visual_Search_Advanced_No#}
 </p>
 <p>
  <label>{#PLIGG_Visual_Search_User#}:</label>
  <input class="radio" type="radio" name="suser" value="1" /> {#PLIGG_Visual_Search_Advanced_Yes#} &nbsp;&nbsp;<input class="radio" type="radio" name="suser" value="0" checked="checked" /> {#PLIGG_Visual_Search_Advanced_No#}
 </p>
 <br />

{php}
if (enable_group=='true') {
{/php}
 <p>
  <label>{#PLIGG_Visual_Search_Group#}:</label>
	<select name="sgroup">
    <option value="3" selected="selected">{#PLIGG_Visual_Search_Group_Named_and_Description#}</option>
	<option value="1">{#PLIGG_Visual_Search_Group_Name#}</option>
	<option value="2">{#PLIGG_Visual_Search_Group_Description#}</option>
	</select>
 </p>
{php}
}
{/php}
<p>
<label>{#PLIGG_Visual_Search_Status#}:</label>
	<select name="status">
		<option value="all" selected="selected">{#PLIGG_Visual_Search_Status_All#}</option>
		<option value="published">{#PLIGG_Visual_Search_Status_Published#}</option>
		<option value="queued">{#PLIGG_Visual_Search_Status_Upcoming#}</option>
	</select>
</p>
</div>
<div class="content-clear">
 <center>
  <input name="adv" type="hidden" value="1" />
  <input name="advancesearch" value="&nbsp;Search&nbsp; " type="submit" />
 </center>
</div>

</form>
</fieldset>

