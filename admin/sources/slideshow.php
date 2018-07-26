<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "SlideShow";
switch($act){

	case "man":
		get_items();
		$template = "slideshow/item";
		break;
	case "add":		
		$template = "slideshow/item_add";
		break;
	case "edit":		
		get_item();
		$template = "slideshow/item_add";
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

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_slideshow where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_slideshow set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_slideshow set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_slideshow where id!=0";
	
	if(isset($_REQUEST['position']) && $_REQUEST['position']!='')
	{
		$sql.=" and position='".$_REQUEST['position']."'";
	}
	$sql .= " order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=slideshow&act=man");
	
	$sql = "select * from #_slideshow where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=slideshow&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=slideshow&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'],_slide_size_w, _slide_size_h, _upload_hinhanh,$name.'_'.time(),1);
			$d->setTable('slideshow');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";

        $data['caption_vi'] = isset($_POST['caption_vi']) ? $_POST['caption_vi'] : "";
        $data['caption_en'] = isset($_POST['caption_en']) ? $_POST['caption_en'] : "";
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		$data['link'] = isset($_POST['link']) ? $_POST['link'] : "";
		
		$data['position'] = isset($_POST['position']) ? $_POST['position'] : "";
		$data['width'] = isset($_POST['width']) ? $_POST['width'] : "";
		$data['height'] = isset($_POST['height']) ? $_POST['height'] : "";
        
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : '1';		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('slideshow');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=slideshow&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=slideshow&act=man");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_hinhanh,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _slide_size_w, _slide_size_h, _upload_hinhanh,$name.'_'.time(),1);
		}
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";

        $data['caption_vi'] = isset($_POST['caption_vi']) ? $_POST['caption_vi'] : "";
        $data['caption_en'] = isset($_POST['caption_en']) ? $_POST['caption_en'] : "";
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		$data['link'] = isset($_POST['link']) ? $_POST['link'] : "";
		
		$data['position'] = isset($_POST['position']) ? $_POST['position'] : "";
		$data['width'] = isset($_POST['width']) ? $_POST['width'] : "";
		$data['height'] = isset($_POST['height']) ? $_POST['height'] : "";
        
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : '1';		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('slideshow');
		if($d->insert($data)){
			redirect("index.php?com=slideshow&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=slideshow&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_slideshow where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_hinhanh.$row['photo']);
				delete_file(_upload_hinhanh.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_slideshow where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=slideshow&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=slideshow&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_slideshow where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_hinhanh.$row['photo']);
					delete_file(_upload_hinhanh.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_slideshow where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=slideshow&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=slideshow&act=man");
}

//-------GET slideshow LIST ------//

function get_position_list($vitri='',$status=''){
	global $d;
	
	$pro_list = '<select name="position" class="form-control selectChange" '.$status.'>
	<option value="">Chọn vị trí</option>';
	
	$pro_list .= '<option value="left" '.(($vitri=='left')?'selected="selected"':'').'>Left</option>';
	$pro_list .= '<option value="right" '.(($vitri=='right')?'selected="selected"':'').'>Right</option>';
	$pro_list .= '<option value="top" '.(($vitri=='top')?'selected="selected"':'').'>Top</option>';
	$pro_list .= '<option value="bottom" '.(($vitri=='bottom')?'selected="selected"':'').'>Bottom</option>';
	$pro_list .= '<option value="center" '.(($vitri=='center')?'selected="selected"':'').'>Center</option>';
	$pro_list .= '</select>';
	
	return $pro_list;
}

?>