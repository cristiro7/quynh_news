<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>Dịch vụ
</div>

<div class="news">
	<h1 class="page-heading bottom-indent"><?php print $title; ?></h1>
	<div class="row">
		<div class="col-xs-12 col-sm-12">
			<?php foreach($services as $key => $service){?>
			<div class="box-news">
				<div class="box-news-img col-sm-3 transitionAll"><a href="http://<?=$config_url.'/dich-vu/'.$service['tenkodau']?>.html">
                    <?php if($service['thumb'] != '') { ?>
                    <img src="http://<?=$config_url.'/'._upload_news_l.$service['thumb2']?>" alt="<?=$service['alt']?>" /></a>
                    <?php } else { ?>
                    <img src="http://<?=$config_url.'/images/no_photo.jpg'?>" alt="No photo" /></a>
                    <?php } ?>
                </div>
				<div class="box-news-name"><a href="http://<?=$config_url.'/dich-vu/'.$service['tenkodau']?>.html" class="transitionAll" ><?=$service['ten']?></a> <span>(<?=date('d-m-Y',$service['date_create'])?>)</span></div>
				<!--<div class="box-news-des"><?=$service['mota']?></div>-->
				<div class="box-news-readmore"><a href="http://<?=$config_url.'/dich-vu/'.$service['tenkodau']?>.html" class="transitionAll"></a></div>
			</div>
			<?php } ?>
			<div class="col-sm-12 paging"><?=$paging['paging']?></div>
		</div>
	</div>
</div>
