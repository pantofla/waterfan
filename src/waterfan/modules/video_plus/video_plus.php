<?php
// Supported Sites
//////////////////
// Google Video 1
// YouTube 2
// Xoinks 3
// Revver 4
// My Space 5
// Vimeo 6
// Veoh  7
// MetaCafe 8
// iFilm 9
// Guba 10
// Daily Motion 11
// Stage6Divx 12
// MSN Soapbox 13
// Live Video 14
// GoFish 15
// YouAreTv 16
// LiveLeak 17
// CollegeHumor 18
// putfile.com 19

include('../../config.php');

$id = mysql_real_escape_string(strip_tags($_GET['id']));
$play_query = mysql_query("SELECT link_votes,link_tags,link_url FROM " . table_links . " WHERE link_id=\"$id\" LIMIT 1");
$play_array = mysql_fetch_array($play_query);
$play = $play_array['link_url'];
$tags = $play_array['link_tags'];


function embed_video($url){






// code to display putfile.com
if (preg_match("/http:\/\/media.putfile.com\/([0-9a-zA-Z-_-]*)(.*)/i", $url, $matches)) {
 return '<object type="application/x-shockwave-flash" data="http://feat.putfile.com/flow/putfile.swf?videoFile='.$matches[1].'" height="349" width="420" align="middle">'.
  '<param name="movie" value="http://feat.putfile.com/flow/putfile.swf?videoFile='.$matches[1].'" />'.
  '<param name="quality" value="high" />'.
'<param name="allowFullScreen" value="false" />'.
'<param name="allowScriptAccess" value="always" />'.
  '<embed src="http://feat.putfile.com/flow/putfile.swf?videoFile='.$matches[1].'" allowFullScreen="true" allowScriptAccess="always" height="349" width="420"></embed>'.
'</object>';
}

    // code to display Google Video .com
    if (preg_match("/http:\/\/video.google.com\/videoplay\?docid=([0-9\-]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="426">'.
                           '<embed src="http://video.google.com/googleplayer.swf?docId='.$matches[1].'" type="application/x-shockwave-flash" width="700" height="326" />'.
                           '</object>';
    }
 // code to display Google Video .nl
    if (preg_match("/http:\/\/video.google.nl\/videoplay\?docid=([0-9\-]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="426">'.
                           '<embed src="http://video.google.com/googleplayer.swf?docId='.$matches[1].'" type="application/x-shockwave-flash" width="700" height="400" />'.
                           '</object>';
    }

    // code to display Google Video co.uk
    if (preg_match("/http:\/\/video.google.co.uk\/videoplay\?docid=([0-9\-]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                           '<embed src="http://video.google.co.uk/googleplayer.swf?docId='.$matches[1].'" type="application/x-shockwave-flash" width="400" height="400" />'.
                           '</object>';
    }

    // code to display YouTube WWW
    if (preg_match("/http:\/\/www.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://www.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparent" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=0" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube NO WWW
    if (preg_match("/http:\/\/youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://www.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparent" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=0" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

 // code to display YouTube United Kingdom
    if (preg_match("/http:\/\/uk.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://uk.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparent" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Brazil
    if (preg_match("/http:\/\/br.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://br.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube France
    if (preg_match("/http:\/\/fr.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://fr.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Ireland
    if (preg_match("/http:\/\/ie.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://ie.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Italy
    if (preg_match("/http:\/\/it.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://it.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Japan
    if (preg_match("/http:\/\/jp.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://jp.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Netherland
    if (preg_match("/http:\/\/nl.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://nl.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Poland
    if (preg_match("/http:\/\/pl.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://pl.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }

    // code to display YouTube Spain
    if (preg_match("/http:\/\/es.youtube.com\/watch\?v=([0-9a-zA-Z-_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
               '<param name="movie" value="http://es.youtube.com/v/'.$matches[1].'" />'.
               '<param name="wmode" value="transparnt" />'.
               '<embed src="http://www.youtube.com/v/'.$matches[1].'&autoplay=1" type="application/x-shockwave-flash" wmode="transparent" width="700" height="400" />'.
               '</object>';
    }
	
	if (preg_match("/http:\/\/vbox7.com\/play:([0-9a-zA-Z-_]*)/i", $url, $matches)) {
return '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="450" height="403" />'.
'<param name="movie" value="http://i47.vbox7.com/player/ext.swf?vid='.$matches[1].'" />'.
'<param name="quality" value="high" />'.
'<embed src="http://i47.vbox7.com/player/ext.swf?vid='.$matches[1].'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="450" height="403" />'.
'</embed>'.
'</object>';
}

//Code to display vbox7 with www
if (preg_match("/http:\/\/www.vbox7.com\/play:([0-9a-zA-Z-_]*)/i", $url, $matches)) {
return '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="450" height="403" />'.
'<param name="movie" value="http://i47.vbox7.com/player/ext.swf?vid='.$matches[1].'" />'.
'<param name="quality" value="high" />'.
'<embed src="http://i47.vbox7.com/player/ext.swf?vid='.$matches[1].'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="450" height="403" />'.
'</embed>'.
'</object>';
}
    

    // code to display Revver
    if (preg_match("/http:\/\/one.revver.com\/watch\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="392" height="480">'.
                        '<param name="movie" value="http://one.revver.com/watch/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed type="application/x-shockwave-flash" src="http://flash.revver.com/player/1.0/player.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" scale="noScale" salign="TL" bgcolor="#ffffff"  wmode="transparent" height="392" width="480" flashvars="mediaId='.$matches[1].'&affiliateId=0" />'.
                    '</object>';
    }

    // code to display My Space
    if (preg_match("/http:\/\/vids.myspace.com\/index.cfm\?fuseaction=vids.individual&VideoID=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="430" height="346">'.
                        '<param name="movie" value="http://vids.myspace.com/index.cfm?fuseaction=vids.individual&VideoID='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://lads.myspace.com/videos/vplayer.swf" flashvars="m='.$matches[1].'&type=video" type="application/x-shockwave-flash" width="430" height="346" />'.
                    '</object>';
    }

    // code to display Vimeo NO WWW!!!
    if (preg_match("/http:\/\/vimeo.com\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="500" height="400">'.
                        '<param name="movie" value="http://vimeo.com/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.vimeo.com/moogaloop.swf?clip_id='.$matches[1].'" quality="best" scale="exactfit" width="500" height="400" type="application/x-shockwave-flash" />'.
                    '</object>';
    }

    // code to display Vimeo WWW
    if (preg_match("/http:\/\/www.vimeo.com\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="500" height="400">'.
                        '<param name="movie" value="http://vimeo.com/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.vimeo.com/moogaloop.swf?clip_id='.$matches[1].'" quality="best" scale="exactfit" width="500" height="400" type="application/x-shockwave-flash" />'.
                    '</object>';
    }

    // code to display Break !!!NOT WORKING!!!
    if (preg_match("/http:\/\/www.break.com\/index\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="400" height="300">'.
                        '<param name="movie" value="http://www.break.com/index/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed width="425" height="350"><param name="movie" value="http://embed.break.com/'.$matches[1].'"></param><embed src="http://embed.break.com/'.$matches[1].'" type="application/x-shockwave-flash" width="425" height="350" />'.
                    '</object>';
    }

    // code to display Veoh
    if (preg_match("/http:\/\/www.veoh.com\/videos\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="485" height="400">'.
                        '<param name="movie" value="http://www.veoh.com/videos/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.veoh.com/multiplayer.swf?type=v&permalinkId='.$matches[1].'" width="485" height="400" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'.
                    '</object>';
    }

    // code to display MetaCafe
    if (preg_match("/http:\/\/www.metacafe.com\/watch\/([0-9a-zA-Z\-\_]*)\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.metacafe.com/watch/'.$matches[1].'/'.$matches[2].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.metacafe.com/fplayer/'.$matches[1].'/'.$matches[2].'.swf" width="700" height="400" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" />'.
                    '</object>';
    }

    // code to display iFilm
    if (preg_match("/http:\/\/www.ifilm.com\/video\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.ifilm.com/video/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed width="700" height="400" src="http://www.ifilm.com/efp" quality="high" bgcolor="000000" name="efp" align="middle" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="flvbaseclip='.$matches[1].'&" />'.
                    '</object>';
    }

    // code to display Guba
    if (preg_match("/http:\/\/www.guba.com\/watch\/([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="326">'.
                        '<param name="movie" value="http://www.guba.com/watch/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.guba.com/a/704270/a/f/root.swf?aid=704270&video_url=http://free.guba.com/uploaditem/'.$matches[1].'/flash.flv&isEmbeddedPlayer=true" quality="high" bgcolor="#FFFFFF" menu="false" width="400px" height="326px" name="root" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'.
                    '</object>';
    }

    // code to display Tubley !!!NOT WORKING!!!
    if (preg_match("/http:\/\/www.tubeley.com\/play.php\?vid=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8" width="450" height="367" id="theMediaPlayer">'.
                        '<param name="movie" value="http://www.tubley.com/play.php?vid='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed type="application/x-shockwave-flash" width="320" height="240" wmode="transparent" data="http://tubeley.com/flvideo/flvplayer.swf?file=http://tubeley.com/flvideo/'.$matches[1].'.flv&autoStart=false"><param name="movie" value="http://tubeley.com/flvideo/flvplayer.swf?file=http://tubeley.com/flvideo/'.$matches[1].'.flv&autoStart=false" /><param name="wmode" value="transparent" />'.
                    '</object>';
    }

    // code to display Daily Motion
    if (preg_match("/http:\/\/www.dailymotion.com\/swf\/([0-9a-zA-Z\-\_]*)(.*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.dailymotion.com/swf/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.dailymotion.com/swf/'.$matches[1].'" type="application/x-shockwave-flash" width="484" height="400" allowfullscreen="true" />'.
                    '</object>';
    }
	

    // code to display MSN Soapbox
    if (preg_match("/http:\/\/soapbox.msn.com\/video.aspx\?vid=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://soapbox.msn.com/video.aspx?vid='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://images.soapbox.msn.com/flash/soapbox1_1.swf" quality="high" width="700" height="364" wmode="transparent" type="application/x-shockwave-flash" pluginspage="http://macromedia.com/go/getflashplayer" flashvars="c=v&v='.$matches[1].'" />'.
                    '</object>';
    }

    // code to display Live Video
    if (preg_match("/http:\/\/www.livevideo.com\/video\/([0-9a-zA-Z\-\_]*)\/([0-9a-zA-Z\-\_]*)\/([0-9a-zA-Z\-\_]*).aspx/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.livevideo.com/flvplayer/embed/'.$matches[2].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.livevideo.com/flvplayer/embed/'.$matches[2].'" type="application/x-shockwave-flash" quality="high" WIDTH="700" HEIGHT="369" wmode="transparent" />'.
                    '</object>';
    }
    // code to display Live Video
    if (preg_match("/http:\/\/www.livevideo.com\/video\/([0-9a-zA-Z\-\_]*)\/([0-9a-zA-Z\-\_]*).aspx/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.livevideo.com/flvplayer/embed/'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.livevideo.com/flvplayer/embed/'.$matches[1].'" type="application/x-shockwave-flash" quality="high" WIDTH="700" HEIGHT="369" wmode="transparent" />'.
                    '</object>';
    }

    // code to display GoFish
    if (preg_match("/http:\/\/www.gofish.com\/([0-9a-zA-Z\-\_]*)\/player.gfp\?videoGfid=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.gofish.com/'.$matches[1].'/player.gfp?videoGfid='.$matches[2].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.gofish.com/player/GFPlayer.swf" id="GFPlayerID" name="GFPlayerID" swliveconnect="true" bgcolor="#FFFFFF" quality="high" wmode="transparent" allowscriptaccess="always" allowfullscreen="true" flashvars="cm=false&tb=true&ap=false&co=false&ct=true&gf=true&loc=external&lp=true&sb=true&cgfid=50-700&pgfid=53-1004&vgfid='.$matches[2].'&ad=false&svr=www.gofish.com" width="700" height="336" />'.
                    '</object>';
    }

    // code to display YouAreTv WWW
    if (preg_match("/http:\/\/www.youare.tv\/watch.php\?id=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="360">'.
                        '<param name="movie" value="http://www.youare.tv/player/yatvplayer.swf?videoID='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.youare.tv/player/yatvplayer.swf?videoID='.$matches[1].'" type="application/x-shockwave-flash" bgcolor="#000000" allowFullScreen="true" width="700" height="360" />'.
                    '</object>';
    }

    // code to display YouAreTv NOWWW
    if (preg_match("/http:\/\/youare.tv\/watch.php\?id=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="360">'.
                        '<param name="movie" value="http://www.youare.tv/player/yatvplayer.swf?videoID='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.youare.tv/player/yatvplayer.swf?videoID='.$matches[1].'" type="application/x-shockwave-flash" bgcolor="#000000" allowFullScreen="true" width="700" height="360" />'.
                    '</object>';
    }

    // code to display LiveLeak NOWWW
    if (preg_match("/http:\/\/liveleak.com\/view\?i=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="360">'.
                        '<param name="movie" value="http://www.liveleak.com/player.swf?autostart=true&token='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.liveleak.com/player.swf?autostart=true&token='.$matches[1].'" type="application/x-shockwave-flash" width="700" height="370" wmode="transparent" />'.
                    '</object>';
    }

    // code to display LiveLeak WWW
    if (preg_match("/http:\/\/www.liveleak.com\/view\?i=([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.liveleak.com/player.swf?autostart=true&token='.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.liveleak.com/player.swf?autostart=true&token='.$matches[1].'" type="application/x-shockwave-flash" width="700" height="400" wmode="transparent" />'.
                    '</object>';
    }
	
	

    // code to display CollegeHumor
    if (preg_match("/http:\/\/www.collegehumor.com\/video:([0-9a-zA-Z\-\_]*)/i", $url, $matches)) {
        return '<object width="700" height="400">'.
                        '<param name="movie" value="http://www.collegehumor.com/video:'.$matches[1].'" />'.
                        '<param name="allowfullscreen" value="true" />'.
                        '<embed src="http://www.collegehumor.com/moogaloop/moogaloop.swf?clip_id='.$matches[1].'" quality="best" width="700" height="400" type="application/x-shockwave-flash" />'.
                    '</object>';
    }

    return '';
}

?>


<?php if($type == 0) { ?>
<div>
<body bgcolor="black">

<?php echo embed_video($play); ?>


</div>
<?php } ?>
