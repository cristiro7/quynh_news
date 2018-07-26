<script type="text/javascript">
	$(function(){
		$('#search_block_top .button-search').click(function(evt){
			onSearch(evt);
		});
	});
	function onSearch(evt){
		var keyword = $('#search_query_top');
		
		if( keyword.val() == ''){alert('Bạn chưa nhập thông tin tìm kiếm!'); keyword.focus(); return false;}
		
		$('#searchbox').submit();
		
	}
	
	function doEnter(evt){
    	// IE					// Netscape/Firefox/Opera
    	var key;
    	if(evt.keyCode == 13 || evt.which == 13){
    		onSearch(evt);
    	}else{
    		return false;	
    	}
	}
</script>

<div class="container">
	<div>
		<div class="row">
			<div class="">
				<div class="shopping_cart">
					<a href="gio-hang/" title="Xem giỏ hàng" rel="nofollow">
						<b>Giỏ hàng</b>
						<span class="ajax_cart_quantity unvisible"></span>
						<span class="ajax_cart_product_txt unvisible">Product</span>
						<span class="ajax_cart_product_txt_s unvisible">Products</span>
						<span class="ajax_cart_total unvisible"></span>
						<span class="ajax_cart_no_product">(<?=get_total()?> sản phẩm)</span>
					</a>
					<!--<div class="cart_block block">
						<div class="block_content">
							<div class="cart_block_list">
								<p class="cart_block_no_products">No products</p>
								<div class="cart-prices">
									<div class="cart-prices-line first-line  unvisible">
										<span class="cart_block_shipping_cost ajax_cart_shipping_cost">To be determined </span>
										<span>Shipping</span>
									</div>
									<div class="cart-prices-line last-line">
										<span class="price cart_block_total ajax_block_cart_total">$0.00</span>
										<span>Total</span>
									</div>
								</div>
								<p class="cart-buttons">
									<a id="button_order_cart" class="btn btn-default btn-sm icon-right" href="?controller=order" title="Check out" rel="nofollow">
										<span>Check out</span>
									</a>
								</p>
							</div>
						</div>
					</div>--> 
				</div>
			</div>		
		  
			<div id="search_block_top">
				<form id="searchbox" method="post" action="tim-kiem/">
					<input type="hidden" name="controller" value="search"/>
					<input type="hidden" name="orderby" value="position"/>
					<input type="hidden" name="orderway" value="desc"/>
					<input class="search_query form-control" type="text" id="search_query_top" name="search_query" placeholder="Hãy nhập từ khóa" value=""/>
					<button type="submit" name="submit_search" class="btn btn-default button-search"><span>Tìm kiếm</span></button>
				</form>
			</div>
		</div>
	</div>
</div>