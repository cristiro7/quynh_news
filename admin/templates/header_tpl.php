<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php">News</a>
    </div>

    <ul class="nav navbar-top-links navbar-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="http://<?= $config_url ?>/admin/index.php?com=user&act=admin_edit">
                        <i class="fa fa-user fa-fw"></i> Thông tin tài khoản</a>
                </li>
                <li><a href="http://<?= $config_url ?>/admin/logout.php">
                        <i class="fa fa-sign-out fa-fw"></i> Thoát</a>
                </li>
            </ul>
        </li>
    </ul>

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="http://<?= $config_url ?>/" target="_blank"><i class="fa fa-home fa-fw"></i> Website</a>
                </li>

                <li <?php if ($com == 'about') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=about&act=man"
                        <?php if ($com == 'about') { echo 'class="active"'; } ?> ><i class="fa fa-th-large fa-fw"></i> Giới thiệu</a>
                </li>

                <li <?php if ($com == 'news') { echo 'class="active"'; } ?>>
                    <a href="#"><i class="fa fa-newspaper-o fa-fw"></i>Tin tức<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=news&act=man_list"
                                <?php if ($com == 'news' && $act == 'man_list') { echo 'class="active"'; } ?>>Danh mục</a>
                        </li>
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=news&act=man"
                                <?php if ($com == 'news' && $act == 'man') { echo 'class="active"'; } ?>>Tin tức</a>
                        </li>
                    </ul>
                </li>

                <!--
                <li <?php if ($com == 'news') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=news&act=man"
                        <?php if ($com == 'news') { echo 'class="active"'; } ?> ><i class="fa fa-newspaper-o fa-fw"></i> Tin tức</a>
                </li>
                <li <?php if ($com == 'faqs') { echo 'class="active"'; } ?>>
					<a href="http://<?= $config_url ?>/admin/index.php?com=faqs&act=man"
                        <?php if ($com == 'faqs') { echo 'class="active"'; } ?> ><i class="fa fa-question-circle"></i>FAQs</a>
				</li>
				<li <?php if ($com == 'service') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=service&act=man"
                        <?php if ($com == 'service') { echo 'class="active"'; } ?> ><i class="fa fa-retweet fa-fw"></i> Dịch vụ</a>
                </li>
                <li <?php if ($com == 'service') { echo 'class="active"'; } ?>>
					<a href="#"><i class="fa fa-retweet fa-fw"></i>Dịch vụ<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=service&act=man_list"
                                <?php if ($com == 'service' && $act == 'man_list') { echo 'class="active"'; } ?>>Danh mục cấp 1</a>
						</li>
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=service&act=man"
                                <?php if ($com == 'service' && $act == 'man') { echo 'class="active"'; } ?>>Dịch vụ</a>
						</li>
					</ul>
				</li>
                <li <?php if ($com == 'about') { echo 'class="active"'; } ?>>
					<a href="#"><i class="fa fa-retweet fa-fw"></i>Giới thiệu<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=about&act=man_list"
                                <?php if ($com == 'about' && $act == 'man_list') { echo 'class="active"'; } ?>>Danh mục cấp 1</a>
						</li>
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=about&act=man"
                                <?php if ($com == 'about' && $act == 'man') { echo 'class="active"'; } ?>>Giới thiệu</a>
						</li>
					</ul>
				</li>
				<li <?php if ($com == 'courses') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=courses&act=man"
                        <?php if ($com == 'courses') { echo 'class="active"'; } ?> ><i class="fa fa-beer fa-fw"></i> Hướng dẫn chế biến món ăn</a>
                </li>
                <li <?php if ($com == 'farm') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=farm&act=man"
                        <?php if ($com == 'farm') { echo 'class="active"'; } ?> ><i class="fa fa-anchor fa-fw"></i> Hệ thống trang trại</a>
                </li>
                -->

                <li <?php if ($com == 'slideshow' || $com == 'advertise') { echo 'class="active"'; } ?>>
                    <a href="#"><i class="fa fa-file-image-o"></i> Hình ảnh<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=slideshow&act=man"
                                <?php if ($com == 'slideshow') { echo 'class="active"'; } ?> > Slideshow</a>
                        </li>
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=advertise&act=man"
                                <?php if ($com == 'advertise') { echo 'class="active"'; } ?> > Quảng cáo</a>
                        </li>
                        <!--
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=custome&act=man"
                                <?php if ($com == 'custome') { echo 'class="active"'; } ?> >Khách hàng</a>
						</li>
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=banner&act=man"
                                <?php if ($com == 'banner') { echo 'class="active"'; } ?> > Quảng cáo 2 bên</a>
						</li>
                        -->
                    </ul>
                </li>

                <!--
                <li <?php if ($com == 'place') { echo 'class="active"'; } ?>>
					<a href="#"><i class="fa fa-map-marker fa-fw"></i> Địa điểm<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=place&act=man_city"
                                <?php if ($com == 'place' && $act == 'man_city') { echo 'class="active"'; } ?>>Tỉnh / Thành phố</a>
						</li>
						
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=place&act=man_district"
                                <?php if ($com == 'place' && $act == 'man_district') { echo 'class="active"'; } ?>>Quận / Huyện</a>
						</li>
					</ul>
				</li>
                
				<li <?php if ($com == 'support') { echo 'class="active"'; } ?>>
					<a href="http://<?= $config_url ?>/admin/index.php?com=support&act=man"
                        <?php if ($com == 'support') { echo 'class="active"'; } ?> ><i class="fa fa-support fa-fw"></i> Hỗ trợ trực tuyến</a>
				</li>
				
				<li <?php if ($com == 'advisory') { echo 'class="active"'; } ?>>
					<a href="http://<?= $config_url ?>/admin/index.php?com=advisory&act=man"
                        <?php if ($com == 'advisory') { echo 'class="active"'; } ?> ><i class="fa fa-rss-square fa-fw"></i> Tư vấn khách hàng</a>
				</li>
                -->

                <li <?php if ($com == 'social') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=social&act=man"
                        <?php if ($com == 'social') { echo 'class="active"'; } ?> ><i class="fa fa-share-alt-square fa-fw"></i>Link chia sẻ</a>
                </li>

                <li <?php if ($com == 'helper') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=helper&act=man"
                        <?php if ($com == 'helper') { echo 'class="active"'; } ?> ><i class="fa fa-support"></i>Hỗ trợ</a>
                </li>

                <li <?php if ($com == 'info') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=info&act=edit"
                        <?php if ($com == 'info') { echo 'class="active"'; } ?> ><i class="fa fa-align-justify fa-fw"></i> Nội dung khác</a>
                </li>

                <li <?php if ($com == 'setting') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=setting&act=edit"
                        <?php if ($com == 'setting') { echo 'class="active"'; } ?> ><i class="fa fa-gear fa-fw"></i> Thiết lập</a>
                </li>
                <!--
                <li <?php if ($com == 'product') { echo 'class="active"'; } ?>>
                    <a href="#"><i class="fa fa-tasks fa-fw"></i> Sản phẩm<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_list"
                                <?php if ($com == 'product' && $act == 'man_list') { echo 'class="active"'; } ?>> Danh mục cấp 1</a>
                        </li>
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_cat"
                                <?php if ($com == 'product' && $act == 'man_cat') { echo 'class="active"'; } ?>>Danh mục cấp 2</a>
						</li>
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_item"
                                <?php if ($com == 'product' && $act == 'man_item') { echo 'class="active"'; } ?>>Danh mục cấp 3</a>
						</li>
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_provider"
                                <?php if ($com == 'product' && $act == 'man_provider') { echo 'class="active"'; } ?>>Nhà sản xuất</a>
						</li>
						<li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_type"
                                <?php if ($com == 'product' && $act == 'man_type') { echo 'class="active"'; } ?>>Loại sản phẩm</a>
						</li>
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_size"
                                <?php if ($com == 'product' && $act == 'man_size') { echo 'class="active"'; } ?>>Size sản phẩm</a>
						</li>
                        <li>
							<a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man_color"
                                <?php if ($com == 'product' && $act == 'man_color') { echo 'class="active"'; } ?>>Màu sản phẩm</a>
						</li>
                        <li>
                            <a href="http://<?= $config_url ?>/admin/index.php?com=product&act=man"
                                <?php if ($com == 'product' && $act == 'man') { echo 'class="active"'; } ?>> Sản phẩm</a>
                        </li>
                    </ul>
                </li>
                <li <?php if ($com == 'order') { echo 'class="active"'; } ?>>
                    <a href="http://<?= $config_url ?>/admin/index.php?com=order&act=man"
                        <?php if ($com == 'order') { echo 'class="active"'; } ?> ><i class="fa fa-support fa-fw"></i> Đơn hàng</a>
                </li>
                -->
            </ul>
        </div>
    </div>
</nav>
