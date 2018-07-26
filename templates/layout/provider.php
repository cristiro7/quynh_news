<?php
	$d->reset();
	$sql = "select ten_$lang as ten,link,photo,alt from #_custome where shows=1 order by numberic asc,id desc";
	$d->query($sql);
	$provider = $d->result_array();    
?>

<script type="text/javascript" >
	$(document).ready(function(){
		var slider = $('.provider-slide').bxSlider({
			infiniteLoop: false,
			hideControlOnEnd: true,
			slideWidth: 140,
			minSlides: 1,
			maxSlides: 6,
			moveSlides: 1,
			slideMargin: 20,
			responsive: true,
			touchEnabled: true,
			pager: false
		});
		$(window).resize(function(){
			slider.reloadSlider();
		})
	});
</script>

<div id="provider" class="row border_radius">
	<div class="provider-title"><h4>Khách hàng của chúng tôi</h4></div>
    <div class="provider-slide">
		<?php for($i=1, $count = count($provider); $i<=$count; $i++){if($provider[$i-1]['photo'] !=''){?>
		<div class="slide">
			<a href="<?=$provider[$i-1]['link']?>" target="_blank" title="<?=$provider[$i-1]['ten']?>"><img src="http://<?=$config_url.'/'._upload_hinhanh_l.$provider[$i-1]['photo']?>" /></a>
		</div>
		<?php } } ?>
	</div>
</div>