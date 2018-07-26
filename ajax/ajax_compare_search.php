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
	
	$lang = $_POST['lang'];
	
	require_once _source."lang_$lang.php";
	
	
	
	@$idc = (int)$_POST['idc'];
	
	
	if($_POST['page']) {
		$curPg = $_POST['page'];
		$current_page = $curPg;
		$curPg -= 1;
		$display = 24;
		$start = ($curPg * $display);
		$_SESSION['page'] =$display;
		$_SESSION['page'] = ($_SESSION['page']*$current_page)-$display;
		if($_SESSION['page']<0){$_SESSION['page']=0;}
	
		if($idc !=''){
			$sql ="select id,ten_$lang,tenkodau,thumb,photo,alt,cauhinh,giaban,giakm from #_product where shows=1 and id_cat=$idc";
		}else{
			$sql = "select id,ten_$lang,tenkodau,thumb,photo,alt,cauhinh,giaban,giakm from #_product where shows=1";
		}
		if(isset($_POST['keyword']) && $_POST['keyword'] !=''){
			$tukhoa = trim(strip_tags($_POST['keyword']));    	
			if (get_magic_quotes_gpc()==false) {
				$tukhoa = mysql_real_escape_string($tukhoa);    			
			}
											
			$sql .= " and ten_$lang like'%$tukhoa%'";
		}
		$sql .= " order by numberic asc,id desc";
		$d->query($sql);
		$totalRows = $d->num_rows();
		
		$d->reset();
		$sql .=" limit $start, $display";
		$d->query($sql);
		$products = $d->result_array();
		//echo $sql;exit;
		$data ='<div class="bg-product col-sm-12">';
	
		for($i=1, $count = count($products); $i<=$count; $i++){
			 
			if($products[$i-1]['giaban'] !=0 && $products[$i-1]['giakm'] == 0){
				$cost = '<span class="s-price">'.number_format($products[$i-1]['giaban'],0,'','.').'</span>';
			}elseif($products[$i-1]['giakm'] != 0){
				$save_price = ($products[$i-1]['giaban']*$products[$i-1]['giakm'])/100;
				$special_price = $products[$i-1]['giaban']-$save_price;
				$cost = '<span class="o-price col-sm-6">'.number_format($products[$i-1]['giaban'],0,'','.').'</span><span class="s-price col-sm-6">'.number_format($special_price,0,'','.').'</span>';	
			}else{$cost = '<span class="s-price">'._contact.'</span>';}
			
			if($i%4==0){$class='box-sp-right'; $clearfix = '<div class="clearfix"></div>';}else{$class='';$clearfix = '';}
			if($i%4==0 && $i<$count){$class2='</div><div class="bg-product col-sm-12">';}else{$class2='';}
			$data .='<div class="col-sm-3 box-sp '.$class.'">
				<h3 class="sp-name"><a href="http://'.$config_url.'/san-pham/'.$products[$i-1]['tenkodau'].'.html" class="transitionAll">'.$products[$i-1]['ten_'.$lang].'</a></h3>
				<p class="sp-img"><a href="http://'.$config_url.'/san-pham/'.$products[$i-1]['tenkodau'].'.html"><img src="http://'.$config_url.'/'._upload_product_l.$products[$i-1]['thumb'].'" /></a></p>
				<p class="sp-des">'.$products[$i-1]['cauhinh'].'</p>
				<p class="sp-price row">'.$cost.'</p>
				<p class="sp-compare"><a class="add-compare" value="'.$products[$i-1]['id'].'" type="add">+</a></p>
			</div>'.$clearfix.$class2;
		}
	
		$totalPages = ceil($totalRows / $display);

		$data .= "<div class='col-sm-12 paging'>";
		$paging1 =""; $paging ="";

		if($totalRows>$display){
			$from = $current_page - 2;
			$to = $current_page + 2;
			if($curPg <= $totalPages && $current_page >= $totalPages-1){$from = $totalPages - 4;}
			if ($from <=0) { $from = 1;   $to = 5; }
			if ($to > $totalPages) { $to = $totalPages; } 
			for($j = $from; $j <= $to; $j++) {
			   if ($j == $current_page){
				   $paging1.=" <span>".$j."</span> ";
			   } 
			   else{                            
				$paging1 .= " <a page=".$j." class=\"numberic transitionAll\" >".$j."</a> ";	
			   }       
			} 
			$paging .=" <a page='1' class=\"prev-all transitionAll\" ><i class=\"fa fa-angle-double-left\"></i></a> "; //ve dau
			if(($current_page-1)<=0){$abc=1;}else{$abc=$current_page-1;}
					
			$paging .=" <a page=".$abc." class=\"prev transitionAll\" ><i class=\"fa fa-angle-left\"></i></a> "; 
				
			$paging.=$paging1; 
				
			if($current_page == $totalPages){$abc=$totalPages;}else{$abc=$current_page+1;}
			$paging .=" <a page=".$abc." class=\"next transitionAll\" ><i class=\"fa fa-angle-right\"></i></a> "; 		
			$paging .=" <a page=".($totalPages)." class=\"next-all transitionAll\" ><i class=\"fa fa-angle-double-right\"></i></a> ";  
		}

		$data = $data.$paging."</div>";	
		
	}

	echo $data;
	

?>