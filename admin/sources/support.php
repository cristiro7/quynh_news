<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Hỗ trợ trực tuyến";
switch($act){

	case "man":
		get_items();
		$template = "support/item";
		break;
	case "add":		
		$template = "support/item_add";
		break;
	case "edit":		
		get_item();
		$template = "support/item_add";
		break;
	case "save":
		save_item();
		break;
	case "delete":
		delete_item();
		break;

	default:
		$template = "index";
}

function get_items(){
	global $d, $items;
	
	if($_REQUEST['shows_product']!='')
	{
		$ids = $_REQUEST['shows_product'];
		$sql = "select shows_product from table_support where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_product'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_support set shows_product = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_support set shows_product = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_support where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_support set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_support set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_support order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=support&act=man");
	
	$sql = "select * from #_support where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=support&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=support&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
		$data['yahoo'] = $_POST['yahoo'];
		$data['skype'] = $_POST['skype'];
		$data['phone'] = $_POST['phone'];
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('support');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=support&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=support&act=man");
		}
	}else{
		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
		$data['yahoo'] = $_POST['yahoo'];
		$data['skype'] = $_POST['skype'];
		$data['phone'] = $_POST['phone'];
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('support');
		if($d->insert($data)){
			redirect("index.php?com=support&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=support&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_support where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=support&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=support&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();
			$sql = "delete from #_support where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=support&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=support&act=man");
}

?>