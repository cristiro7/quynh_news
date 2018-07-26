<?php  if(!defined('_source')) die("Error");
	
	

	$title = 'So sánh sản phẩm - '.$setting['title_'.$lang];

	$title_bar = 'So sánh sản phẩm';
	
	$d->reset();
	$sql = "select id,ten_$lang from #_product_list where shows=1 and shows_compare=1 order by numberic asc,id desc";
	$d->query($sql);
	$pro_list = $d->result_array();
	
	
	
	
?>