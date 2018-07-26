<?php	
	
	$d->reset();
	$sql = "select photo,link,alt from #_advertise where shows !=0 and position='middle' order by numberic asc,id desc";
	$d->query($sql);
	$advertise = $d->result_array();
?>

<div id="advertise" class="row">
	<div id="advertise-slide">
		<?php for($i=1,$count_slide = count($advertise);$i<=$count_slide;$i++){?>
		<div class="slide">
			<a href="<?=$advertise[$i-1]['link']?>" target="_blank"><img src="http://<?=$config_url.'/'._upload_hinhanh_l.$advertise[$i-1]['photo']?>" alt="<?=$advertise[$i-1]['alt']?>" /></a>
		</div>
		<?php }?>	
	</div>
</div>
<!-- #slider -->

<script type="text/javascript" >
$(document).ready(function(){
	var slider = $('#advertise-slide').bxSlider({
		infiniteLoop: false,
		hideControlOnEnd: true,
		slideWidth: 1000,
		minSlides: 1,
		maxSlides: 1,
		responsive: true,
		touchEnabled: true,
		pager: false
	});
	$(window).resize(function(){
		slider.reloadSlider();
	})
});
</script>