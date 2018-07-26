<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	if(!isset($_SESSION['lang'])){$_SESSION['lang']='vi';}
	
	$lang=$_SESSION['lang'];
	@define ( '_lib' , '../admin/lib/');
	@define ( '_source' , '../sources/');
	include_once _lib."config.php";

	require_once _source."lang_$lang.php";
	include_once _lib."functions.php";
	
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	
	$d->reset();
	$sql = "select noidung_$lang from #_service where id=".$_GET['id'];
	$d->query($sql);
	$row = $d->fetch_array();
	echo '<div style="width: 580px;padding: 10px;">'.$row['noidung_'.$lang].'</div>';
?> 

