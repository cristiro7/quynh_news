<div class="span12" data-motopress-wrapper-file="single.php" data-motopress-wrapper-type="content">
	<div class="row">
		<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
			<section class="title-section">
				<h1 class="title-header"><?php print $event_detail['ten']; ?></h1>
				<ul class="breadcrumb breadcrumb__t">
					<li><a href="http://livedemo00.template-help.com/wordpress_49141">Home</a></li>
					<li class="divider"></li>
					<li class="active"><?php print $event_detail['ten']; ?></li>
				</ul>  
			</section> 
		</div>
	</div>
	<div class="row">
		<div class="span8 right right" id="content" data-motopress-type="loop" data-motopress-loop-file="loop/loop-single.php">
			<article id="post-1909" class="post-1909 events type-events status-publish hentry post__holder">
				<figure class="featured-thumbnail thumbnail ">
					<img src="//" data-src="<?php print _upload_news_l.$event_detail['thumb2']; ?>" alt="<?php print $event_detail['alt']; ?>">
				</figure>
				<div class="post_content">
					<?php print $event_detail['noidung']; ?>
					<div class="clear"></div>
				</div>
				<div class="post_meta meta_type_line">
					<div class="post_meta_unite clearfix">
						<div class="post_date">
							<i class="icon-calendar"></i>
							<time datetime="<?php print date('Y-m-d h:i:s A', $event_detail['date_create'])?>"><?php print date('M d, Y', $event_detail['date_create'])?></time>
						</div>
						<div class="post_author">
							<i class="icon-user"></i>
							<a href="/author/admin/" title="Posts by admin" rel="author">admin</a>
						</div>
						<div class="post_permalink">
							<i class="icon-link"></i>
							<a href="event/<?php print $event_detail['tenkodau']; ?>.html" title="<?php print $event_detail['ten']; ?>">Permalink</a>
						</div>
					</div>
					<!--
					<div class="post_meta_unite clearfix">
						<div class="post_category">
							<i class="icon-bookmark"></i>No category
						</div>
						<div class="post_tag">
							<i class="icon-tag"></i>No tags
						</div>
					</div>
					<div class="post_meta_unite clearfix">
						<div class="post_comment">
							<i class="icon-comments"></i>
							<span class="comments-link">Comments are closed</span>
						</div>
						<div class="post_views" title="Number of view.">
							<i class="icon-eye-open"></i>230
						</div>
						<div class="post_like">
							<a class="not_voting " title="Only registered users can vote!" date-type="like">
							<i class="icon-thumbs-up"></i>
							<span class="voting_count">0</span> </a>
						</div>
						<div class="post_dislike">
							<a class="not_voting " title="Only registered users can vote!" date-type="dislike">
							<i class="icon-thumbs-down"></i>
							<span class="voting_count">0</span> </a>
						</div>
					</div>
					-->
				</div>
			</article> 
		 
			<script>(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
					if (d.getElementById(id)) {return;}
					js = d.createElement(s); js.id = id;
					js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
					fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
			</script>
		 
			<script type="text/javascript">
				(function() {
					var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
					po.src = '//apis.google.com/js/plusone.js';
					var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
				})();
			</script>
			<ul class="share-buttons unstyled clearfix">
				<li class="twitter">
					<a href="//twitter.com/share?url=http://<?php print isset($config_url) ? $config_url : ''; ?>/event/<?php print $event_detail['tenkodau']; ?>.html&amp;text=<?php print $event_detail['ten']; ?> - http://<?php print isset($config_url) ? $config_url : ''; ?>/event/<?php print $event_detail['tenkodau']; ?>.html" class="twitter-share-button" data-count="horizontal">Tweet this article</a>
					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
				</li>
				<li class="facebook">
					<div id="fb-root"></div>
					<div class="fb-like" data-href="http://<?php print isset($config_url) ? $config_url : ''; ?>/event/<?php print $event_detail['tenkodau']; ?>.html" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="arial"></div>
				</li>
				<li class="google">
					<div class="g-plusone" data-size="medium" data-href="http://<?php print isset($config_url) ? $config_url : ''; ?>/event/<?php print $event_detail['tenkodau']; ?>.html"></div>
				</li>
				<li class="pinterest">
					<a href="javascript:void((function(){var e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','//assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)})());"><img src='//assets.pinterest.com/images/PinExt.png' alt=""/></a>
				</li>
			</ul> 
			<div class="post-author clearfix">
                <!-- Comment google+ -->
                <script src="https://apis.google.com/js/plusone.js">
                </script>
                <div class="g-comments"
                    data-href = "http://<?php print isset($config_url) ? $config_url : ''; ?>/event/<?=$event_detail['tenkodau']?>.html"
                    data-width = "730"
                    data-first_party_property = "BLOGGER"
                    data-view_type = "FILTERED_POSTMOD">
                </div>				
			</div> 
		</div>
		<div class="span4 sidebar" id="sidebar" data-motopress-type="static-sidebar" data-motopress-sidebar-file="sidebar.php">
		    <div id="categories-2" class="visible-all-devices widget">
				<h3>Bài viết liên quan</h3>
				<ul>
                    <?php foreach($event_orther as $key => $value) { ?>
					<li class="cat-item cat-item-3"><a href="event/<?php print $value['tenkodau']; ?>.html" title="<?php print $value['ten']; ?>"><?php print $value['ten']; ?></a></li>
                    <?php } ?>
				</ul>
			</div>
		</div>
	</div>
</div>
