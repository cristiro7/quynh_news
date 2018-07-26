<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>
    <span class="navigation_page">
        <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
            <a itemprop="url" href="dich-vu/" title="Dịch vụ">
            <span itemprop="title">Dịch vụ</span></a>
        </span>
        <span class="navigation-pipe">&gt;</span><?php print $service_detail['ten']; ?>
    </span>
</div>

<div class="rte box-news-detail">
	<h1 class="page-heading bottom-indent"><?php print $service_detail['ten']; ?></h1>
	<div class="row">
		<div class="col-xs-12 col-sm-12">
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
            <div class="like facebook">
				<div id="fb-root"></div><script src="http://connect.facebook.net/vi_VN/all.js#xfbml=1"></script>
				<fb:like href="<?=getCurrentPageURL()?>"  send="false" layout="button_count" width="80" show_faces="true" font="arial"></fb:like>
			</div>
		</div>
        
        <div class="col-xs-12 col-sm-12 desc">
			<?=stripcslashes($service_detail['mota'])?>
		</div>
        
        <div class="col-xs-12 col-sm-12">
			<?=stripcslashes($service_detail['noidung'])?>
		</div>
	</div>
    
    <h2>Các dịch vụ khác</h2>
    <div class="row">
		<div class="col-xs-12 col-sm-12">
			<ul class="o-nav">
				<?php for($i=1; $i<=count($services); $i++){?>
				<li>
					<a href="http://<?=$config_url.'/dich-vu/'.$services[$i-1]['tenkodau']?>.html" class="transitionAll"><i class="fa fa-caret-right"></i> <?=$services[$i-1]['ten']?> <span>(<?=date('d-m-Y',$services[$i-1]['date_create'])?>)</span></a>
				</li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>
