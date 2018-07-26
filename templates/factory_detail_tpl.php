<div id="info" class="col-sm-9">
	<div class="row detail">
		<div class="i-title"><h3><?=$factory_detail['ten']?></h3> <sub>(<?=date('d-m-Y',$factory_detail['date_create'])?>)</sub></div>
		<div class="i-content">
			<div class="like facebook">
				<div id="fb-root"></div><script src="http://connect.facebook.net/vi_VN/all.js#xfbml=1"></script>
				<fb:like href="<?=getCurrentPageURL()?>"  send="false" layout="button_count" width="80" show_faces="true" font="arial"></fb:like>
			</div>
			<div class="like">
				<a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
				<script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script>
			</div>
			<div class="like">
				<!-- Place this tag where you want the +1 button to render -->
				<g:plusone size="medium"></g:plusone>
				<!-- Place this tag in your head or just before your close body tag -->
				<script type="text/javascript" src="https://apis.google.com/js/plusone.js">
				 {lang: 'vi'}
				</script>
			</div>

		</div>
		
		<div class="i-content">
			<?=stripcslashes($factory_detail['noidung'])?>
		</div>	
	</div>
    
	<div class="row">
		<div class="i-title"><h3>Các bài viết khác</h3></div>
		<div class="i-content">
			<ul class="o-nav">
				<?php for($i=1; $i<=count($factory); $i++){?>
				<li>
					<a href="http://<?=$config_url.'/xuong-san-xuat/'.$factory[$i-1]['tenkodau']?>.html" class="transitionAll"><i class="fa fa-caret-right"></i> <?=$factory[$i-1]['ten']?> <span>(<?=date('d-m-Y',$factory[$i-1]['date_create'])?>)</span></a>
				</li>
				<?php } ?>
			</ul>
		</div>
	</div>
	
</div>