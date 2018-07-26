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
	
	$lang=$_POST['lang'];
	require_once _source."lang_$lang.php";
	
	$id = $_POST['id'];
	$data ='<option value="">-- Chọn --</option>';
	if($id){
		$d->reset();
		$sql = "select id,ten from #_district where id_city=$id order by numberic asc,id desc";
		$d->query($sql);
		$district = $d->result_array();
		
		
		for($i=0;$i<count($district);$i++){
			if($district[$i]['id'] == $_POST['idi']){$active = 'selected="selected"';}else{$active = '';}
			$data .='<option value="'.$district[$i]['id'].'" '.$active.'>'.$district[$i]['ten'].'</option>';
		}
	}
	echo $data;
	
	
?>