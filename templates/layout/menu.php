<?php $active = "current-menu-item"; ?>
<div class="container">
	<div class="row">
		<nav>
			<div id="header_logo">
				<a href="" title="Thế giới nông sản">
					<img class="logo img-responsive" src="images/logo.png" alt="Thế giới nông sản" width="314" height="124" />
				</a>
			</div>
            <div id="header_hotline">
                <img class="hotline img-responsive" src="images/hotline.png" alt="Hotline Thế giới nông sản" width="327" height="121" />
			</div>			
		
			<ul id="header_links">
				<li><a href="" class="header_links_home <?php if($com == '') print $active; ?>">Trang chủ</a></li>
				<li id="header_link_about"><a href="gioi-thieu/" class="<?php if($com == 'gioi-thieu') print $active; ?>" title="Giới thiệu">Giới thiệu</a></li>
                <li id="header_link_product"><a href="san-pham/" class="<?php if($com == 'san-pham') print $active; ?>" title="Sản phẩm">Sản phẩm</a></li>
                <li id="header_link_service"><a href="dich-vu/" class="<?php if($com == 'dich-vu') print $active; ?>" title="Dịch vụ">Dịch vụ</a></li>
                <!--<li id="header_link_service"><a href="thu-vien-anh/" class="<?php if($com == 'thu-vien-anh') print $active; ?>" title="Thư viện ảnh">Thư viện ảnh</a></li>-->
                <li id="header_link_service"><a href="chung-chi-chat-luong/" class="<?php if($com == 'chung-chi-chat-luong') print $active; ?>" title="Chứng chỉ chất lượng">Chứng chỉ chất lượng</a></li>
                <li id="header_link_new"><a href="tin-tuc/" class="<?php if($com == 'tin-tuc') print $active; ?>" title="Tin tức">Tin tức</a></li>
				<li id="header_link_contact"><a href="lien-he/" class="<?php if($com == 'lien-he') print $active; ?>" title="Liên hệ">Liên hệ</a></li>
				<!--<li id="header_link_sitemap"><a href="site-map/" class="<?php if($com == 'sitemap') print $active; ?>" title="sitemap">sitemap</a></li>-->
			</ul>
		</nav>
	</div>
</div>
