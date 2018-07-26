<?php  if(!defined('_source')) die("Error");
		//if(isset($_GET['id']) && $_GET['id'] !='') header("location:http://$config_url/");
		
		$strDetail = trim($_GET['id']);
		$d->reset();
		$sql = "select id,ten_$lang from #_product_type where tenkodau='$strDetail'";
		$d->query($sql);
		$type = $d->fetch_array();
		
		$sql = "select DISTINCT id,ten_$lang,tenkodau,thumb,photo,alt,cauhinh,giaban,giakm from #_product,#_product_team where #_product.shows=1 and #_product_team.id_team=".$type['id']." and type='type' order by numberic asc,id desc";
		
		$d->query($sql);
		$products = $d->result_array();	
		$title_bar = $type['ten_'.$lang];

?>