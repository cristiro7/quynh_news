<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Giới thiệu";
switch($act){
    
    case "man_list":
		get_lists();
		$template = "about/list";
		break;
	case "add_list":		
		$template = "about/list_add";
		break;
	case "edit_list":		
		get_list();
		$template = "about/list_add";
		break;
	case "save_list":
		save_list();
		break;
	case "delete_list":
		delete_list();
		break;
		
	//---------------//
    
	case "man":
		get_items();
		$template = "about/item";
		break;
	case "add":		
		$template = "about/item_add";
		break;
	case "edit":		
		get_item();
		$template = "about/item_add";
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

function get_lists(){
	global $d, $items, $paging;

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_about_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about_list set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about_list set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if(isset($_REQUEST['shows_menu']) && $_REQUEST['shows_menu']!='')
	{
		$ids = $_REQUEST['shows_menu'];
		$sql = "select shows_menu from table_about_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_menu'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about_list set shows_menu = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about_list set shows_menu = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if(isset($_REQUEST['shows_tab']) && $_REQUEST['shows_tab']!='')
	{
		$ids = $_REQUEST['shows_tab'];
		$sql = "select shows_tab from table_about_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_tab'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about_list set shows_tab = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about_list set shows_tab = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if(isset($_REQUEST['shows_index']) && $_REQUEST['shows_index']!='')
	{
		$ids = $_REQUEST['shows_index'];
		$sql = "select shows_index from table_about_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_index'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about_list set shows_index = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about_list set shows_index = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_about_list order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_list(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=about&act=man_list");
	
	$sql = "select * from #_about_list where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=about&act=man_list");
	$item = $d->fetch_array();
}

function save_list(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=about&act=man_list");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 300, 215, _upload_news,$name.'_'.time(),2);
			$d->setTable('about_list');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
			}
		}
		
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);
		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['title_vi'] = $_POST['title_vi'];
		$data['description_vi'] = $_POST['description_vi'];
		$data['keywords_vi'] = $_POST['keywords_vi'];
		$data['noidung_vi'] = $_POST['noidung_vi'];
		
		$data['ten_en'] = $_POST['ten_en'];
		$data['title_en'] = $_POST['title_en'];
		$data['description_en'] = $_POST['description_en'];
		$data['keywords_en'] = $_POST['keywords_en'];
		$data['noidung_en'] = $_POST['noidung_en'];
		
		$data['alt'] = $_POST['alt'];
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('about_list');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=about&act=man_list");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=about&act=man_list");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 300, 215, _upload_news,$name.'_'.time(),2);
		}
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);
		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['title_vi'] = $_POST['title_vi'];
		$data['description_vi'] = $_POST['description_vi'];
		$data['keywords_vi'] = $_POST['keywords_vi'];
		$data['noidung_vi'] = $_POST['noidung_vi'];
		
		$data['ten_en'] = $_POST['ten_en'];
		$data['title_en'] = $_POST['title_en'];
		$data['description_en'] = $_POST['description_en'];
		$data['keywords_en'] = $_POST['keywords_en'];
		$data['noidung_en'] = $_POST['noidung_en'];
		
		$data['alt'] = $_POST['alt'];
	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('about_list');
		if($d->insert($data)){
			redirect("index.php?com=about&act=man_list");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=about&act=man_list");	
		}
	}
}

function delete_list(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_about_list where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_about_list where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=about&act=man_list");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=about&act=man_list");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_about_list where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_news.$row['photo']);
					delete_file(_upload_news.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_about_list where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=about&act=man_list");
	}else transfer("Không nhận được dữ liệu", "index.php?com=about&act=man_list");
}

function get_items(){
	global $d, $items;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_about where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_index']!='')
	{
		$ids = $_REQUEST['shows_index'];
		$sql = "select shows_index from table_about where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_index'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about set shows_index = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about set shows_index = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_popup']!='')
	{
		$ids = $_REQUEST['shows_popup'];
		$sql = "select shows_popup from table_about where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_popup'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about set shows_popup = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
            
            $sqlUPDATE = "update table_about set shows_popup = 0 where id<>$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about set shows_popup = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if($_REQUEST['who_we_are']!='')
	{
		$ids = $_REQUEST['who_we_are'];
		$sql = "select who_we_are from table_about where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['who_we_are'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_about set who_we_are = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
            
            $sqlUPDATE = "update table_about set who_we_are = 0 where id<>$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_about set who_we_are = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    $d->reset();
	$sql = "select * from #_about where id!=0";
	
	if((int)$_REQUEST['id_list']!='')
	{
		$sql.=" and id_list=".(int)$_REQUEST['id_list']."";
	}
	$sql .= " order by id_list asc, numberic asc, id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=about&act=man");
	
	$sql = "select * from #_about where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=about&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=about&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _about_thumb_w, _about_thumb_h, _upload_news,$name.'_'.time()._about_thumb_w.'x'._about_thumb_h,1);
			$d->setTable('about');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
				//delete_file(_upload_news.$row['thumb2']);
			}
		}
		//$data['id_list'] = (int)$_POST['id_list'];
		$data['tenkodau'] = changeTitle(isset($_POST['ten_vi']) ? $_POST['ten_vi'] : '');
		
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['title_vi'] = isset($_POST['title_vi']) ? $_POST['title_vi'] : "";
		$data['description_vi'] = isset($_POST['description_vi']) ? $_POST['description_vi'] : "";
		$data['keywords_vi'] = isset($_POST['keywords_vi']) ? $_POST['keywords_vi'] : "";
		$data['mota_vi'] = isset($_POST['mota_vi']) ? $_POST['mota_vi'] : "";
		$data['noidung_vi'] = isset($_POST['noidung_vi']) ? $_POST['noidung_vi'] : "";
		
		/*$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";
		$data['title_en'] = isset($_POST['title_en']) ? $_POST['title_en'] : "";
		$data['description_en'] = isset($_POST['description_en']) ? $_POST['description_en'] : "";
		$data['keywords_en'] = isset($_POST['keywords_en']) ? $_POST['keywords_en'] : "";
		$data['mota_en'] = isset($_POST['mota_en']) ? $_POST['mota_en'] : "";
		$data['noidung_en'] = isset($_POST['noidung_en']) ? $_POST['noidung_en'] : "";*/
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
        
        $data['video_link'] = isset($_POST['video_link']) ? $_POST['video_link'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('about');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=about&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=about&act=man");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _about_thumb_w, _about_thumb_h, _upload_news,$name.'_'.time()._about_thumb_w.'x'._about_thumb_h,1);
		}
		//$data['id_list'] = (int)$_POST['id_list'];
		$data['tenkodau'] = changeTitle(isset($_POST['ten_vi']) ? $_POST['ten_vi'] : '');
		
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['title_vi'] = isset($_POST['title_vi']) ? $_POST['title_vi'] : "";
		$data['description_vi'] = isset($_POST['description_vi']) ? $_POST['description_vi'] : "";
		$data['keywords_vi'] = isset($_POST['keywords_vi']) ? $_POST['keywords_vi'] : "";
		$data['mota_vi'] = isset($_POST['mota_vi']) ? $_POST['mota_vi'] : "";
		$data['noidung_vi'] = isset($_POST['noidung_vi']) ? $_POST['noidung_vi'] : "";
		
		/*$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";
		$data['title_en'] = isset($_POST['title_en']) ? $_POST['title_en'] : "";
		$data['description_en'] = isset($_POST['description_en']) ? $_POST['description_en'] : "";
		$data['keywords_en'] = isset($_POST['keywords_en']) ? $_POST['keywords_en'] : "";
		$data['mota_en'] = isset($_POST['mota_en']) ? $_POST['mota_en'] : "";
		$data['noidung_en'] = isset($_POST['noidung_en']) ? $_POST['noidung_en'] : "";*/
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
        
        $data['video_link'] = isset($_POST['video_link']) ? $_POST['video_link'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('about');
		if($d->insert($data)){
			redirect("index.php?com=about&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=about&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_about where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_about where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=about&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=about&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_about where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_news.$row['photo']);
					delete_file(_upload_news.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_about where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=about&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=about&act=man");
}

//-------GET NEWS LIST ------//

function get_select_list($id=0,$tbl='',$idl=''){
	global $d;
	
	$sql = "select * from #_$tbl order by numberic asc,id desc";
	$d->query($sql);
	$lists = $d->result_array();
	
	$pro_list = '<select name="'.$idl.'" class="form-control selectChange">
	<option value="">Danh mục</option>
	
	';
	for($i=0, $count=count($lists); $i<$count; $i++)
		$pro_list .= '<option value="'.$lists[$i]['id'].'" '.(($lists[$i]['id']==$id)?'selected="selected"':'').'>'.$lists[$i]['ten_vi'].'</option>';
	$pro_list .= '</select>';
	
	return $pro_list;
}

function get_name_list($id=0, $tbl=''){
	global $d;
	
	$sql = "select ten_vi from #_$tbl where id=$id";
	$d->query($sql);
	$list = $d->fetch_array();
	echo  $list['ten_vi'];
}

?>