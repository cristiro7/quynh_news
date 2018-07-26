<div class="span12" data-motopress-wrapper-file="page-faq.php" data-motopress-wrapper-type="content">
	<div class="row">
		<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
			<section class="title-section">
				<h1 class="title-header">FAQs </h1>
				<ul class="breadcrumb breadcrumb__t">
					<li><a href="index.html">Home</a></li>
					<li class="divider"></li><li><a href="about.html">About</a></li>
					<li class="divider"></li> <li class="active">FAQs</li>
				</ul>  
			</section> 
		</div>
	</div>
	<div class="row">
		<div class="span12" id="content" data-motopress-type="loop" data-motopress-loop-file="loop/loop-faq.php">
			<div id="post-12" class="post-12 page type-page status-publish hentry page">
				<div class="clear"></div>
			</div> 
			<dl class="faq-list">
				<?php foreach($faqs as $key => $value) { ?>
                <dt class="faq-list_h">
					<h4 class="marker">Q?</h4>
					<h4><?php print $value['ten']; ?></h4>
				</dt>
				<dd id="post-100" class="faq-list_body">
					<h4 class="marker">A.</h4>
					<p><?php print $value['mota']; ?></p>
				</dd>
                <?php } ?>
			</dl>
            <div class="pagination pagination__posts">
    			<div class="col-sm-12 paging"><?=$paging['paging']?></div>
    		</div>
		</div>
	</div>
</div>
