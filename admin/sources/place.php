<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Địa điểm";
switch($act){

	case "man_city":
		get_citys();
		$template = "place/city";
		break;
	case "add_city":		
		$template = "place/city_add";
		break;
	case "edit_city":		
		get_city();
		$template = "place/city_add";
		break;
	case "save_city":
		save_city();
		break;
	case "delete_city":
		delete_city();
		break;
		
	//---------------//

	case "man_district":
		get_districts();
		$template = "place/district";
		break;
	case "add_district":		
		$template = "place/district_add";
		break;
	case "edit_district":		
		get_district();
		$template = "place/district_add";
		break;
	case "save_district":
		save_district();
		break;
	case "delete_district":
		delete_district();
		break;

	default:
		$template = "index";
}


function get_citys(){
	global $d, $items;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_city where id=$ids";
		$d->query($sql);
		$city= $d->fetch_array();
		$shows=$city['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_city set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_city set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	
	$d->reset();
	$sql = "select * from #_city order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_city(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=place&act=man_city");
	
	$sql = "select * from #_city where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=place&act=man_city");
	$item = $d->fetch_array();
}

function save_city(){
	global $d;
	
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=place&act=man_city");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);
		$data['ten'] = $_POST['ten'];
		
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('city');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=place&act=man_city");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=place&act=man_city");
		}
	}else{
		
		
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);
		$data['ten'] = $_POST['ten'];
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('city');
		if($d->insert($data)){
			redirect("index.php?com=place&act=man_city");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=place&act=man_city");	
		}
	}
}

function delete_city(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_city where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=place&act=man_city");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=place&act=man_city");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();
			$sql = "delete from #_city where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=place&act=man_city");
	}else transfer("Không nhận được dữ liệu", "index.php?com=place&act=man_city");
}


function get_districts(){
	global $d, $items;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_district where id=$ids";
		$d->query($sql);
		$city= $d->fetch_array();
		$shows=$city['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_district set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_district set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	
	$d->reset();
	$sql = "select * from #_district where id!=0";
	
	if((int)$_REQUEST['id_city']!='')
	{
		$sql.=" and id_city=".(int)$_REQUEST['id_city']."";
	}
	$sql .= " order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_district(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=place&act=man_district");
	
	$sql = "select * from #_district where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=place&act=man_district");
	$item = $d->fetch_array();
}

function save_district(){
	global $d;
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=place&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		$data['id_city'] = (int)$_POST['id_city'];
		$data['tenkodau'] = changeTitle($_POST['ten']);
		$data['ten'] = $_POST['ten'];

		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('district');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=place&act=man_district");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=place&act=man_district");
		}
	}else{
		
		$data['id_city'] = (int)$_POST['id_city'];
		$data['tenkodau'] = changeTitle($_POST['ten']);
		
		$data['ten'] = $_POST['ten'];
		
	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('district');
		if($d->insert($data)){
			redirect("index.php?com=place&act=man_district");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=place&act=man_district");	
		}
	}
}

function delete_district(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "delete from #_district where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=place&act=man_district");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=place&act=man_district");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();
			$sql = "delete from #_district where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=place&act=man_district");
	}else transfer("Không nhận được dữ liệu", "index.php?com=place&act=man_district");
}

//-------GET place city ------//

function get_select($id=0,$tbl='',$idl=''){
	global $d;
	
	$sql = "select * from #_$tbl order by numberic asc,id desc";
	$d->query($sql);
	$lists = $d->result_array();
	
	$pro_list = '<select name="'.$idl.'" class="form-control selectChange">
	<option value="">Danh mục</option>
	
	';
	for($i=0, $count=count($lists); $i<$count; $i++)
		$pro_list .= '<option value="'.$lists[$i]['id'].'" '.(($lists[$i]['id']==$id)?'selected="selected"':'').'>'.$lists[$i]['ten'].'</option>';
	$pro_list .= '</select>';
	
	return $pro_list;
}

function get_name($id=0, $tbl=''){
	global $d;
	
	$sql = "select ten from #_$tbl where id=$id";
	$d->query($sql);
	$list = $d->fetch_array();
	echo  $list['ten'];
}

?>