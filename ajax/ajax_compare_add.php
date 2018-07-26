<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	@define ( '_lib' , '../admin/lib/');
	@define ( '_source' , '../sources/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	$lang = $_GET['lang'];
	
	require_once _source."lang_$lang.php";
	
	if($_SESSION['compare']){
	
		$data ='';
		$max=count($_SESSION['compare']);
		
		for($i=1; $i<=$max; $i++){
			
			$sql = "select id,ten_$lang,tenkodau,thumb,photo,alt,cauhinh,giaban,giakm from #_product where id=".$_SESSION['compare'][$i-1]['productid'];
			$d->reset();
			$d->query($sql);
			$products = $d->fetch_array();
			
			if($products){
				
				if($products['giaban'] !=0 && $products['giakm'] == 0){
					$cost = '<span class="s-price">'.number_format($products['giaban'],0,'','.').'</span>';
				}elseif($products['giakm'] != 0){
					$save_price = ($products['giaban']*$products['giakm'])/100;
					$special_price = $products['giaban']-$save_price;
					$cost = '<span class="o-price col-sm-6">'.number_format($products['giaban'],0,'','.').'</span><span class="s-price col-sm-6">'.number_format($special_price,0,'','.').'</span>';	
				}else{$cost = '<span class="s-price">'._contact.'</span>';}
				
				if($i%3==0){$class='box-sp-right';}else{$class='';}
				
				$data .='<div class="col-sm-3 box-sp '.$class.'">
					<h3 class="sp-name"><a href="http://'.$config_url.'/san-pham/'.$products['tenkodau'].'.html" class="transitionAll">'.$products['ten_'.$lang].'</a></h3>
					<p class="sp-img"><a href="http://'.$config_url.'/san-pham/'.$products['tenkodau'].'.html"><img src="http://'.$config_url.'/'._upload_product_l.$products['thumb'].'" /></a></p>
					<p class="sp-des">'.$products['cauhinh'].'</p>
					<p class="sp-price row">'.$cost.'</p>
					<p class="sp-compare"><a class="add-compare" value="'.$products['id'].'" type="minus">-</a></p>
				</div>';
			
			}

		}
		$data .='</div>';
		echo $data;
	}else{
		echo '<div class="box-sp col-sm-3" value="0">
				<p class="sp-img"><img src="http://'.$config_url.'/images/laptop.png" style="opacity: 0.5"></p>
				<h3 class="sp-name">Product name</h3>
			</div>
			
			<div class="box-sp col-sm-3" value="0" >
				<p class="sp-img"><img src="http://'.$config_url.'/images/laptop.png" style="opacity: 0.5"></p>
				<h3 class="sp-name">Product name</h3>
			</div>
			
			<div class="box-sp box-sp-right col-sm-3" value="0" >
				<p class="sp-img"><img src="http://'.$config_url.'/images/laptop.png" style="opacity: 0.5"></p>
				<h3 class="sp-name">Product name</h3>
			</div>';
	}

?>

				