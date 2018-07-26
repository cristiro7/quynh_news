<div class="span12" data-motopress-wrapper-file="index.php" data-motopress-wrapper-type="content">
	<div class="row">
		<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
			<section class="title-section">
				<h1 class="title-header">Blog</h1>
				<ul class="breadcrumb breadcrumb__t">
					<li><a href="">Home</a></li>
					<li class="divider"></li>
					<li class="active">Blog</li></ul>  
			</section> 
		</div>
	</div>
	<div class="row">
		<div class="span8 right" id="content" data-motopress-type="loop" data-motopress-loop-file="loop/loop-blog.php">
			<?php foreach($blog as $key => $value) { ?>
            <div class="post_wrapper">
				<article id="post-71" class="post-71 post type-post status-publish format-standard hentry category-donec-felis-nulla-accumsan-semp post__holder cat-1-id">
					<header class="post-header">
						<h2 class="post-title"><a href="blog/<?php print $value['tenkodau']; ?>.html" title="<?php print $value['ten']; ?>"><?php print $value['ten']; ?></a></h2>
					</header>
					<figure class="featured-thumbnail thumbnail ">
						<a href="blog/<?php print $value['tenkodau']; ?>.html" title="<?php print $value['ten']; ?>"><img src="//" data-src="<?php print _upload_news_l.$value['thumb1']; ?>" alt="<?php print $value['alt']; ?>" /></a>
					</figure>										 
					<div class="post_content">
						<div class="excerpt"><?php print substr($value['mota'],0,strrpos(substr($value['mota'],0,350)," "))?> ...</div>
						<a href="blog/<?php print $value['tenkodau']; ?>.html" class="btn btn-primary">Read more</a>
						<div class="clear"></div>
					</div>
					<div class="post_meta meta_type_line">
						<div class="post_meta_unite clearfix">
							<div class="post_date">
								<i class="icon-calendar"></i>
								<time datetime="2013-03-14T20:28:57">March 14, 2013</time>
							</div>
							<div class="post_author">
								<i class="icon-user"></i>
								<a href="/author/admin/" title="Posts by admin" rel="author">admin</a>
							</div>
							<div class="post_permalink">
								<i class="icon-link"></i>
								<a href="/donec-felis-nulla-accumsan-semp/praesent-vestibulum-aenean-noummy-endrerit-mauris-cum-sociis-natoque-penatibus-et-magnis-dis-parturient-montes-ascetur-ridiculus-mus-null-dui/" title="Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque  penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.">Permalink</a>
							</div>
						</div>
					</div>
				</article>
			</div>
            <?php } ?>
			<div class="pagination pagination__posts">
				<div class="col-sm-12 paging"><?=$paging['paging']?></div>
			</div>
		</div>
		<div class="sidebar span4" id="sidebar" data-motopress-type="static-sidebar" data-motopress-sidebar-file="sidebar.php">
			<div id="categories-2" class="visible-all-devices widget">
				<h3>Categories</h3>
				<ul>
                    <?php foreach($blog as $key => $value) { 
                        if($key < 6) {
                    ?>
					<li class="cat-item cat-item-3"><a href="blog/<?php print $value['tenkodau']; ?>.html" title="<?php print $value['ten']; ?>"><?php print $value['ten']; ?></a></li>
                    <?php } } ?>
				</ul>
			</div> 
		</div>
	</div>
</div>
