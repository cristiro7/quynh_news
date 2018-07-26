<?php
	@define ( '_lib' , '../admin/lib/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	$id = $_POST['id'];
	$d->reset();
	$sql = "select id,ten_vi from #_product_cat where shows=1 and id_list=$id order by numberic asc, id desc";
	$d->query($sql);
	$product_cat = $d->result_array();
	
	$data ='<option value=""> -- Chọn danh mục -- </option>';
	for($i=0;$i<count($product_cat);$i++){
		$data .='<option value="'.$product_cat[$i]['id'].'">'.$product_cat[$i]['ten_vi'].'</option>';
	}
	echo $data;
	
	
?>