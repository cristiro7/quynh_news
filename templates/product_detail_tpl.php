<script type="text/javascript">
    var sharing_img = 'http://<?=$config_url.'/'._upload_product_l.$product_detail['thumb2']?>';
    var sharing_name = '<?php print $product_detail['ten']; ?>';
    var sharing_url = 'http://<?=$config_url?>/san-pham/<?php print $product_detail['tenkodau']; ?>.html';
</script>

<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>
    <span class="navigation_page">
        <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
            <a itemprop="url" href="san-pham/" title="Sản phẩm">
            <span itemprop="title">Sản phẩm</span></a>
        </span>
        <span class="navigation-pipe">&gt;</span>
        <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
            <a itemprop="url" href="san-pham/<?php print $product_list['tenkodau']; ?>/" title="<?php print $product_list['ten']; ?>">
            <span itemprop="title"><?php print $product_list['ten']; ?></span></a>
        </span>
        <span class="navigation-pipe">&gt;</span><?php print $product_detail['ten']; ?>
    </span>
</div>

<div itemscope itemtype="http://schema.org/Product">
	<div class="primary_block row two-columns">
		<div class="pb-left-column col-xs-12 col-md-7 col-lg-6">
			<div id="image-block" class="clearfix is_caroucel">
				<?php if($product_detail['shows_new']) { ?>
                <span class="new-box no-print">
					<span class="new-label">New</span>
				</span>
                <?php } ?>
                
                <?php if($product_detail['shows_sale']) { ?>
				<span class="sale-box no-print">
					<span class="sale-label">Sale! </span>
				</span>
                <?php } ?>
                
				<span id="view_full_size">
					<a class="jqzoom" title="<?php print $product_detail['ten']; ?>" rel="gal1" href="http://<?=$config_url.'/'._upload_product_l.$product_detail['thumb2']?>" itemprop="url">
						<img itemprop="image" src="http://<?=$config_url.'/'._upload_product_l.$product_detail['thumb2']?>" title="<?php print $product_detail['ten']; ?>" alt="<?php print $product_detail['alt']; ?>"/>
					</a>
				</span>
			</div>
			
			<div id="views_block" class="clearfix">
				<a id="view_scroll_left" class="" title="Trước" href="javascript:{}">Trước</a>
				<div id="thumbs_list">
                    <?php if(count($products_photo) > 0) { ?>
					<ul id="thumbs_list_frame">
						<?php foreach($products_photo as $key => $product_photo) { ?>
                        <li id="thumbnail_<?php print $product_photo['id']; ?>">
							<a href="javascript:void(0);" rel="{gallery: 'gal1', smallimage: 'http://<?=$config_url.'/'._upload_product_l.$product_photo['thumb2']?>',largeimage: 'http://<?=$config_url.'/'._upload_product_l.$product_photo['thumb2']?>'}" title="Del Monte Chopped And Peeled Parsley">
								<img class="img-responsive" id="thumb_<?php print $product_photo['id']; ?>" src="http://<?=$config_url.'/'._upload_product_l.$product_photo['thumb']?>" alt="<?php print $product_photo['alt']; ?>" title="<?php print $product_photo['alt']; ?>" height="80" width="80" itemprop="image"/>
							</a>
						</li>
                        <?php } ?>
					</ul>
                    <?php } ?>
				</div>  
				<a id="view_scroll_right" title="Sau" href="javascript:{}">Sau</a>
			</div>
		</div>
		 
		<div class="pb-right-column col-xs-12 col-md-5 col-lg-6">
			<h1 itemprop="name"><?php print $product_detail['ten']; ?></h1>
			<form id="buy_block" action="gio-hang" method="post">
				<p class="hidden">
					<input type="hidden" name="token" value="a3bcd1d7e477e72d31bc2594c13b6acf"/>
                    <input type="hidden" name="add" value="1"/>
					<input type="hidden" name="id_product" id="id_product" value="<?=$product_detail['id']?>"/>
                    <input type="hidden" name="lang" id="lang" value="<?=$lang?>"/>
					<input type="hidden" name="config_url" id="config_url" value="<?=$config_url?>"/>
				</p>
				<div class="box-info-product">
					<div class="content_prices clearfix">
                        <?php if($product_detail['price'] !=0 && $product_detail['sale'] == 0){ ?>
						<p class="our_price_display" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
							<link itemprop="availability" href="http://schema.org/InStock"/>
							<span id="our_price_display" itemprop="price"><?php print number_format($product_detail['price'],0,'','.').' vnđ/'.getUnit($product_detail['unit']); ?></span>
							<meta itemprop="priceCurrency" content="VNĐ"/>
						</p>
                        <?php } elseif($product_detail['sale'] != 0) { 
                            $save_price = ($product_detail['price']*$product_detail['sale'])/100;
							$special_price = $product_detail['price']-$save_price;    
                        ?>
                        <div class="old-price-info">
                            <p id="old_price">
    							<span id="old_price_display"><?php print number_format($product_detail['price'],0,'','.').' vnđ/'.getUnit($product_detail['unit']); ?></span>  </p>
    						<p id="reduction_percent">
    							<span id="reduction_percent_display">-<?php print $product_detail['sale']; ?>%</span>
    						</p>
                        </div>
						<p class="our_price_display" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
							<link itemprop="availability" href="http://schema.org/InStock"/>
							<span id="our_price_display" itemprop="price"><?php print number_format($special_price,0,'','.').' vnđ/'.getUnit($product_detail['unit']); ?></span>
							<meta itemprop="priceCurrency" content="VNĐ"/>
						</p>
                        <?php } else { ?>
                        <p id="contact_price"><a href="lien-he/">Liên hệ</a></p>
                        <?php } ?>
						<div class="clear"></div>
					</div>
					<div class="product_attributes clearfix">
						<div class="clearfix">
							<p id="quantity_wanted_p">
								<label>Số lượng</label>
								<input type="text" name="qty" id="quantity_wanted" class="text" value="1"/>
								<a href="#" data-field-qty="qty" class="btn btn-default button-minus product_quantity_down">
									<span><i class="fa fa-minus"></i></span>
								</a>
								<a href="#" data-field-qty="qty" class="btn btn-default button-plus product_quantity_up">
									<span><i class="fa fa-plus"></i></span>
								</a>
								<span class="clearfix"></span>
							</p>
							<div id="add_to_cart_product_page_button">
								<p id="add_to_cart" class="buttons_bottom_block no-print">
									<button type="submit" name="Submit" class="btn btn-default ajax_add_to_cart_product_button">
										<span>Thêm vào giỏ hàng</span>
									</button>
								</p>
							</div>
						</div>
					</div>   
				</div>  
			</form>
			<div class="extra-right">
				<p class="socialsharing_product no-print">
					<button data-type="twitter" type="button" class="btn btn-twitter social-sharing">
						<i class="fa fa-twitter"></i>
					</button>
					<button data-type="facebook" type="button" class="btn btn-facebook social-sharing">
						<i class="fa fa-facebook"></i>
					</button>
					<button data-type="google-plus" type="button" class="btn btn-google-plus social-sharing">
						<i class="fa fa-google-plus"></i>
					</button>
				</p>
			</div>
		</div>
	</div>  
	<div class="clearfix product-information">
		<ul class="product-info-tabs nav nav-stacked col-sm-3 col-md-3 col-lg-3">
			<li class="product-description-tab"><a data-toggle="tab" href="#product-description-tab-content">Nội dung chi tiết</a></li>
			<li class="product-video-tab">
				<a href="#product-video-tab-content" data-toggle="tab">Video</a>
			</li>
		</ul>
		<div class="tab-content col-sm-9 col-md-9 col-lg-9">
			<div id="product-description-tab-content" class="product-description-tab-content tab-pane active">
				<div class="rte">
				    <?php print $product_detail['noidung']; ?>	
				</div>
			</div>
			<div id="product-video-tab-content" class="product-video-tab-content tab-pane">
				<div class="videowrapper">
					<?php if($product_detail['video_link'] != '') { ?>
                    <iframe type="text/html" src="https://www.youtube.com/embed/<?php print $product_detail['video_link']; ?>?enablejsapi=1&version=3&html5=1&wmode=transparent" frameborder="0" wmode="Opaque"></iframe>
                    <?php } else { print 'Không có video'; } ?>
				</div>
				<h4 class="video-name"><?php print $product_detail['ten']; ?></h4>
			</div>
		</div>
	</div>
</div>
    