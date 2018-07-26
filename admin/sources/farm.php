<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Hệ thống trang trại";
switch($act){

	case "man":
		get_items();
		$template = "farm/item";
		break;
	case "add":		
		$template = "farm/item_add";
		break;
	case "edit":		
		get_item();
		$template = "farm/item_add";
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
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_farm where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_farm set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_farm set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if($_REQUEST['shows_index']!='')
	{
		$ids = $_REQUEST['shows_index'];
		$sql = "select shows_index from table_farm where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_index'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_farm set shows_index = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_farm set shows_index = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if($_REQUEST['shows_popup']!='')
	{
		$ids = $_REQUEST['shows_popup'];
		$sql = "select shows_popup from table_farm where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_popup'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_farm set shows_popup = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_farm set shows_popup = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
	$d->reset();
	$sql = "select * from #_farm where id!=0";
	$sql .= " order by numberic asc, date_update desc";
	$d->query($sql);
	$items = $d->result_array();
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=farm&act=man");
	
	$sql = "select * from #_farm where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=farm&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=farm&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 500, 500, _upload_hinhanh,$name.'_'.time(),1);
			$d->setTable('farm');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}
        $data['tenkodau'] = changeTitle($_POST['ten_vi']);
        
        $data['ten_vi'] = $_POST['ten_vi'];
		$data['title_vi'] = $_POST['title_vi'];
		$data['description_vi'] = $_POST['description_vi'];
		$data['keywords_vi'] = $_POST['keywords_vi'];
		$data['mota_vi'] = $_POST['mota_vi'];
		$data['noidung_vi'] = $_POST['noidung_vi'];
		
		$data['ten_en'] = $_POST['ten_en'];
		$data['title_en'] = $_POST['title_en'];
		$data['description_en'] = $_POST['description_en'];
		$data['keywords_en'] = $_POST['keywords_en'];
		$data['mota_en'] = $_POST['mota_en'];
		$data['noidung_en'] = $_POST['noidung_en'];
		
		$data['alt'] = $_POST['alt'];
		$data['link'] = $_POST['link'];
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('farm');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=farm&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=farm&act=man");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 500, 500, _upload_hinhanh,$name.'_'.time(),1);
		}
		
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);
		
        $data['ten_vi'] = $_POST['ten_vi'];
		$data['title_vi'] = $_POST['title_vi'];
		$data['description_vi'] = $_POST['description_vi'];
		$data['keywords_vi'] = $_POST['keywords_vi'];
		$data['mota_vi'] = $_POST['mota_vi'];
		$data['noidung_vi'] = $_POST['noidung_vi'];
		
		$data['ten_en'] = $_POST['ten_en'];
		$data['title_en'] = $_POST['title_en'];
		$data['description_en'] = $_POST['description_en'];
		$data['keywords_en'] = $_POST['keywords_en'];
		$data['mota_en'] = $_POST['mota_en'];
		$data['noidung_en'] = $_POST['noidung_en'];
        
		$data['alt'] = $_POST['alt'];
		$data['link'] = $_POST['link'];
        	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('farm');
		if($d->insert($data)){
			redirect("index.php?com=farm&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=farm&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_farm where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_farm where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=farm&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=farm&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_farm where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_hinhanh.$row['photo']);
					delete_file(_upload_hinhanh.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_farm where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=farm&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=farm&act=man");
}
?>