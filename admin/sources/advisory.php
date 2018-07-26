<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";

switch($act){

	case "man":
		get_items();
		$template = "advisory/item";
		break;
	case "add":		
		$template = "advisory/item_add";
		break;
	case "edit":		
		get_item();
		$template = "advisory/item_add";
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

#====================================

function get_items(){
	global $d, $items, $paging;
	
	
	
	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_advisory where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_advisory set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_advisory set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	#-------------------------------------------------------------------------------
	$sql = "select * from #_advisory where id !=0";

	$sql.=" order by numberic asc,id desc";
	
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id)
		transfer("Không nhận được dữ liệu", "index.php?com=advisory&act=man");
	
	$sql = "select * from #_advisory where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=advisory&act=man");
	$item = $d->fetch_array();
	
	
}

function save_item(){
	global $d, $name;

	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=advisory&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	
	if($id){
		$id =  themdau($_POST['id']);
		
		$data['hoten'] = $_POST['name'];
		$data['email'] = $_POST['email'];
		$data['dienthoai'] = $_POST['phone'];
		$data['id_product'] = $_POST['id_product'];
		
		$data['numberic'] = $_POST['numberic'];
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		$d->setTable('advisory');
		$d->setWhere('id', $id);
		if($d->update($data)){			
			redirect("index.php?com=advisory&act=man");
		}else
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=advisory&act=man");
	}else{
		$data['hoten'] = $_POST['name'];
		$data['email'] = $_POST['email'];
		$data['dienthoai'] = $_POST['phone'];
		$data['id_product'] = $_POST['id_product'];
		
		$data['numberic'] = 1;
		$data['shows'] = 1;
		$data['date_create'] = time();
				
		$d->setTable('advisory');
		if($d->insert($data)){
			redirect("index.php?com=advisory&act=man");
		}else
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=advisory&act=man");
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_advisory where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=advisory&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=advisory&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "delete from #_advisory where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=advisory&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=advisory&act=man");
}

function get_name_list($id=0, $tbl=''){
	global $d;
	
	$sql = "select ten_vi from #_$tbl where id=$id";
	$d->query($sql);
	$list = $d->fetch_array();
	echo  $list['ten_vi'];
}
?>