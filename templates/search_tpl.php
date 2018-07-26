<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>Sản phẩm
</div>

<h1 class="page-heading product-listing">
	<span class="cat-name">Tìm kiếm&nbsp;</span>
	<span class="heading-counter">Có tất cả <?php print $total_product; ?> sản phẩm</span>
</h1>

<?php if($total_product > 0) { ?>
<ul class="product_list grid row">
	<?php foreach($products as $key => $product) { 
	  $i = ($key+3)%3;
      $j = ($key+2)%2;  
    ?>
    <li class="ajax_block_product col-xs-12 col-sm-4 col-md-4 <?php print $class_pc_line[$i]; ?> <?php print $class_tablet_line[$j]; ?> <?php print $class_mobile_line[$j]; ?>">
		<div class="product-container" itemscope itemtype="http://schema.org/Product">
			<div class="left-block">
				<div class="product-image-container">
					<a class="product_img_link" href="san-pham/<?php print $product['tenkodau']; ?>.html" title="<?php print $product['ten']; ?>" itemprop="url">
						<img class="replace-2x img-responsive" src="http://<?=$config_url.'/'._upload_product_l.$product['thumb2']?>" alt="<?php print $product['alt']; ?>" itemprop="image"/>
						<!--<img class="img-responsive hover-image" id="thumb-27" src="images/2-sanpham.jpg" alt="<?php print $product['alt']; ?>" itemprop="image"/>-->
					</a>
					<!--<a class="quick-view" href="" rel="">
						<span>Xem nhanh</span>
					</a>-->
					<?php if($product['shows_new']) { ?>
					<a class="new-box" href="">
						<span class="new-label">New</span>
					</a>
                    <?php } ?>
                    
                    <?php if($product['shows_sale']) { ?>
                    <a class="sale-box" href="">
						<span class="sale-label">Sale!</span>
					</a>
                    <?php } ?>
				</div>
			</div>
			<div class="right-block">
				<h5 itemprop="name">
					<a class="product-name" href="san-pham/<?php print $product['tenkodau']; ?>.html" title="<?php print $product['ten']; ?>" itemprop="url">
						<span class="list-name"><?php print $product['ten']; ?></span>
						<span class="grid-name"><?php print $product['ten']; ?></span>
					</a>
				</h5>
				<p class="product-desc" itemprop="description">
					<span class="list-desc"><?php print substr($product['mota'],0,strrpos(substr($product['mota'],0,150)," "))?> ...</span>
					<span class="grid-desc"><?php print substr($product['mota'],0,strrpos(substr($product['mota'],0,150)," "))?> ...</span>
				</p>
				<div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="content_price">
					<span itemprop="price" class="price product-price">
                    <?php if($product['price'] !=0 && $product['sale'] == 0){
						    echo number_format($product['price'],0,'','.').' vnđ/'.getUnit($product['unit']);
					      } elseif($product['sale'] != 0){
                            $save_price = ($product['price']*$product['sale'])/100;
							$special_price = $product['price']-$save_price;
							echo number_format($special_price,0,'','.').' vnđ/'.getUnit($product['unit']);
						  } else {
					        echo '<a href="lien-he/">Liên hệ</a>';
                          }
                    ?>
                    </span>
				</div>
				<div class="button-container">
					<a class="ajax_add_to_cart_button btn btn-default" href="" rel="nofollow" title="Mua ngay" data-id-product="6" data-minimal_quantity="1">
						<span>Mua ngay</span>
					</a>
					<a itemprop="url" class="lnk_view btn btn-default" href="san-pham/<?php print $product['tenkodau']; ?>.html" title="Chi tiết">
						<span>Chi tiết</span>
					</a>
				</div>
			</div>
		</div> 
	</li>
    <?php } ?>
    <div class="col-sm-12 paging"><?=$paging['paging']?></div>
</ul>
<?php } ?>
