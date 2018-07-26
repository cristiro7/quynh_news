<?php		
	$d->reset();
	$sql = "select photo,link,alt from #_banner where shows !=0 and position='left' order by rand() limit 0,1";
	$d->query($sql);
	$banner_left = $d->fetch_array();
	
	$d->reset();
	$sql = "select photo,link,alt from #_banner where shows !=0 and position='right' order by rand() limit 0,1";
	$d->query($sql);
	$banner_right = $d->fetch_array();
?>
<?php if($banner_left != '') { ?>
<div id="banner-left" class="bannerqc">
	<a href="<?=$banner_left['link']?>" target="_blank" > <img src="http://<?=$config_url.'/'._upload_hinhanh_l.$banner_left['photo']?>" /></a>	
</div>
<!-- #banner-left -->
<?php } ?>

<?php if($banner_right != '') { ?>
<div id="banner-right" class="bannerqc">
	<a href="<?=$banner_right['link']?>" target="_blank" > <img src="http://<?=$config_url.'/'._upload_hinhanh_l.$banner_right['photo']?>" /></a>	
</div>
<!-- #banner-left -->
<?php } ?>