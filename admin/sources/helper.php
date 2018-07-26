<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Helper";
switch($act){

	case "man":
		get_items();
		$template = "helper/item";
		break;
	case "add":		
		$template = "helper/item_add";
		break;
	case "edit":		
		get_item();
		$template = "helper/item_add";
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

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_helper where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_helper set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_helper set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_helper where id!=0";
	$sql .= " order by id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=helper&act=man");
	
	$sql = "select * from #_helper where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=helper&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=helper&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		$data['column_1_vi'] = isset($_POST['column_1_vi']) ? $_POST['column_1_vi'] : "";
		$data['column_2_vi'] = isset($_POST['column_2_vi']) ? $_POST['column_2_vi'] : "";
        $data['column_3_vi'] = isset($_POST['column_3_vi']) ? $_POST['column_3_vi'] : "";
        $data['column_1_en'] = isset($_POST['column_1_en']) ? $_POST['column_1_en'] : "";
        $data['column_2_en'] = isset($_POST['column_2_en']) ? $_POST['column_2_en'] : "";
        $data['column_3_en'] = isset($_POST['column_3_en']) ? $_POST['column_3_en'] : "";
        $data['type'] = isset($_POST['type']) ? $_POST['type'] : "";
				
		$d->setTable('helper');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=helper&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=helper&act=man");
		}
	}else{
	    $data['column_1_vi'] = isset($_POST['column_1_vi']) ? $_POST['column_1_vi'] : "";
		$data['column_2_vi'] = isset($_POST['column_2_vi']) ? $_POST['column_2_vi'] : "";
        $data['column_3_vi'] = isset($_POST['column_3_vi']) ? $_POST['column_3_vi'] : "";
        $data['column_1_en'] = isset($_POST['column_1_en']) ? $_POST['column_1_en'] : "";
        $data['column_2_en'] = isset($_POST['column_2_en']) ? $_POST['column_2_en'] : "";
        $data['column_3_en'] = isset($_POST['column_3_en']) ? $_POST['column_3_en'] : "";
        $data['type'] = isset($_POST['type']) ? $_POST['type'] : "";

		$d->setTable('helper');
		if($d->insert($data)){
			redirect("index.php?com=helper&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=helper&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_helper where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=helper&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=helper&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();
			$sql = "delete from #_helper where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=helper&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=helper&act=man");
}
?>