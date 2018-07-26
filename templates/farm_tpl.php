<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>Hệ thống trang trại
</div>

<div class="news">
	<h1 class="page-heading bottom-indent"><?php print $title; ?></h1>
	<div class="row">
		<div class="col-xs-12 col-sm-12">
			<?php foreach($news as $key => $new){?>
			<div class="box-news">
				<div class="box-news-img col-sm-3 transitionAll"><a href="http://<?=$config_url.'/he-thong-trang-trai/'.$new['tenkodau']?>.html">
                    <?php if($new['thumb2'] != '') { ?>
                    <img src="http://<?=$config_url.'/'._upload_news_l.$new['thumb2']?>" alt="<?=$new['alt']?>" /></a>
                    <?php } else { ?>
                    <img src="http://<?=$config_url.'/images/no_photo.jpg'?>" alt="No photo" /></a>
                    <?php } ?>
                </div>
				<div class="box-news-name"><a href="http://<?=$config_url.'/he-thong-trang-trai/'.$new['tenkodau']?>.html" class="transitionAll" ><?=$new['ten']?></a> <span>(<?=date('d-m-Y',$new['date_create'])?>)</span></div>
				<div class="box-news-des"><?=$new['mota']?></div>
				<div class="box-news-readmore"><a href="http://<?=$config_url.'/he-thong-trang-trai/'.$new['tenkodau']?>.html" class="transitionAll"></a></div>
			</div>
			<?php } ?>
			<div class="col-sm-12 paging"><?=$paging['paging']?></div>
		</div>
	</div>
</div>
