<?php
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);

	$d->reset();
	$sql = "select id,ten_vi from #_product_list where shows=1 order by numberic asc, id desc";
	$d->query($sql);
	$product_list = $d->result_array();
	
	$data ='<option value=""> -- Chọn danh mục -- </option>';
	for($i=0;$i<count($product_list);$i++){
		$data .='<option value="'.$product_list[$i]['id'].'">'.$product_list[$i]['ten_vi'].'</option>';
	}
	echo $data;
	
	
?>