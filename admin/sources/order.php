<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Đơn hàng";
switch($act){

	case "man":
		get_items();
		$template = "order/item";
		break;
	case "add":		
		$template = "order/item_add";
		break;
	case "edit":		
		get_item();
		$template = "order/item_add";
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

	
	$d->reset();
	$sql = "select * from #_order order by id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item, $city_nn, $city_tt, $district_nn, $district_tt;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=order&act=man");
	
	$sql = "select * from #_order where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=order&act=man");
	$item = $d->fetch_array();
	
	$d->reset();
	$sql = "select ten from #_city where id=".$item['city_nn'];
	$d->query($sql); 
	$city_nn = $d->fetch_array(); 
	
	$d->reset();
	$sql = "select ten from #_district where id=".$item['district_nn'];
	$d->query($sql);
	$district_nn = $d->fetch_array();
	
	$d->reset();
	$sql = "select ten from #_city where id=".$item['city_tt'];
	$d->query($sql);
	$city_tt = $d->fetch_array();
	
	$d->reset();
	$sql = "select ten from #_district where id=".$item['district_tt'];
	$d->query($sql);
	$district_tt = $d->fetch_array();
}

function save_item(){
	global $d;

	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=order&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		$data['ghichu'] = $_POST['ghichu'];
		$data['id_trangthai'] = $_POST['id_trangthai'];		
		
		$d->setTable('order');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=order&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=order&act=man");
		}
	}else{
		
		$data['ghichu'] = $_POST['ghichu'];		
		$data['noidung'] = $_POST['noidung'];
		$data['id_trangthai'] = $_POST['id_trangthai'];

		$d->setTable('order');
		if($d->insert($data)){
			redirect("index.php?com=order&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=order&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_order where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=order&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=order&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();
			$sql = "delete from #_order where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=order&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=order&act=man");
}

function trangthai($i=0){
		$sql="select * from table_trangthai order by id";
		$stmt=mysql_query($sql);
		$str='
			<select id="id_trangthai" name="id_trangthai" class="main_font">					
			';
		while ($row=@mysql_fetch_array($stmt)) 
		{
			if($row["id"]==$i)
				$selected="selected";
			else 
				$selected="";
			$str.='<option value='.$row["id"].' '.$selected.'>'.$row["trangthai"].'</option>';			
		}
		$str.='</select>';
		return $str;
	}
	
?>
