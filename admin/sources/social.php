<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Link chia sẻ";
switch($act){

	case "man":
		get_items();
		$template = "social/item";
		break;
	case "add":		
		$template = "social/item_add";
		break;
	case "edit":		
		get_item();
		$template = "social/item_add";
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
		$sql = "select shows from table_social where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_social set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_social set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_social order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=social&act=man");
	
	$sql = "select * from #_social where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=social&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=social&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 32, 32, _upload_hinhanh,$name.'_'.time(),1);
			$d->setTable('social');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}		
		$data['ten'] = isset($_POST['ten']) ? $_POST['ten'] : "";
		$data['link'] = isset($_POST['link']) ? $_POST['link'] : "";
				
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('social');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=social&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=social&act=man");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 32, 32, _upload_hinhanh,$name.'_'.time(),1);
		}
		$data['ten'] = isset($_POST['ten']) ? $_POST['ten'] : "";
		$data['link'] = isset($_POST['link']) ? $_POST['link'] : "";
				
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";			
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('social');
		if($d->insert($data)){
			redirect("index.php?com=social&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=social&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_social where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_social where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=social&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=social&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_social where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_hinhanh.$row['photo']);
					delete_file(_upload_hinhanh.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_social where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=social&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=social&act=man");
}

?>