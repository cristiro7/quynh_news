<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	
	if(!isset($_SESSION['lang']))
	{
	$_SESSION['lang']='vi';
	}
	
	$lang=$_SESSION['lang'];
	
	@define ( '_lib' , '../admin/lib/');
	@define ( '_source' , '../sources/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	require_once _source."lang_$lang.php";
	include_once _lib."functions.php";
	include_once _lib."functions_giohang.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	
	
	@$id = $_POST['id'];
	@$q = $_POST['q'];
	
	
	$max=count($_SESSION['cart']);
	for($i=0;$i<$max;$i++){
		if($id==$_SESSION['cart'][$i]['productid']){
			if($q){$_SESSION['cart'][$i]['qty'] = $q;}
			
			break;
		}
	}
	$giaban = number_format(get_price($id)*$q,0, ',', '.').' vnđ';
	$thanhtien = number_format(get_order_total(),0, ',', '.').' vnđ';
	$tonggia = number_format(get_order_total()-$giamgia,0, ',', '.').' vnđ';
	$data = array('giaban' => $giaban, 'thanhtien' => $thanhtien, 'tonggia' => $tonggia, 'giamgia' => $thongbao);
	echo json_encode($data);
?>


