<div id="info" class="col-sm-9">
	
	<div class="row">
		<div class="i-title"><h3><?=$title_bar?></h3></div>
		<div class="i-content">
			<?php for($i=1,$count = count($factory); $i<=$count;$i++){?>
			<div class="box-news">
				<div class="box-news-img col-sm-3 transitionAll"><a href="http://<?=$config_url.'/xuong-san-xuat/'.$factory[$i-1]['tenkodau']?>.html">
                    <?php if($factory[$i-1]['thumb'] != '') { ?>
                    <img src="http://<?=$config_url.'/'._upload_hinhanh_l.$factory[$i-1]['thumb']?>" alt="<?=$factory[$i-1]['alt']?>" /></a>
                    <?php } else if($factory[$i-1]['link'] != '') { ?>
                    <img src="http://img.youtube.com/vi/<?=$factory[$i-1]['link']?>/hqdefault.jpg" alt="<?=$factory[$i-1]['alt']?>" /></a>
                    <?php } else { ?>
                    <img src="http://<?=$config_url.'/images/no_photo.jpg'?>" alt="No photo" /></a>
                    <?php } ?>
                </div>
				<div class="box-news-name"><a href="http://<?=$config_url.'/xuong-san-xuat/'.$factory[$i-1]['tenkodau']?>.html" class="transitionAll" ><?=$factory[$i-1]['ten']?></a> <span>(<?=date('d-m-Y',$factory[$i-1]['date_create'])?>)</span></div>
				<div class="box-news-des"><?=$factory[$i-1]['mota']?></div>
				<div class="box-news-readmore"><a href="http://<?=$config_url.'/xuong-san-xuat/'.$factory[$i-1]['tenkodau']?>.html" class="transitionAll"></a></div>
			</div>
			<?php } ?>
			<div class="col-sm-12 paging"><?=$paging['paging']?></div>
		</div>
	</div>
	
</div>