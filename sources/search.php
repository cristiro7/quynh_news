<?php  if(!defined('_source')) die("Error");
		
        $title = 'Tìm kiếm Sản phẩm - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
		
		$sql = "select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1";
		
		if(isset($_POST['search_query']) && $_POST['search_query'] !=''){
			$tukhoa = trim(strip_tags($_POST['search_query']));    	
			if (get_magic_quotes_gpc()==false) {
				$tukhoa = mysql_real_escape_string($tukhoa);    			
			}
											
			$sql .= " and ten_$lang like'%$tukhoa%'";
		}
		
		$sql .=" order by numberic asc,id desc";
		
		$d->query($sql);
		$products = $d->result_array();
        
        $total_product = count($products);	
		$title_bar = "Tìm thấy <span style='color: #FFFF00;'>".$total_product."</span> sản phẩm";
        
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/tim-kiem/";
		$maxR=12;
		$maxP=10;
		$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
		$products=$paging['source'];
?>