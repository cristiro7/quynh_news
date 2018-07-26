<div class="span12">
	<div class="row">
		<div class="span12">
			<section class="title-section">
				<h1 class="title-header"> Giới thiệu </h1>
				<ul class="breadcrumb breadcrumb__t">
					<li><a href="">Trang chủ</a></li>
					<li class="divider"></li>
					<li class="active"><?php print $title_bar; ?></li>
				</ul>  
			</section> 
		</div>
	</div>
	
	<div id="content" class="row">
		<div class="span12">
			<div class="page type-page status-publish hentry page">
				<?php if(!empty($about_who_we_are)) { ?>
				<div class="mp-row-fluid motopress-row">
					<div class="mp-span12 motopress-span">
						<div>
							<div class="title-box clearfix type_1">
								<h2 class="title-box_primary"><?php print $about_who_we_are['ten']; ?></h2>
							</div>
						</div>
					</div>
				</div>
				
				<div class="mp-row-fluid motopress-row">
					<div class="mp-span6 motopress-span">
						<div>
							<figure class="featured-thumbnail thumbnail video_preview clearfix">
								<div>
									<a class="preview_image" href="about-us/<?php print $about_who_we_are['tenkodau']; ?>.html" title="<?php print $about_who_we_are['ten']; ?>">
										<?php if($about_who_we_are['video_link']) { ?>
										<img src="http://img.youtube.com/vi/<?php print $about_who_we_are['video_link']; ?>/0.jpg" alt="<?php print $about_who_we_are['alt']; ?>">
										<?php } else { ?>
										<img src="<?php print _upload_news_l.$about_who_we_are['thumb']; ?>" alt="<?php print $about_who_we_are['alt']; ?>">
										<?php } ?>
										<span class="icon-play-circle hover"></span>
									</a>
									<figcaption></figcaption>
								</div>
							</figure>
						</div>
					</div>
					<div class="mp-span6 motopress-span">
						<div class="motopress-text-obj"><?php print $about_who_we_are['mota']; ?></div>
					</div>
				</div>
				
				<div class="mp-row-fluid motopress-row">
					<div class="mp-span12 motopress-span motopress-space" style="min-height: 50px;">
						<div class="motopress-space-obj 45"></div>
					</div>
				</div>
				<?php } ?>
				
				<div class="mp-row-fluid motopress-row">
					<div class="mp-span12 motopress-span">
						<div>
							<div class="title-box clearfix extra">
								<h2 class="title-box_primary"></h2>
							</div>
						</div>
					</div>
				</div>
				
				<?php if(count($abouts) > 0) { ?>
				<div class="mp-row-fluid motopress-row">
					<div class="mp-span12 motopress-span">
						<div class="motopress-text-obj">
							<h3>Tại sao chọn chúng tôi</h3>
						</div>
					</div>
				</div>
				
				<div class="mp-row-fluid motopress-row">
					<?php foreach ($abouts as $key => $about) { ?>
					<div class="mp-span3 motopress-span">
						<div>
							<div class="service-box ">
								<figure class="icon"><img src="images/icon<?php print ($key%7); ?>.png" alt=""/></figure>
								<div class="service-box_body">
									<h2 class="title"><a href="about-us/<?php print $about['tenkodau']; ?>.html" title="<?php print $about['ten']; ?>" target="_self"><?php print $about['ten']; ?></a></h2>
									<div class="service-box_txt"><?php print substr($about['mota'],0,strrpos(substr($about['mota'],0,100)," "))?> ...</div>
								</div>
							</div>
						</div>
					</div>
					<?php } ?>
				</div>
				<?php } ?>
				<div class="clear"></div>
			</div> 
		</div>
	</div>
</div>
