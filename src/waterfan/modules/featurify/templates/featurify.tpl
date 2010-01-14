{*
Featurify Pligg Mod used Animated JavaScript Slideshow ( http://www.leigeber.com/2008/12/javascript-slideshow/ )
by Michael Leigeber ( http://www.leigeber.com/ ) which is available for any personal or commercial projects under
the Creative Commons Li
cense (http://creativecommons.org/licenses/by/3.0/us/)

*}

<div id="couponsHead">

<ul>
<h2><b>Sponsors:</b></h2>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logo.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a></li>
			<li><a href="#"><img style="border:1px solid #ccc;padding:2px;" src="http://waterfangeeks.eu/templates/arthemia/images/logotobe.png" alt=""></a><p>...</p></li>





</ul>
</div>

			
<div id="featurify">
	<ul id="slideshow">
		{section name=fnews loop=$featured}
		<li>
			<h3><a href="{$featured[fnews].link_url}">{$featured[fnews].link_title}</a></h3>
			<span>{$featurify_path}featurify.php?id={$featured[fnews].featurify_id}</span>
			<p>{$featured[fnews].link_summary}</p>
		</li>
		{/section} 
	</ul>
	<div id="wrapper">
		<div id="imgprev" class="imgnav" title="Previous Image"></div>
		<div id="imglink"></div>
		<div id="imgnext" class="imgnav" title="Next Image"></div>
		<div id="image"></div>
		<div id="information" style="opacity:.7; filter:alpha(opacity=70)">
			<h3></h3>
			<p></p>
		</div>
	
		
	</div>	
	<script type="text/javascript" src="{$featurify_path}js/tinyslideshow_compressed.js"></script>	
	{literal}
	<script type="text/javascript">
		$('slideshow').style.display='none';
		$('wrapper').style.display='block';
		var slideshow=new TINY.slideshow("slideshow");
		window.onload=function(){
			slideshow.auto=true;
			slideshow.speed=5;
			slideshow.link="linkhover";
			slideshow.info="information";
			slideshow.init("slideshow","image","imgprev","imgnext","imglink");
		}
	</script>
	{/literal}
</div>