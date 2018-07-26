<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Thiết lập";
switch($act){
	case "edit":
		get_data();
		$template = "setting/item_add";
		break;
	case "save":
		save_data();
		break;
		
	default:
		$template = "index";
}

function get_data(){
	global $d, $item;

	$sql = "select * from #_setting limit 0,1";
	$d->query($sql);
	$item = $d->fetch_array();
}

function save_data(){
	global $d;
	
	$name_logo = isset($_FILES['logo']['name']) ? get_img_name($_FILES['logo']['name']) : "";
	$name_favicon = isset($_FILES['favicon']['name']) ? get_img_name($_FILES['favicon']['name']) : "";
    $name_popup_image = isset($_FILES['popup_image']['name']) ? get_img_name($_FILES['popup_image']['name']) : "";
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=setting&act=edit");
	
	if($logo = upload_image("logo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name_logo.'_'.time())){
		$data['logo'] = $logo;
		
		$d->setTable('setting');
		$d->setWhere('id', $id);
		$d->select();
		if($d->num_rows()>0){
			$row = $d->fetch_array();
			delete_file(_upload_hinhanh.$row['logo']);
		}
	}
	
	if($favicon = upload_image("favicon", 'ico|jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name_favicon.'_'.time())){
		$data['favicon'] = $favicon;
		
		$d->setTable('setting');
		$d->setWhere('id', $id);
		$d->select();
		if($d->num_rows()>0){
			$row = $d->fetch_array();
			delete_file(_upload_hinhanh.$row['favicon']);
		}
	} 
    
    if($popup_image = upload_image("popup_image", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name_popup_image.'_'.time())){
		$data['popup_image'] = $popup_image;
		
		$d->setTable('setting');
		$d->setWhere('id', $id);
		$d->select();
		if($d->num_rows()>0){
			$row = $d->fetch_array();
			delete_file(_upload_hinhanh.$row['popup_image']);
		}
	}
       
	$data['lang'] = isset($_POST['lang']) ? $_POST['lang'] : "";
	
	$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
	$data['title_vi'] = isset($_POST['title_vi']) ? $_POST['title_vi'] : "";
	$data['description_vi'] = isset($_POST['description_vi']) ? $_POST['description_vi'] : "";
	$data['keywords_vi'] = isset($_POST['keywords_vi']) ? $_POST['keywords_vi'] : "";
	$data['address_vi'] = isset($_POST['address_vi']) ? $_POST['address_vi'] : "";
	
	/*$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";
	$data['title_en'] = isset($_POST['title_en']) ? $_POST['title_en'] : "";
	$data['description_en'] = isset($_POST['description_en']) ? $_POST['description_en'] : "";
	$data['keywords_en'] = isset($_POST['keywords_en']) ? $_POST['keywords_en'] : "";
	$data['address_en'] = isset($_POST['address_en']) ? $_POST['address_en'] : "";*/
	
	
	$data['googlemaps'] = isset($_POST['googlemaps']) ? $_POST['googlemaps'] : "";
	$data['geos'] = isset($_POST['geos']) ? $_POST['geos'] : "";
	$data['fax'] = isset($_POST['fax']) ? $_POST['fax'] : "";
	$data['hotline'] = isset($_POST['hotline']) ? $_POST['hotline'] : "";
	$data['phone'] = isset($_POST['phone']) ? $_POST['phone'] : "";
	$data['email'] = isset($_POST['email']) ? $_POST['email'] : "";
	$data['website'] = isset($_POST['website']) ? $_POST['website'] : "";
	$data['fanpage'] = isset($_POST['fanpage']) ? $_POST['fanpage'] : "";
	$data['copy_right'] = isset($_POST['copy_right']) ? $_POST['copy_right'] : "";
	
    $data['popup_link'] = isset($_POST['popup_link']) ? $_POST['popup_link'] : "";
    $data['popup_title'] = isset($_POST['popup_title']) ? $_POST['popup_title'] : "";
    
	$d->reset();
	$d->setTable('setting');
	if($d->update($data))
		redirect("index.php?com=setting&act=edit");
	else
		transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=setting&act=edit");
}
?>