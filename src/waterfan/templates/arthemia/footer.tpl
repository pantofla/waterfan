</div>
<div class="clearfloat" id="front-popular">

{checkActionsTpl location="tpl_pligg_sidebar_stories_u"}

	<div class="clearfloat" id="recentpost">
		{if $pagename eq "published" || $pagename eq "index"}
		<h3>Recent Deals</h3>
		<ul>
			{php}
				$result = mysql_query('SELECT * from ' . table_links . ' WHERE link_status = "published" ORDER BY link_date DESC LIMIT 5');
				while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
					printf("<li>%s votes | <a href='".$this->_vars['my_pligg_base']."/story.php?id=%s'><span style='font-weight:bold'>%s</span></a></li>", $row["link_votes"], $row["link_id"], $row["link_title"]);
				}
			{/php}
		</ul>
		{else}
		<h3>Recent Deals</h3>
		<ul>
			{php}
				$result = mysql_query('SELECT * from ' . table_links . ' WHERE link_status = "published" ORDER BY link_published_date DESC LIMIT 5');
				while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
					printf("<li>%s votes | <a href='".$this->_vars['my_pligg_base']."/story.php?id=%s'><span style='font-weight:bold'>%s</span></a></li>", $row["link_votes"], $row["link_id"], $row["link_title"]);
				}
			{/php}
		</ul>
		{/if}
	</div>

	<div class="clearfloat" id="mostcommented">
		<h3>Most Comments</h3>
		<ul>
			{php}
				$result = mysql_query('SELECT * from ' . table_links . ' ORDER BY link_comments DESC LIMIT 5');
				while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
					printf("<li>%s comments | <a href='".$this->_vars['my_pligg_base']."/story.php?id=%s'><span style='font-weight:bold'>%s</span></a></li>", $row["link_comments"], $row["link_id"], $row["link_title"]);
				}
			{/php}
		</ul>
	</div>

	<div class="clearfloat" id="recent_comments">
	<h3>Most Votes</h3>
		<ul>
			{php}
				$result = mysql_query('SELECT * from ' . table_links . ' ORDER BY link_votes DESC LIMIT 5');
				while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
					printf("<li>%s votes | <a href='".$this->_vars['my_pligg_base']."/story.php?id=%s'><span style='font-weight:bold'>%s</span></a></li>", $row["link_votes"], $row["link_id"], $row["link_title"]);
				}
			{/php}
		</ul>
	</div>
	
</div>


<!-- START FOOTER -->
<div id="footer">
	{checkActionsTpl location="tpl_pligg_footer_start"}
	<span class="subtext">Copyright 2009 {#PLIGG_Visual_Name#} | Ads/Coupons <a href="#">soon</a> | <a href="{$URL_advancedsearch}">{#PLIGG_Visual_Search_Advanced#}</a> | <a href="{$my_base_url}{$my_pligg_base}/rssfeeds.php">{#PLIGG_Visual_RSS_Feeds#}</a> | <a href="mailto:admin@waterfangeeks.eu?subject=we like feedback :-)">Contact us</a>{checkActionsTpl location="tpl_pligg_footer_end"}</span>
</div>
<!-- END FOOTER --> 

{literal}
	<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-12230452-1");
pageTracker._trackPageview();
} catch(err) {}</script>
{/literal}