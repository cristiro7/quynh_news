<div class="span12" data-motopress-wrapper-file="page-fullwidth.php" data-motopress-wrapper-type="content">
	<div class="row">
		<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-title.php">
			<section class="title-section">
				<h1 class="title-header">Events </h1>
				<ul class="breadcrumb breadcrumb__t">
					<li><a href="">Home</a></li>
					<li class="divider"></li>
					<li class="active">Events</li>
				</ul>  
			</section> 
		</div>
	</div>
	<div id="content" class="row">
		<div class="span12" data-motopress-type="loop" data-motopress-loop-file="loop/loop-page.php">
			<div id="post-7" class="post-7 page type-page status-publish hentry page">
				<div class="row">
				    <?php foreach($event_show as $key_list => $value_show_list) { ?>
					<div class="span12">
						<div class="title-box clearfix "><h2 class="title-box_primary"><?php print $value_show_list['ten']; ?></h2></div>
						<?php foreach($value_show_list['data'] as $key => $value) { ?> 
    						<?php if($key%2 == 0) { ?>
    						<ul class="posts-grid row-fluid unstyled recent_events">
    						<?php } ?>
    							<li class="span6">
    							    <?php if($value['thumb1'] != '') { ?>
    								<figure class="featured-thumbnail thumbnail">
    									<a href="<?php print _upload_news_l.$value['photo']; ?>" title="<?php print $value['ten']; ?>" rel="prettyPhoto-2090937531">
    										<img src="<?php print _upload_news_l.$value['thumb1']; ?>" alt="<?php print $value['alt']; ?>"/>
    										<span class="zoom-icon"></span>
    									</a>
    								</figure>
    								<?php } ?>
    								<div class="clear"></div>
    								<div class="post_meta">
    									<span class="post_category"></span>
    									<span class="post_date"><time datetime="<?php print date('Y-m-d h:i:s A', $value['date_create'])?>"><?php print date('M d, Y', $value['date_create'])?></time></span>
    									<span class="post_author"><em> by </em><a href="/author/admin/">admin</a></span>
    									<!--<span class="post_comment"><a href="/events-view/snatoque-penatibus-et-magnis-dis-partu-rient-montes-ascetur-ridiculus-mus/" class="comments_link">0 Comments</a></span>-->
    								</div>
    								<h5><a href="event/<?php print $value['tenkodau']; ?>.html" title="<?php print $value['ten']; ?>"><?php print $value['ten']; ?></a></h5>
    								<p class="excerpt"><?php print substr($value['mota'],0,strrpos(substr($value['mota'],0,150)," "))?> ...</p>
    								<a href="event/<?php print $value['tenkodau']; ?>.html" class="btn btn-primary" title="<?php print $value['ten']; ?>">read more</a>
    							</li>
    						<?php if($key%2 != 0) { ?>
    						</ul> 
    						<?php } ?>
						<?php } ?>
						<?php if(count($value_show_list['data']) > 1) { ?>
						<div class="hr"></div>
						<?php } ?>
					</div>
					<?php } ?>
				</div> 
				<div class="clear"></div>
			</div> 
		</div>
	</div>
</div>
