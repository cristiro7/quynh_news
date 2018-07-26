<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);

	$lang=$_POST['lang'];
	
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

	addtocart($id,$q);
?>


