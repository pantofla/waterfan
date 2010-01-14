

{if $url_short eq "http://www.collegehumor.com" || $url_short eq "http://www.guba.com" || $url_short eq "http://video.google.com" || $url_short eq "http://video.google.co.uk" || $url_short eq "http://video.google.nl" || $url_short eq "http://youtube.com" || $url_short eq "http://www.youtube.com" || $url_short eq "http://uk.youtube.com" || $url_short eq "http://br.youtube.com" || $url_short eq "http://fr.youtube.com" || $url_short eq "http://ie.youtube.com" || $url_short eq "http://it.youtube.com" || $url_short eq "http://jp.youtube.com" || $url_short eq "http://nl.youtube.com" || $url_short eq "http://pl.youtube.com" || $url_short eq "http://es.youtube.com" || $url_short eq "http://www.livevideo.com" || $url_short eq "http://www.youare.tv" || $url_short eq "http://youare.tv" || $url_short eq "http://stage6.divx.com" || $url_short eq "http://www.metacafe.com" || $url_short eq "http://soapbox.msn.com" || $url_short eq "http://www.gofish.com" || $url_short eq "http://www.ifilm.com" || $url_short eq "http://www.veoh.com" || $url_short eq "http://vimeo.com" || $url_short eq "http://www.vimeo.com" || $url_short eq "http://vids.myspace.com" || $url_short eq "http://one.revver.com" || $url_short eq "http://xoinks.com" || $url_short eq "http://www.xoinks.com" || $url_short eq "http://www.dailymotion.com" || $url_short eq "http://www.liveleak.com"  }
{if $pagename eq "published" || $pagename eq "upcoming"|| $pagename eq "user"}
<a href="{$story_url}"><img src="{$my_base_url}{$my_pligg_base}/modules/video_plus/images/vidalert.gif" border="0" align="absmiddle" alt="this story contains video of '{$title_short}'" /></a>
{/if}
{if $pagename eq "story"}
<div id='basicModal'><h2>
<a href='#' class='basic'><img src="{$my_base_url}{$my_pligg_base}/modules/video_plus/images/play_video.gif" border="0" align="absmiddle" alt="View '{$title_short}'" /></a>
</div>
<div id="basicModalContent" style='display:none'>
<center><iframe src="{$my_base_url}{$my_pligg_base}/modules/video_plus/video_plus.php?id={$link_id}" frameborder='0'  scrolling="no" width="720" height="425" ></iframe></center>

</div>
{/if}{/if}