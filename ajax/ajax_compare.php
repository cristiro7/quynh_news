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
	
	
	$lang=$_GET['lang'];
	
	require_once _source."lang_$lang.php";
	
	if($_SESSION['compare']){
	
	$d->reset();
	$sql = "select * from table_product_compare where shows=1 and id_list=".$_REQUEST['id_list']." order by id asc";
	$d->query($sql);
	$category = $d->result_array();
	
	
	
		
	$data ='<table>';
	$count_cat=count($category);
	$count=count($_SESSION['compare']);
	
	for($i=1; $i<=$count_cat; $i++){
		if($category[$i-1]['id_parents'] == 0){
			$data .='<tr><th colspan="4">'.$category[$i-1]['ten_'.$lang].'</th></tr>';
		}else{
			$data .='<tr><td>'.$category[$i-1]['ten_'.$lang].'</td>';
			for($j=1; $j<=$count; $j++){
			
				$d->reset();
				$sql = "select * from table_product_compare_properties where id_product=".$_SESSION['compare'][$j-1]['productid'];
				$d->query($sql);
				$product = $d->fetch_array();
				
				
				$properties['id_compare'] = explode('<-||->',$product['id_compare']);
				$properties['noidung'] = explode('<-||->',$product['noidung']);
				
				for($k=1;$k<=count($properties['id_compare']);$k++){
					if($properties['id_compare'][$k-1] == $category[$i-1]['id']) $data .='<td>'.$properties['noidung'][$k-1].'</td>';
				}
			}
			
				
			$data .='</tr>';
		}
	}
	$data .='</table>';
	echo $data;
	}

?>