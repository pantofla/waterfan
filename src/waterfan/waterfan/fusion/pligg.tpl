<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="{#PLIGG_Visual_Language_Direction#}" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	{checkActionsTpl location="tpl_pligg_head_start"}
	{include file="meta.tpl"}

	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/style.css" media="screen" />
	{if $pagename eq "submit"}<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/wick.css" />{/if}

    <!--[if lte IE 6]>
    <script type="text/javascript">
    /* <![CDATA[ */
       blankimgpath = '{$my_pligg_base}/templates/{$the_template}/images/blank.gif';
     /* ]]> */
    </script>
    <style type="text/css" media="screen">
      @import "{$my_pligg_base}/templates/{$the_template}/css/ie6.css";
      body{ldelim} behavior:url("{$my_pligg_base}/templates/{$the_template}/js/ie6hoverfix.htc"); {rdelim}
      img{ldelim} behavior: url("{$my_pligg_base}/templates/{$the_template}/js/ie6pngfix.htc"); {rdelim}
    </style>
    <![endif]-->


	{if $Voting_Method eq 2}
	<link rel="stylesheet" type="text/css" href="{$my_pligg_base}/templates/{$the_template}/css/star_rating/star.css" media="screen" />
	{/if}
    <script type="text/javascript" src="{$my_pligg_base}/templates/{$the_template}/js/jquery.js"></script>
    <script type="text/javascript" src="{$my_pligg_base}/templates/{$the_template}/js/fusion.js"></script>

	{checkForCss}
	{checkForJs}

	{if $pagename neq "published" && $pagename neq "upcoming"}
		{if $Spell_Checker eq 1}			
			<script src="{$my_pligg_base}/3rdparty/speller/spellChecker.js" type="text/javascript"></script>
		{/if}
	{/if}	

	{if $request_category}
		<title>{$pretitle} {$meta_description} {if $pagename eq "upcoming"}| {$posttitle} {/if}| {#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "groups"}
		<title>{#PLIGG_Visual_Name#} | {#PLIGG_Visual_Groups#}</title>
	{elseif $pagename eq "group_story"}
		<title>{$group_name} - {$group_description} | {#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "submit_groups"}
		<title>{#PLIGG_Visual_Name#} | {$posttitle}</title>
	{elseif $pagename eq "upcoming"}
		<title>{#PLIGG_Visual_Name#} | {#PLIGG_Visual_Pligg_Queued#}</title>
	{elseif $pagename eq "published"}
		<title>{#PLIGG_Visual_Name#}</title>
	{elseif $pagename eq "index"}
		<title>{#PLIGG_Visual_Name#} - {#PLIGG_Visual_RSS_Description#}</title>
	{elseif $pagename eq "story"}
		<title>{$pretitle} {$posttitle} | {#PLIGG_Visual_Name#}</title>
	{else}
		<title>{$pretitle} {#PLIGG_Visual_Name#} | {$posttitle}</title>
	{/if}
	
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="{$my_base_url}{$my_pligg_base}/rss.php"/>
	<link rel="icon" href="{$my_pligg_base}/favicon.ico" type="image/x-icon"/>

{literal}
<script type="text/javascript">
/* <![CDATA[ */
 jQuery(document).ready(function(){
  // body .safari class
  if (jQuery.browser.safari) jQuery('body').addClass('safari');

  // layout controls

   jQuery("#layoutcontrol a").click(function() {
     switch (jQuery(this).attr("class")) {
	   case 'setFont' : setFontSize();	break;
	   case 'setLiquid'	: setPageWidth();	break;
	 }
	 return false;
    });
   // set the font size from cookie
   var font_size = jQuery.cookie('fontSize');
   if (font_size == '.7em') { jQuery('body').css("font-size",".7em"); }
   if (font_size == '.95em') { jQuery('body').css("font-size",".95em"); }
   if (font_size == '.8em') { jQuery('body').css("font-size",".8em"); }

   // set the page width from cookie
   var page_width = jQuery.cookie('pageWidth');
   if (page_width) jQuery('#page').css('width', page_width);


  jQuery('#secondary-tabs').minitabs(333, 'slide');

  if (document.all && !window.opera && !window.XMLHttpRequest && jQuery.browser.msie) { var isIE6 = true; }
  else { var isIE6 = false;} ;
  jQuery.browser.msie6 = isIE6;
  if (!isIE6) {
    initTooltips({
		timeout: 6000
   });
  }
  tabmenudropdowns();
  simple_tooltip("a.with-tooltip","tooltip");

  // some jquery effects...
  jQuery('#sidebar ul.nav li ul li a').mouseover(function () {
   	jQuery(this).animate({ marginLeft: "4px" }, 100 );
  });
  jQuery('#sidebar ul.nav li ul li a').mouseout(function () {
    jQuery(this).animate({ marginLeft: "0px" }, 100 );
  });
  // scroll to top
  jQuery("a#toplink").click(function(){
    jQuery('html, body').animate({scrollTop:0}, 'slow');
  });

 });

 /* ]]> */
</script>
{/literal}
		
	{checkActionsTpl location="tpl_pligg_head_end"}
</head>

<body dir="{#PLIGG_Visual_Language_Direction#}" {$body_args}>
  {checkActionsTpl location="tpl_pligg_body_start"}
  <!-- page wrappers (100% width) -->
  <div id="page-wrap1">
    <div id="page-wrap2">
      <!-- page (actual site content, custom width) -->
      <div id="page"{if $pagename neq "user"} class="with-sidebar"{/if}>


		{literal}
			<script type="text/javascript" language="JavaScript">
			function checkForm() {
			answer = true;
			if (siw && siw.selectingSomething)
				answer = false;
			return answer;
			}//
			</script>
		{/literal}

       <!-- main wrapper (side & main) -->
       <div id="main-wrap">
        <!-- mid column wrap -->
    	<div id="mid-wrap">
          <!-- sidebar wrap -->
          <div id="side-wrap">
            <!-- mid column -->
    	    <div id="mid">
              <!-- header -->
              <div id="header">

                {include file=$tpl_header.".tpl"}

              </div><!-- /header -->


              <!-- mid content -->
              <div id="mid-content">

              	{if $pagename eq "published" || $pagename eq "index" || $pagename eq "upcoming"}
                <div id="sortlinks">
                  {#PLIGG_Visual_Pligg_Queued_Sort#} {#PLIGG_Visual_TopUsers_TH_News#}:

                  {if $setmeka eq "" || $setmeka eq "recent"}<span class="active">{#PLIGG_Visual_Recently_Pop#}</span>{else}<a href="{$index_url_recent}">{#PLIGG_Visual_Recently_Pop#}</a>{/if}
				| {if $setmeka eq "today"}<span class="active">{#PLIGG_Visual_Top_Today#}</span>{else}<a href="{$index_url_today}">{#PLIGG_Visual_Top_Today#}</a>{/if}
				| {if $setmeka eq "yesterday"}<span class="active">{#PLIGG_Visual_Yesterday#}</span>{else}<a href="{$index_url_yesterday}">{#PLIGG_Visual_Yesterday#}</a>{/if}
				| {if $setmeka eq "week"}<span class="active">{#PLIGG_Visual_This_Week#}</span>{else}<a href="{$index_url_week}">{#PLIGG_Visual_This_Week#}</a>{/if}
				| {if $setmeka eq "month"}<span class="active">{#PLIGG_Visual_This_Month#}</span>{else}<a href="{$index_url_month}">{#PLIGG_Visual_This_Month#}</a>{/if}
				| {if $setmeka eq "year"}<span class="active">{#PLIGG_Visual_This_Year#}</span>{else}<a href="{$index_url_year}">{#PLIGG_Visual_This_Year#}</a>{/if}
                  </div>
                  {/if}

            	{if $pagename eq "groups"}
                 <div id="sortlinks">
                    {#PLIGG_Visual_Group_Sort#}:

                    	{checkActionsTpl location="tpl_pligg_group_sort_start"}
				  {if $sortby eq "members"}<span class="active">{#PLIGG_Visual_Group_Sort_Members#}</span>{else}<a href="{$group_url_members}">{#PLIGG_Visual_Group_Sort_Members#}</a>{/if}

  				  | {if $sortby eq "name"}<span class="active">{#PLIGG_Visual_Group_Sort_Name#}</span>{else}<a href="{$group_url_name}">{#PLIGG_Visual_Group_Sort_Name#}</a>{/if}
				| {if $sortby eq "newest"}<span class="active">{#PLIGG_Visual_Group_Sort_Newest#}</span>{else}<a href="{$group_url_newest}">{#PLIGG_Visual_Group_Sort_Newest#}</a>{/if}
				| {if $sortby eq "oldest"}<span class="active">{#PLIGG_Visual_Group_Sort_Oldest#}</span>{else}<a href="{$group_url_oldest}">{#PLIGG_Visual_Group_Sort_Oldest#}</a>{/if}
				{checkActionsTpl location="tpl_pligg_group_sort_end"}

                 </div>

         	{/if}

            {checkActionsTpl location="tpl_pligg_breadcrumb_end"}

                {checkActionsTpl location="tpl_pligg_banner_top"}

        		{checkActionsTpl location="tpl_pligg_content_start"}
        			{checkActionsTpl location="tpl_pligg_above_center"}
        			{include file=$tpl_center.".tpl"}
        			{checkActionsTpl location="tpl_pligg_below_center"}
        		{checkActionsTpl location="tpl_pligg_content_end"}


              </div>
              <!-- mid content -->
              </div>
              <!-- /mid -->


              {if $pagename neq "user"}
              <!-- sidebar -->
              <div id="sidebar">
                 {include file=$tpl_right_sidebar.".tpl"}
              </div>
              <!-- /sidebar -->
              {/if}



  </div>
  <!-- /side wrap -->
 </div>
 <!-- /mid column wrap -->
</div>
<!-- /main wrapper -->

<!-- clear main & sidebar sections -->
<div class="clearcontent"></div>
<!-- /clear main & sidebar sections -->

<!-- footer -->
 <div id="footer">
    {checkActionsTpl location="tpl_pligg_banner_bottom"}
   	{include file=$tpl_footer.".tpl"}

 </div>
 <!-- /footer -->

 <div id="layoutcontrol">
   <a href="javascript:void(0);" class="setFont" title="Increase/Decrease text size"><span>SetTextSize</span></a>
   <a href="javascript:void(0);" class="setLiquid" title="Switch between full and fixed width"><span>SetPageWidth</span></a>
 </div>



</div>
<!-- /page -->

</div>
</div>
<!-- /page wrappers -->


<script src="{$my_pligg_base}/templates/xmlhttp.php" type="text/javascript"></script> {* this line HAS to be towards the END of pligg.tpl *}
{checkActionsTpl location="tpl_pligg_body_end"}
</body>
</html>
