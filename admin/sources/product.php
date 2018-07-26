<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Sản phẩm";
if(isset($_REQUEST['id_product'])){$_SESSION['id_product']=(int)$_REQUEST['id_product'];}
if(isset($_REQUEST['id_list'])){$_SESSION['id_list']=(int)$_REQUEST['id_list'];}
switch($act){

	case "man_list":
		get_lists();
		$template = "product/list";
		break;
	case "add_list":		
		$template = "product/list_add";
		break;
	case "edit_list":		
		get_list();
		$template = "product/list_add";
		break;
	case "save_list":
		save_list();
		break;
	case "delete_list":
		delete_list();
		break;
		
	//---------------//

	case "man_cat":
		get_cats();
		$template = "product/cat";
		break;
	case "add_cat":		
		$template = "product/cat_add";
		break;
	case "edit_cat":		
		get_cat();
		$template = "product/cat_add";
		break;
	case "save_cat":
		save_cat();
		break;
	case "delete_cat":
		delete_cat();
		break;

	//---------------//
	
	case "man_item":
		get_items();
		$template = "product/item";
		break;
	case "add_item":		
		$template = "product/item_add";
		break;
	case "edit_item":		
		get_item();
		$template = "product/item_add";
		break;
	case "save_item":
		save_item();
		break;
	case "delete_item":
		delete_item();
		break;	
		
	//---------------//
	
	case "copy":
		get_copy();
		break;
		
	case "man":
		get_products();
		$template = "product/product";
		break;
	case "add":		
		$template = "product/product_add";
		break;
	case "edit":		
		get_product();
		$template = "product/product_add";
		break;
	case "save":
		save_product();
		break;
	case "delete":
		delete_product();
		break;
		
	//---------------//
	
	case "man_compare":
		get_compares();
		$template = "product/compare";
		break;
	case "add_compare":		
		$template = "product/compare_add";
		break;
	case "edit_compare":		
		get_compare();
		$template = "product/compare_add";
		break;
	case "save_compare":
		save_compare();
		break;
	case "delete_compare":
		delete_compare();
		break;
		
	case "edit_pcompare":		
		get_pcompare();
		$template = "product/pcompare_add";
		break;
	case "save_pcompare":
		save_pcompare();
		break;	
		
	//---------------//	
	
	case "man_provider":
		get_providers();
		$template = "product/provider";
		break;
	case "add_provider":		
		$template = "product/provider_add";
		break;
	case "edit_provider":		
		get_provider();
		$template = "product/provider_add";
		break;
	case "save_provider":
		save_provider();
		break;
	case "delete_provider":
		delete_provider();
		break;
		
	//---------------//
	
	case "man_type":
		get_types();
		$template = "product/type";
		break;
	case "add_type":		
		$template = "product/type_add";
		break;
	case "edit_type":		
		get_type();
		$template = "product/type_add";
		break;
	case "save_type":
		save_type();
		break;
	case "delete_type":
		delete_type();
		break;
        
    //---------------//
	
	case "man_size":
		get_sizes();
		$template = "product/size";
		break;
	case "add_size":		
		$template = "product/size_add";
		break;
	case "edit_size":		
		get_size();
		$template = "product/size_add";
		break;
	case "save_size":
		save_size();
		break;
	case "delete_size":
		delete_size();
		break;
        
    //---------------//
	
	case "man_color":
		get_colors();
		$template = "product/color";
		break;
	case "add_color":		
		$template = "product/color_add";
		break;
	case "edit_color":		
		get_color();
		$template = "product/color_add";
		break;
	case "save_color":
		save_color();
		break;
	case "delete_color":
		delete_color();
		break;
                        
	//---------------//

	case "man_photo":
		get_photos();
		$template = "product/photo";
		break;
	case "add_photo":		
		$template = "product/photo_add";
		break;
	case "edit_photo":		
		get_photo();
		$template = "product/photo_edit";
		break;
	case "save_photo":
		save_photo();
		break;
	case "delete_photo":
		delete_photo();
		break;	
	
	default:
		$template = "index";
}

function get_lists(){
	global $d, $items, $paging;

	if(isset($_REQUEST['shows_index']) && $_REQUEST['shows_index']!='')
	{
		$ids = $_REQUEST['shows_index'];
		$sql = "select shows_index from table_product_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_index'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_list set shows_index = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_list set shows_index = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_list set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_list set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_product_list order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_list(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_list");
	
	$sql = "select * from #_product_list where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_list");
	$item = $d->fetch_array();
}

function save_list(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_list");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
            $data['thumb'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
			$data['thumb1'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
			$d->setTable('product_list');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
			}
		}
		$data['tenkodau'] = changeTitle(isset($_POST['ten_vi']) ? $_POST['ten_vi'] : '');
		
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['title_vi'] = isset($_POST['title_vi']) ? $_POST['title_vi'] : "";
		$data['description_vi'] = isset($_POST['description_vi']) ? $_POST['description_vi'] : "";
		$data['keywords_vi'] = isset($_POST['keywords_vi']) ? $_POST['keywords_vi'] : "";
		$data['noidung_vi'] = isset($_POST['noidung_vi']) ? $_POST['noidung_vi'] : "";
		
		/*$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";
		$data['title_en'] = isset($_POST['title_en']) ? $_POST['title_en'] : "";
		$data['description_en'] = isset($_POST['description_en']) ? $_POST['description_en'] : "";
		$data['keywords_en'] = isset($_POST['keywords_en']) ? $_POST['keywords_en'] : "";
		$data['mota_en'] = isset($_POST['mota_en']) ? $_POST['mota_en'] : "";
		$data['noidung_en'] = isset($_POST['noidung_en']) ? $_POST['noidung_en'] : "";*/
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product_list');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_list");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_list");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
			$data['thumb1'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
		}
		$data['tenkodau'] = changeTitle(isset($_POST['ten_vi']) ? $_POST['ten_vi'] : '');
		
		$data['ten_vi'] = isset($_POST['ten_vi']) ? $_POST['ten_vi'] : "";
		$data['title_vi'] = isset($_POST['title_vi']) ? $_POST['title_vi'] : "";
		$data['description_vi'] = isset($_POST['description_vi']) ? $_POST['description_vi'] : "";
		$data['keywords_vi'] = isset($_POST['keywords_vi']) ? $_POST['keywords_vi'] : "";
		$data['noidung_vi'] = isset($_POST['noidung_vi']) ? $_POST['noidung_vi'] : "";
		
		/*$data['ten_en'] = isset($_POST['ten_en']) ? $_POST['ten_en'] : "";
		$data['title_en'] = isset($_POST['title_en']) ? $_POST['title_en'] : "";
		$data['description_en'] = isset($_POST['description_en']) ? $_POST['description_en'] : "";
		$data['keywords_en'] = isset($_POST['keywords_en']) ? $_POST['keywords_en'] : "";
		$data['mota_en'] = isset($_POST['mota_en']) ? $_POST['mota_en'] : "";
		$data['noidung_en'] = isset($_POST['noidung_en']) ? $_POST['noidung_en'] : "";*/
		
		$data['alt'] = isset($_POST['alt']) ? $_POST['alt'] : "";
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('product_list');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_list");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_list");	
		}
	}
}

function delete_list(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb,thumb1 from #_product_list where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
			}
		}
		$d->reset();
		$sql = "delete from #_product_list where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=product&act=man_list");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_list");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb,thumb1 from #_product_list where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
                    delete_file(_upload_product.$row['thumb1']);
				}
			}
			$d->reset();
			$sql = "delete from #_product_list where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_list");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_list");
}

//-------- Product Cat -------//
function get_cats(){
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_cat where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_cat set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_cat set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_cat where id!=0";
	
	if((int)$_REQUEST['id_list']!='')
	{
		$sql.=" and id_list=".(int)$_REQUEST['id_list']."";
	}
	$sql .= " order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
}

function get_cat(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_cat");
	
	$sql = "select * from #_product_cat where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_cat");
	$item = $d->fetch_array();
}

function save_cat(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_cat");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
			$d->setTable('product_cat');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
			}
		}
		
		$data['id_list'] = (int)$_POST['id_list'];
		
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
		
		$d->setTable('product_cat');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_cat");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_cat");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
		}
		
		$data['id_list'] = (int)$_POST['id_list'];
		
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

		$d->setTable('product_cat');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_cat");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_cat");	
		}
	}
}

function delete_cat(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_product_cat where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_product_cat where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=product&act=man_cat");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_cat");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_product_cat where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_product_cat where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_cat");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_cat");
}

//-------- Product Item -------//
function get_items(){
	global $d, $items, $paging;

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_item where id=$ids";
		$d->query($sql);
		$item= $d->fetch_array();
		$shows=$item['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_item set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_item set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_item where id!=0";
	
	if(isset($_REQUEST['id_list']) && (int)$_REQUEST['id_list']!='')
	{
		$sql.=" and id_list=".(int)$_REQUEST['id_list']."";
	}
	
	if(isset($_REQUEST['id_cat']) && (int)$_REQUEST['id_cat']!='')
	{
		$sql.=" and id_cat=".(int)$_REQUEST['id_cat']."";
	}
	$sql .= " order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_item");
	
	$sql = "select * from #_product_item where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_item");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_item");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
			$d->setTable('product_item');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
			}
		}
		
		$data['id_list'] = isset($_POST['id_list']) ? (int)$_POST['id_list'] : "";
		$data['id_cat'] = isset($_POST['id_cat']) ? (int)$_POST['id_cat'] : "";
		
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
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product_item');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_item");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_item");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
		}
		$data['id_list'] = isset($_POST['id_list']) ? (int)$_POST['id_list'] : "";
		$data['id_cat'] = isset($_POST['id_cat']) ? (int)$_POST['id_cat'] : "";
		
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
		
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('product_item');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_item");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_item");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_product_item where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_product_item where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=product&act=man_item");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_item");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_product_item where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_product_item where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_item");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_item");
}

//-------Compare----------//

function get_compares(){
	global $d, $items, $paging;
	
	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_compare where id=$ids";
		$d->query($sql);
		$item= $d->fetch_array();
		$shows=$item['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_compare set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_compare set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$id_parent=(int)$_REQUEST['id_parents'];
	$sql = "select * from #_product_compare where id_parents='$id_parent'";
	
	if(isset($_SESSION['id_list'])){
	$sql.=" and id_list=".$_SESSION['id_list'];	
	}
	
	$sql.=" order by numberic asc,id desc";
	
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_compare(){
	global $d, $item;
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id)
	transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_compare");
	
	$sql = "select * from #_product_compare where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_compare");
	$item = $d->fetch_array();
}

function save_compare(){
	global $d;

	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_compare");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		$data['id_parents'] = $_POST['id_parents'];
		$data['id_list'] = $_SESSION['id_list'];
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
		
		
		$data['numberic'] = $_POST['numberic'];
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product_compare');
		$d->setWhere('id', $id);
		if($d->update($data))
			redirect("index.php?com=product&act=man_compare&id_parents=".$_REQUEST['id_parents']);
		else
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_compare");
	}else{

		$data['id_parents'] = $_POST['id_parents'];
		$data['id_list'] = $_SESSION['id_list'];
		$data['tenkodau'] = changeTitle($_POST['ten_vi']);		
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
		
		$data['numberic'] = $_POST['numberic'];
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
		
		$d->setTable('product_compare');
		if($d->insert($data))
			redirect("index.php?com=product&act=man_compare");
		else
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_compare");
	}
}

function delete_compare(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id from #_product_compare where id_parents='".$id."'";
		$d->query($sql);
		if($d->num_rows()==0){	
			$sql = "delete from #_product_compare where id='".$id."'";
			if($d->query($sql))
				redirect("index.php?com=product&act=man_compare");
			else
				transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_compare");
			
		}else transfer("Danh mục không rỗng, bạn cần xóa hoặc di chuyển các danh mục con trước", "index.php?com=product&act=man_compare");
			
			
	}elseif(isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);		
			$d->reset();
			$sql = "delete from #_product_compare where id=".$id;
			$d->query($sql);
			$sql2 = "delete from #_product_compare where id_parents=".$id;
			$d->query($sql2);
		}redirect("index.php?com=product&act=man_compare");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_compare");
}

function get_pcompare(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	$sql = "select * from #_product_compare_properties where id_product='".$_SESSION['id_product']."'";
	$d->query($sql);
	$item = $d->fetch_array();
}

function save_pcompare(){
	global $d;
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=edit_pcompare");
	$id_product = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id_product){
		
		$data['id_product'] = $_SESSION['id_product'];
		$data['id_compare'] = implode('<-||->',$_POST['id_compare']);
		$data['noidung'] = implode('<-||->',$_POST['noidung']);
		
		$d->setTable('product_compare_properties');
		$d->setWhere('id_product', $id_product);
		if($d->update($data))
			redirect("index.php?com=product&act=edit_pcompare");
		else
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=edit_pcompare");
	}else{
	
		$data['id_product'] = $_SESSION['id_product'];
		$data['id_compare'] = implode('<-||->',$_POST['id_compare']);
		$data['noidung'] = implode('<-||->',$_POST['noidung']);
		
		$d->setTable('product_compare_properties');
		if($d->insert($data))
			redirect("index.php?com=product&act=edit_pcompare");
		else
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=edit_pcompare");
	}
}

//-------Provider----------//

function get_providers(){
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_provider where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_provider set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_provider set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_provider order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_provider(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_provider");
	
	$sql = "select * from #_product_provider where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_provider");
	$item = $d->fetch_array();
}

function save_provider(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_provider");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			#$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
			$d->setTable('product_provider');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				#delete_file(_upload_product.$row['thumb']);
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
		
		$d->setTable('product_provider');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_provider");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_provider");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			#$data['thumb'] = create_thumb($data['photo'], 200, 70, _upload_product,$name.'_'.time(),2);
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

		$d->setTable('product_provider');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_provider");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_provider");	
		}
	}
}

function delete_provider(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_product_provider where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				#delete_file(_upload_product.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_product_provider where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=product&act=man_provider");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_provider");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_product_provider where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					#delete_file(_upload_product.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_product_provider where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_provider");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_provider");
}

//-------- Product Type -------//

function get_types(){
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_type where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_type set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_type set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_type order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_type(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_type");
	
	$sql = "select * from #_product_type where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_type");
	$item = $d->fetch_array();
}

function save_type(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_type");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
			$d->setTable('product_type');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
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
		
		$d->setTable('product_type');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_type");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_type");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_product,$name.'_'.time(),2);
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

		$d->setTable('product_type');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_type");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_type");	
		}
	}
}

function delete_type(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_product_type where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_product_type where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=product&act=man_type");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_type");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_product_type where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_product_type where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_type");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_type");
}

//-------- Product Size -------//

function get_sizes(){
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_size where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_size set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_size set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_size order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_size(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_size");
	
	$sql = "select * from #_product_size where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_size");
	$item = $d->fetch_array();
}

function save_size(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_size");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		$data['ten_vi'] = $_POST['ten_vi'];
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product_size');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_size");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_size");
		}
	}else{
		$data['ten_vi'] = $_POST['ten_vi'];
	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('product_size');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_size");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_size");	
		}
	}
}

function delete_size(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		
		$d->reset();
		$sql = "delete from #_product_size where id='".$id."'";
        
        // Xoa moi quan he size cua san pham trong bang table_product_team
        $sql_team = "delete from #_product_team where id_team='".$id."' and type='size'";
		$d->query($sql_team);
        
		if($d->query($sql))
			redirect("index.php?com=product&act=man_size");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_size");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			
			$d->reset();
			$sql = "delete from #_product_size where id='".$id."'";
			$d->query($sql);
            
            // Xoa moi quan he size cua san pham trong bang table_product_team
            $sql_team = "delete from #_product_team where id_team='".$id."' and type='size'";
            $d->query($sql_team);
		}
		redirect("index.php?com=product&act=man_size");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_size");
}

//-------- Product color -------//

function get_colors(){
	global $d, $items, $paging;

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_color where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_color set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_color set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	$d->reset();
	$sql = "select * from #_product_color order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_color(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_color");
	
	$sql = "select * from #_product_color where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_color");
	$item = $d->fetch_array();
}

function save_color(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_color");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
				
		$data['color'] = $_POST['color'];
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product_color');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=product&act=man_color");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_color");
		}
	}else{
		$data['ten_vi'] = $_POST['ten_vi'];
		$data['ten_en'] = $_POST['ten_en'];
				
		$data['color'] = $_POST['color'];
	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();

		$d->setTable('product_color');
		if($d->insert($data)){
			redirect("index.php?com=product&act=man_color");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_color");	
		}
	}
}

function delete_color(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		
		$d->reset();
		$sql = "delete from #_product_color where id='".$id."'";
        
        // Xoa moi quan he mau sac cua san pham trong bang table_product_team
        $sql_team = "delete from #_product_team where id_team='".$id."' and type='color'";
		$d->query($sql_team);
        
		if($d->query($sql))
			redirect("index.php?com=product&act=man_color");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_color");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			
			$d->reset();
			$sql = "delete from #_product_color where id='".$id."'";
			$d->query($sql);
            
            // Xoa moi quan he mau sac cua san pham trong bang table_product_team
            $sql_team = "delete from #_product_team where id_team='".$id."' and type='color'";
    		$d->query($sql_team);
 		}
		redirect("index.php?com=product&act=man_color");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_color");
}

//-------- Product -------//

function get_products(){
	global $d, $items;

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if(isset($_REQUEST['shows_popup']) && $_REQUEST['shows_popup']!='')
	{
		$ids = $_REQUEST['shows_popup'];
		$sql = "select shows_popup from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_popup'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows_popup = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows_popup = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if(isset($_REQUEST['shows_top']) && $_REQUEST['shows_top']!='')
	{
		$ids = $_REQUEST['shows_top'];
		$sql = "select shows_top from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_top'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows_top = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows_top = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if(isset($_REQUEST['shows_new']) && $_REQUEST['shows_new']!='')
	{
		$ids = $_REQUEST['shows_new'];
		$sql = "select shows_new from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_new'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows_new = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows_new = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if(isset($_REQUEST['shows_sale']) && $_REQUEST['shows_sale']!='')
	{
		$ids = $_REQUEST['shows_sale'];
		$sql = "select shows_sale from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_sale'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows_sale = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows_sale = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if(isset($_REQUEST['shows_like']) && $_REQUEST['shows_like']!='')
	{
		$ids = $_REQUEST['shows_like'];
		$sql = "select shows_like from table_product where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows_like'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product set shows_like = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product set shows_like = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_product where id!=0";
	
	if(isset($_REQUEST['id_list']) && (int)$_REQUEST['id_list']!='')
	{
		$sql.=" and id_list=".(int)$_REQUEST['id_list']."";
	}
	
	if(isset($_REQUEST['id_cat']) && (int)$_REQUEST['id_cat']!='')
	{
		$sql.=" and id_cat=".(int)$_REQUEST['id_cat']."";
	}
	
	if(isset($_REQUEST['id_item']) && (int)$_REQUEST['id_item']!='')
	{
		$sql.=" and id_item=".(int)$_REQUEST['id_item']."";
	}
	
	$sql .= " order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
}

function get_product(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man");
	
	$sql = "select * from #_product where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man");
	$item = $d->fetch_array();
}

function save_product(){
	global $d;
	$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
	
	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_product,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
            $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
            $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_product,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
            
			$d->setTable('product');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
                delete_file(_upload_product.$row['thumb2']);
                delete_file(_upload_product.$row['thumb3']);
			}
		}
		$data['id_list'] = isset($_POST['id_list']) ? (int)$_POST['id_list'] : "";
		$data['id_cat'] = isset($_POST['id_cat']) ? (int)$_POST['id_cat'] : "";
        $data['id_item'] = isset($_POST['id_item']) ? (int)$_POST['id_item'] : "";
		
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
        $data['code'] = isset($_POST['code']) ? $_POST['code'] : "";
        $data['video_link'] = isset($_POST['video_link']) ? $_POST['video_link'] : "";
			
		$data['price'] = isset($_POST['price']) ? $_POST['price'] : "";
		$data['sale'] = isset($_POST['sale']) ? $_POST['sale'] : "";
        
        $data['unit'] = isset($_POST['unit']) ? $_POST['unit'] : "";
		
        //$data['type_format'] = isset($_POST['type_format']) ? $_POST['type_format'] : "";
        $data['shows_sale'] = ($data['sale'] != 0) ? 1 : 0;
        
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('product');
		$d->setWhere('id', $id);
		if($d->update($data)){			
            
            /* Xoa quan he giua SP va Size sau do cap nhat lai
            $d->reset();
			$sql = "delete from #_product_team where id_product=$id and type='size'";
			$d->query($sql);
						                
			if($_POST['team_size']){
				$idTeam = $_POST['team_size'];
				for($i=0;$i<count($idTeam);$i++){
					$team['id_product'] = $id;
					$team['id_team'] = $idTeam[$i];
					$team['type'] = 'size';
					$d->setTable('product_team');
					$d->insert($team);
				}
			}
            
            //Xoa quan he giua SP va Color sau do cap nhat lai
            $d->reset();
			$sql = "delete from #_product_team where id_product=$id and type='color'";
			$d->query($sql);
						                
			if($_POST['team_color']){
				$idTeam = $_POST['team_color'];
				for($i=0;$i<count($idTeam);$i++){
					$team['id_product'] = $id;
					$team['id_team'] = $idTeam[$i];
					$team['type'] = 'color';
					$d->setTable('product_team');
					$d->insert($team);
				}
			}
            */
			redirect("index.php?com=product&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man");
		}
	}else{
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_product,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
            $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
            $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_product,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
		}
		$data['id_list'] = isset($_POST['id_list']) ? (int)$_POST['id_list'] : "";
		$data['id_cat'] = isset($_POST['id_cat']) ? (int)$_POST['id_cat'] : "";
        $data['id_item'] = isset($_POST['id_item']) ? (int)$_POST['id_item'] : "";
		
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
        $data['code'] = isset($_POST['code']) ? $_POST['code'] : "";
        $data['video_link'] = isset($_POST['video_link']) ? $_POST['video_link'] : "";
			
		$data['price'] = isset($_POST['price']) ? $_POST['price'] : "";
		$data['sale'] = isset($_POST['sale']) ? $_POST['sale'] : "";
        
		$data['unit'] = isset($_POST['unit']) ? $_POST['unit'] : "";
        //$data['type_format'] = isset($_POST['type_format']) ? $_POST['type_format'] : "";
        
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "1";		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();
        
		$d->setTable('product');
		if($d->insert($data)){
			/*
			$id = mysql_insert_id();
			
            //Them quan he SP va Size	
			if($_POST['team_size']){
				$idTeam = $_POST['team_size'];
				for($i=0;$i<count($idTeam);$i++){
					$team['id_product'] = $id;
					$team['id_team'] = $idTeam[$i];
					$team['type'] = 'size';
					$d->setTable('product_team');
					$d->insert($team);
				}
			}
            
            //Them quan he SP va Color	
			if($_POST['team_color']){
				$idTeam = $_POST['team_color'];
				for($i=0;$i<count($idTeam);$i++){
					$team['id_product'] = $id;
					$team['id_team'] = $idTeam[$i];
					$team['type'] = 'color';
					$d->setTable('product_team');
					$d->insert($team);
				}
			}
			*/
			redirect("index.php?com=product&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man");	
		}
	}
}

function delete_product(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb,thumb1,thumb2,thumb3,thumb4 from #_product where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
                delete_file(_upload_product.$row['thumb2']);
                delete_file(_upload_product.$row['thumb3']);
			}
		}
		$d->reset();
		$sql = "delete from #_product where id='".$id."'";
        
        // Xoa moi quan he size va mau sac cua san pham trong bang table_product_team
        $sql_team = "delete from #_product_team where id_product='".$id."'";
		$d->query($sql_team);
                 
		if($d->query($sql))
			redirect("index.php?com=product&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb,thumb1,thumb2,thumb3,thumb4 from #_product where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
                    delete_file(_upload_product.$row['thumb1']);
                    delete_file(_upload_product.$row['thumb2']);
                    delete_file(_upload_product.$row['thumb3']);
				}
			}
			$d->reset();
			$sql = "delete from #_product where id='".$id."'";
			$d->query($sql);
            
            // Xoa moi quan he size va mau sac cua san pham trong bang table_product_team
            $sql_team = "delete from #_product_team where id_product='".$id."'";
            $d->query($sql_team);
		}
		redirect("index.php?com=product&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man");
}

//-------GET PRODUCT PHOTO ------//

function get_photos(){
	global $d, $items, $paging;
	
	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_product_photo where id=$ids";
		$d->query($sql);
		$cat= $d->fetch_array();
		$shows=$cat['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_product_photo set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_product_photo set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	#-------------------------------------------------------------------------------
	$sql = "select * from #_product_photo";
	
	if(isset($_SESSION['id_product'])){
	$sql.=" where id_product=".$_SESSION['id_product'];	
	}
	
	$sql.=" order by numberic asc,id desc";
	
	$d->query($sql);
	$items = $d->result_array();
	
	$curPage = isset($_GET['curPage']) ? $_GET['curPage'] : 1;
	$url="index.php?com=product&act=man_photo";
	$maxR=20;
	$maxP=20;
	$paging=paging($items, $url, $curPage, $maxR, $maxP);
	$items=$paging['source'];
}

function get_photo(){
	global $d, $item;
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id)
		transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_photo");
	
	$sql = "select * from #_product_photo where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=product&act=man_photo");
	$item = $d->fetch_array();
}

function save_photo(){
	global $d;

	if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_photo");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";

	if($id){
		$id =  themdau($_POST['id']);
		$name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";	
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
			$data['photo'] = $photo;
            $data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_product,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
			$data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
            $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_product,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
            
			$d->setTable('product_photo');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
                delete_file(_upload_product.$row['thumb2']);
                delete_file(_upload_product.$row['thumb3']);
			}
		}	
		$data['id_product'] = isset($_SESSION['id_product']) ? $_SESSION['id_product'] : "";
		$data['alt'] = isset($_SESSION['alt']) ? $_SESSION['alt'] : "";
		$data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$d->setTable('product_photo');
		$d->setWhere('id', $id);
		if($d->update($data))
			redirect("index.php?com=product&act=man_photo&curPage=".$_REQUEST['curPage']."");
		else
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=product&act=man_photo");
	}else{
		for($i=1; $i<=5; $i++){
            $name = isset($_FILES['photo'.$i]['name']) ? get_img_name($_FILES['photo'.$i]['name']) : "";		      
			if($photo = upload_image("photo$i", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_product,$name.'_'.time())){
				$data['photo'] = $photo;
                $data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_product,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h."_".$i,1);
                $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_product,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h."_".$i,1);
                $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_product,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h."_".$i,1);
                $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_product,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
                
				$data['id_product'] = isset($_SESSION['id_product']) ? $_SESSION['id_product'] : "";					
				$data['alt'] = isset($_SESSION['alt'.$i]) ? $_SESSION['alt'.$i] : "";
				$data['numberic'] = isset($_POST['numberic'.$i]) ? $_POST['numberic'.$i] : "";
				$data['shows'] = isset($_POST['shows'.$i]) ? 1 : 0;
				$d->setTable('product_photo');
				if(!$d->insert($data)) transfer("Lưu dữ liệu bị lỗi", "index.php?com=product&act=man_photo");
			}
		}
		redirect("index.php?com=product&act=man_photo");
	}
}

function delete_photo(){
	global $d;
	if(isset($_GET['id'])){
		
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_product_photo where id='".$id."'";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_product.$row['photo']);
				delete_file(_upload_product.$row['thumb']);
                delete_file(_upload_product.$row['thumb1']);
                delete_file(_upload_product.$row['thumb2']);
                delete_file(_upload_product.$row['thumb3']);
			}
			$sql = "delete from #_product_photo where id='".$id."'";
		}
		if($d->query($sql))
			redirect("index.php?com=product&act=man_photo");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=product&act=man_photo");
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_product_photo where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_product.$row['photo']);
					delete_file(_upload_product.$row['thumb']);
                    delete_file(_upload_product.$row['thumb1']);
                    delete_file(_upload_product.$row['thumb2']);
                    delete_file(_upload_product.$row['thumb3']);
				}
				$sql = "delete from #_product_photo where id='".$id."'";
			}
			$d->query($sql);
		}
		redirect("index.php?com=product&act=man_photo");		
	}else transfer("Không nhận được dữ liệu", "index.php?com=product&act=man_photo");
}

//-------GET PRODUCT LIST ------//

function get_select_list($id=0,$tbl='',$idl='',$parent='', $idParent=0){
	global $d;
	
	if($parent !='' && $idParent !=0) $where = " and $parent=$idParent";
	
	$sql = "select * from #_$tbl where id!=0 $where order by numberic asc,id desc";
	$d->query($sql);
	$lists = $d->result_array();
	
	$pro_list = '<select name="'.$idl.'" class="form-control" selectChange>
	<option value="">---Chọn danh mục---</option>
	
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

function get_team_list($id=0,$tbl=''){
		
	global $d;
	if($id){
		$sql="select id_team from table_product_team where id_product=$id and type='$tbl'";
		$d->query($sql);
		$team = $d->result_array();
	
		for($i=0;$i<count($team);$i++){
			$temp[$i]=$team[$i]['id_team'];	
		}
	}
	
	$d->reset();
	$sql="select ten_vi,id from table_product_$tbl order by numberic asc,id desc";
	$d->query($sql);
	$row = $d->result_array();
	
	$str='<select id="team_'.$tbl.'" name="team_'.$tbl.'[]" multiple="multiple" >';
	for($i=0;$i<count($row);$i++)
	{
		if($temp){	
			if(in_array($row[$i]['id'],$temp)){ $check = 'selected="selected"';}else{$check='';}
		}
		$str.='<option value="'.$row[$i]["id"].'" '.$check.' /> '.$row[$i]["ten_vi"].'</option>';			
	}
	$str .='</select>';
	return $str;
}

function get_type_format_list($type=''){
	$arr_type_format = array('image' => 'Image Format', 'gallery' => 'Gallery Format', 'slideshow' => 'Slideshow Format', 'video' => 'Video Format');
    
	$str = '<select name="type_format">';
	foreach($arr_type_format as $key => $value) {
		$str .= '<option value="'.$key.'" '.(($key==$type)?'selected="selected"':'').'>'.$value.'</option>';
    }
	$str .= '</select>';
	
	return $str;
}

function countChild($idParent,$tbl=''){
	global $d;	
	$sql = "select id from #_$tbl where id_parents=$idParent";
	$result=$d->query($sql);
	return mysql_num_rows($result);
}

function countTeam($id=0,$type=''){
	global $d;	
	$sql = "select id_team from #_product_team where id_product=$id and type='".$type."'";
	$result=$d->query($sql);
	return mysql_num_rows($result);
}

function countPhoto($id=0){
	global $d;	
	$sql = "select id from #_product_photo where id_product=$id and shows<>0";
	$result=$d->query($sql);
	return mysql_num_rows($result);
}

function getTypeFormat($id=0){
    $arr_type_format = array('image' => 'Image Format', 'gallery' => 'Gallery Format', 'slideshow' => 'Slideshow Format', 'video' => 'Video Format');
    
	global $d;	
	$sql = "select type_format from #_product where id=$id ";
    $d->query($sql);
	$row = $d->fetch_array();
	if($row) {
	   return $arr_type_format[$row['type_format']];
	}
}

function get_copy(){
	global $d;
	if (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select * from #_product where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
				
					$data['id_list'] = (int)$row['id_list'];
					$data['id_cat'] = (int)$row['id_cat'];
					$data['id_item'] = (int)$row['id_item'];
					$data['id_provider'] = (int)$row['id_provider'];
					
					$data['mota_vi'] = $row['mota_vi'];
					$data['noidung_vi'] = $row['noidung_vi'];
					
					$data['mota_en'] = $row['mota_en'];
					$data['noidung_en'] = $row['noidung_en'];
					
					$data['images'] = $row['images'];
					$data['cauhinh'] = $row['cauhinh'];
					$data['quatang'] = $row['quatang'];
					
					$data['giaban'] = $row['giaban'];
					$data['giakm'] = $row['giakm'];
				
					$data['numberic'] = $row['numberic'];		
					$data['shows'] = isset($row['shows']) ? 1 : 0;
					$data['date_create'] = time();
					
					$d->reset();
					$d->setTable('product');
					if($d->insert($data)){
						$id_pnew = mysql_insert_id();
						
						$d->reset();		
						$sql = "select * from #_product_compare_properties where id_product='".$id."'";
						$d->query($sql);
						if($d->num_rows()>0){
							while($crow = $d->fetch_array()){
								$cdata['id_product'] = $id_pnew;
								$cdata['id_compare'] = $crow['id_compare'];
								$cdata['noidung'] = $crow['noidung'];
							}
							$d->reset();
							$d->setTable('product_compare_properties');
							$d->insert($cdata);
						}
					}
				}
			}
		
		}
		redirect("index.php?com=product&act=man");
	}
}

?>