<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Thông tin";
switch($act){
	case "edit":
		get_data();
		$template = "info/item_add";
		break;
	case "save":
		save_data();
		break;
		
	default:
		$template = "index";
}

function get_data(){
	global $d, $item;

	$sql = "select * from #_info limit 0,1";
	$d->query($sql);
	$item = $d->fetch_array();
}

function save_data(){
	global $d;
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=info&act=edit");
	    
	$data['contact'] = isset($_POST['contact']) ? $_POST['contact'] : "";
	$data['footer'] = isset($_POST['footer']) ? $_POST['footer'] : "";
    $data['certificate_quality'] = isset($_POST['certificate_quality']) ? $_POST['certificate_quality'] : "";
	
	$d->reset();
	$d->setTable('info');
	if($d->update($data))
		redirect("index.php?com=info&act=edit");
	else
		transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=info&act=edit");
}
?>