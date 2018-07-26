<?php
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	
	$id = $_GET['id'];
	
	$d->reset();
	$sql = "select id_list,id from #_product where id=$id";
	$d->query($sql);
	$product_detail = $d->fetch_array();
	
	
	$d->reset();
	$sql = "select * from table_product_compare where shows=1 and id_list=".$product_detail['id_list']." order by id asc";
	$d->query($sql);
	$category = $d->result_array();
	
	
	$d->reset();
	$sql = "select * from table_product_compare_properties where id_product=".$product_detail['id'];
	$d->query($sql);
	$product_compare = $d->fetch_array();
	
	$properties['id_compare'] = explode('<-||->',$product_compare['id_compare']);
	$properties['noidung'] = explode('<-||->',$product_compare['noidung']);
	
	$data ='<div id="tooltip_thongsoKT"><table>';
	if($category){
		$limit = 0;
		for($i=1; $i<=count($category); $i++){
			if($category[$i-1]['id_parents'] != 0){
			
				for($k=1;$k<=count($properties['id_compare']);$k++){
					if($properties['id_compare'][$k-1] == $category[$i-1]['id']){
						$data .= '<tr><td>'.$category[$i-1]['ten_vi'].'</td><td>'.$properties['noidung'][$k-1].'</td></tr>';
						$limit++;
					}
				}
				
			}
			if($limit>=10) break;
		}
		
	}
	$data .='</table></div>';
	echo $data;
	
	
?>