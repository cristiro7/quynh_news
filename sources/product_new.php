<?php  if(!defined('_source')) die("Error");
	
	$title = 'Sản phẩm mới - '.$setting['title_'.$lang];
    
    // Define class line for responsive
    $class_pc_line = array(
        '0' => 'first-in-line',
        '1' => '',
        '2' => 'last-in-line',
    );
    $class_tablet_line = array(
        '0' => 'first-item-of-tablet-line',
        '1' => 'last-item-of-tablet-line',
    );
    $class_mobile_line = array(
        '0' => 'first-item-of-mobile-line',
        '1' => 'last-item-of-mobile-line',
    );
	            
	$title_bar = 'Sản phẩm mới';
    
    $d->reset();
	$sql ="select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 and shows_new=1 order by numberic asc,id desc";
	$d->query($sql);
	$products = $d->result_array();
    
    $total_product = count($products);
    
	$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
	$url = "http://$config_url/san-pham-moi/";
	$maxR=12;
	$maxP=10;
	$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
	$products=$paging['source'];
?>