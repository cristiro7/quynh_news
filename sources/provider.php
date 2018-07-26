<?php  if(!defined('_source')) die("Error");
		//if(isset($_GET['id']) && $_GET['id'] !='') header("location:http://$config_url/");
		
		$strDetail = trim($_GET['id']);
		$d->reset();
		$sql = "select id,ten_$lang from #_product_provider where tenkodau='$strDetail'";
		$d->query($sql);
		$provider = $d->fetch_array();
		
		$sql = "select id,ten_$lang,tenkodau,thumb,photo,alt,cauhinh,giaban,giakm from #_product where shows=1 and id_provider=".$provider['id']." order by numberic asc,id desc";
		
		$d->query($sql);
		$products = $d->result_array();	
		$title_bar = $provider['ten_'.$lang];
		
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/nha-san-xuat/$strDetail/";
		$maxR=24;
		$maxP=5;
		$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
		$products=$paging['source'];
?>