<?php	if(!defined('_source')) die("Error");

$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$title = "Tin tức";
if(isset($_REQUEST['id_news'])){$_SESSION['id_news']=(int)$_REQUEST['id_news'];}
switch($act){

	case "man_list":
		get_lists();
		$template = "news/list";
		break;
	case "add_list":		
		$template = "news/list_add";
		break;
	case "edit_list":		
		get_list();
		$template = "news/list_add";
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
		$template = "news/item";
		break;
	case "add":		
		$template = "news/item_add";
		break;
	case "edit":		
		get_item();
		$template = "news/item_add";
		break;
	case "save":
		save_item();
		break;
	case "delete":
		delete_item();
		break;

    //---------------//

    case "man_photo":
        get_photos();
        $template = "news/photo";
        break;
    case "add_photo":
        $template = "news/photo_add";
        break;
    case "edit_photo":
        get_photo();
        $template = "news/photo_edit";
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

	if($_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
    
    if($_REQUEST['shows_popup']!='')
	{
		$ids = $_REQUEST['shows_popup'];
		$sql = "select shows_popup from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_popup'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows_popup = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows_popup = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_menu']!='')
	{
		$ids = $_REQUEST['shows_menu'];
		$sql = "select shows_menu from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_menu'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows_menu = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows_menu = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_tab']!='')
	{
		$ids = $_REQUEST['shows_tab'];
		$sql = "select shows_tab from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_tab'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows_tab = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows_tab = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_footer']!='')
	{
		$ids = $_REQUEST['shows_footer'];
		$sql = "select shows_footer from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_footer'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows_footer = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows_footer = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if($_REQUEST['shows_all']!='')
	{
		$ids = $_REQUEST['shows_all'];
		$sql = "select shows_all from table_news_list where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_all'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news_list set shows_all = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news_list set shows_all = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	$d->reset();
	$sql = "select * from #_news_list order by numberic asc,id desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_list(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_list");
	
	$sql = "select * from #_news_list where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=news&act=man_list");
	$item = $d->fetch_array();
}

function save_list(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_list");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_news,$name.'_'.time(),2);
			$d->setTable('news_list');
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
		
		$d->setTable('news_list');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=news&act=man_list");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=news&act=man_list");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], 200, 150, _upload_news,$name.'_'.time(),2);
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

		$d->setTable('news_list');
		if($d->insert($data)){
			redirect("index.php?com=news&act=man_list");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=news&act=man_list");	
		}
	}
}

function delete_list(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb from #_news_list where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
			}
		}
		$d->reset();
		$sql = "delete from #_news_list where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=news&act=man_list");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=news&act=man_list");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb from #_news_list where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_news.$row['photo']);
					delete_file(_upload_news.$row['thumb']);
				}
			}
			$d->reset();
			$sql = "delete from #_news_list where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=news&act=man_list");
	}else transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_list");
}


function get_items(){
	global $d, $items;

	if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
	{
		$ids = $_REQUEST['shows'];
		$sql = "select shows from table_news where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news set shows = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news set shows = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}
	
	if(isset($_REQUEST['shows_hot']) && $_REQUEST['shows_hot']!='')
	{
		$ids = $_REQUEST['shows_hot'];
		$sql = "select shows_hot from table_news where id=$ids";
		$d->query($sql);
		$list= $d->fetch_array();
		$shows=$list['shows_hot'];
		if($shows==0)
		{
			$sqlUPDATE = "update table_news set shows_hot = 1 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}
		else
		{
			$sqlUPDATE = "update table_news set shows_hot = 0 where id=$ids";
			$resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
		}	
	}

    if (isset($_REQUEST['shows_popular']) && $_REQUEST['shows_popular']!='') {
        $ids = $_REQUEST['shows_popular'];
        $sql = "select shows_popular from table_news where id=$ids";
        $d->query($sql);
        $list = $d->fetch_array();
        $shows = $list['shows_popular'];
        if ($shows == 0) {
            $sqlUPDATE = "update table_news set shows_popular = 1 where id=$ids";
            $resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
        } else {
            $sqlUPDATE = "update table_news set shows_popular = 0 where id=$ids";
            $resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
        }
    }

    $d->reset();
	$sql = "select * from #_news where id!=0";
	
	if(isset($_REQUEST['id_list']) &&  (int)$_REQUEST['id_list']!='')
	{
		$sql.=" and id_list=".(int)$_REQUEST['id_list']."";
	}
	$sql .= " order by numberic asc, date_update desc";
	$d->query($sql);
	$items = $d->result_array();
	
}

function get_item(){
	global $d, $item;
	
	$id = isset($_GET['id']) ? themdau($_GET['id']) : "";
	if(!$id) transfer("Không nhận được dữ liệu", "index.php?com=news&act=man");
	
	$sql = "select * from #_news where id='".$id."'";
	$d->query($sql);
	if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=news&act=man");
	$item = $d->fetch_array();
}

function save_item(){
	global $d;
	
	$name = get_img_name($_FILES['photo']['name']);
	
	if(empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=news&act=man");
	$id = isset($_POST['id']) ? themdau($_POST['id']) : "";
	if($id){
		
		if($photo = upload_image("photo", 'jpg|png|gif|jpeg|JPG|PNG|GIF|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_news,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
			$data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_news,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
			$data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_news,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_news,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
            
			$d->setTable('news');
			$d->setWhere('id', $id);
			$d->select();
			if($d->num_rows()>0){
				$row = $d->fetch_array();
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
				delete_file(_upload_news.$row['thumb1']);
				delete_file(_upload_news.$row['thumb2']);
                delete_file(_upload_news.$row['thumb3']);
			}
		}
		$data['id_list'] = (int)$_POST['id_list'];
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
		
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_update'] = time();
		
		$d->setTable('news');
		$d->setWhere('id', $id);
		if($d->update($data)){
			redirect("index.php?com=news&act=man");
		}else{
			transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=news&act=man");
		}
	}else{
		
		if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_news,$name.'_'.time())){
			$data['photo'] = $photo;
			$data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_news,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
            $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_news,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
			$data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_news,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_news,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h,1);
		}
		$data['id_list'] = (int)$_POST['id_list'];
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
	
		$data['numberic'] = $_POST['numberic'];		
		$data['shows'] = isset($_POST['shows']) ? 1 : 0;
		$data['date_create'] = time();
        $data['date_update'] = time();

		$d->setTable('news');
		if($d->insert($data)){
			redirect("index.php?com=news&act=man");
		}else{
			transfer("Lưu dữ liệu bị lỗi", "index.php?com=news&act=man");	
		}
	}
}

function delete_item(){
	global $d;
	if(isset($_GET['id'])){
		$id =  themdau($_GET['id']);
		$d->reset();
		$sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_news where id=$id";
		$d->query($sql);
		if($d->num_rows()>0){
			while($row = $d->fetch_array()){
				delete_file(_upload_news.$row['photo']);
				delete_file(_upload_news.$row['thumb']);
				delete_file(_upload_news.$row['thumb1']);
				delete_file(_upload_news.$row['thumb2']);
                delete_file(_upload_news.$row['thumb3']);
			}
		}
		$d->reset();
		$sql = "delete from #_news where id='".$id."'";
		if($d->query($sql))
			redirect("index.php?com=news&act=man");
		else
			transfer("Xóa dữ liệu bị lỗi", "index.php?com=news&act=man");
		
	}elseif (isset($_GET['listid'])==true){
		$listid = explode(",",$_GET['listid']); 
		for ($i=0 ; $i<count($listid) ; $i++){
			$idTin=$listid[$i]; 
			$id =  themdau($idTin);
			$d->reset();		
			$sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_news where id='".$id."'";
			$d->query($sql);
			if($d->num_rows()>0){
				while($row = $d->fetch_array()){
					delete_file(_upload_news.$row['photo']);
                    delete_file(_upload_news.$row['thumb']);
				    delete_file(_upload_news.$row['thumb1']);
				    delete_file(_upload_news.$row['thumb2']);
                    delete_file(_upload_news.$row['thumb3']);
				}
			}
			$d->reset();
			$sql = "delete from #_news where id='".$id."'";
			$d->query($sql);
		}
		redirect("index.php?com=news&act=man");
	}else transfer("Không nhận được dữ liệu", "index.php?com=news&act=man");
}

//-------GET NEWS PHOTO ------//

function get_photos(){
    global $d, $items, $paging;

    if(isset($_REQUEST['shows']) && $_REQUEST['shows']!='')
    {
        $ids = $_REQUEST['shows'];
        $sql = "select shows from table_news_photo where id=$ids";
        $d->query($sql);
        $cat= $d->fetch_array();
        $shows=$cat['shows'];
        if($shows==0)
        {
            $sqlUPDATE = "update table_news_photo set shows = 1 where id=$ids";
            $resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
        }
        else
        {
            $sqlUPDATE = "update table_news_photo set shows = 0 where id=$ids";
            $resultUPDATE = mysql_query($sqlUPDATE) or die("Not query sqlUPDATE");
        }
    }

    #-------------------------------------------------------------------------------
    $sql = "select * from #_news_photo";

    if(isset($_SESSION['id_news'])){
        $sql.=" where id_news=".$_SESSION['id_news'];
    }

    $sql.=" order by numberic asc,id desc";

    $d->query($sql);
    $items = $d->result_array();

    $curPage = isset($_GET['curPage']) ? $_GET['curPage'] : 1;
    $url="index.php?com=news&act=man_photo";
    $maxR=20;
    $maxP=20;
    $paging=paging($items, $url, $curPage, $maxR, $maxP);
    $items=$paging['source'];
}

function get_photo(){
    global $d, $item;
    $id = isset($_GET['id']) ? themdau($_GET['id']) : "";
    if(!$id)
        transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_photo");

    $sql = "select * from #_news_photo where id='".$id."'";
    $d->query($sql);
    if($d->num_rows()==0) transfer("Dữ liệu không có thực", "index.php?com=news&act=man_photo");
    $item = $d->fetch_array();
}

function save_photo(){
    global $d;

    if(isset($_POST) && empty($_POST)) transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_photo");
    $id = isset($_POST['id']) ? themdau($_POST['id']) : "";

    if($id){
        $id =  themdau($_POST['id']);
        $name = isset($_FILES['photo']['name']) ? get_img_name($_FILES['photo']['name']) : "";
        if($photo = upload_image("photo", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_news,$name.'_'.time())){
            $data['photo'] = $photo;
            $data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_news,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h,1);
            $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_news,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h,1);
            $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_news,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h,1);
            $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_news,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h."_".$i,1);

            $d->setTable('news_photo');
            $d->setWhere('id', $id);
            $d->select();
            if($d->num_rows()>0){
                $row = $d->fetch_array();
                delete_file(_upload_news.$row['photo']);
                delete_file(_upload_news.$row['thumb']);
                delete_file(_upload_news.$row['thumb1']);
                delete_file(_upload_news.$row['thumb2']);
                delete_file(_upload_news.$row['thumb3']);
            }
        }
        $data['id_news'] = isset($_SESSION['id_news']) ? $_SESSION['id_news'] : "";
        $data['alt'] = isset($_SESSION['alt']) ? $_SESSION['alt'] : "";
        $data['numberic'] = isset($_POST['numberic']) ? $_POST['numberic'] : "";
        $data['shows'] = isset($_POST['shows']) ? 1 : 0;
        $d->setTable('news_photo');
        $d->setWhere('id', $id);
        if($d->update($data))
            redirect("index.php?com=news&act=man_photo&curPage=".$_REQUEST['curPage']."");
        else
            transfer("Cập nhật dữ liệu bị lỗi", "index.php?com=news&act=man_photo");
    }else{
        for($i=1; $i<=5; $i++){
            $name = isset($_FILES['photo'.$i]['name']) ? get_img_name($_FILES['photo'.$i]['name']) : "";
            if($photo = upload_image("photo$i", 'jpg|png|gif|JPG|PNG|GIF|jpeg|JPEG', _upload_news,$name.'_'.time())){
                $data['photo'] = $photo;
                $data['thumb'] = create_thumb($data['photo'], _news_size_1_w, _news_size_1_h, _upload_news,$name.'_'.time()._news_size_1_w.'x'._news_size_1_h."_".$i,1);
                $data['thumb1'] = create_thumb($data['photo'], _news_size_2_w, _news_size_2_h, _upload_news,$name.'_'.time()._news_size_2_w.'x'._news_size_2_h."_".$i,1);
                $data['thumb2'] = create_thumb($data['photo'], _news_size_3_w, _news_size_3_h, _upload_news,$name.'_'.time()._news_size_3_w.'x'._news_size_3_h."_".$i,1);
                $data['thumb3'] = create_thumb($data['photo'], _news_size_4_w, _news_size_4_h, _upload_news,$name.'_'.time()._news_size_4_w.'x'._news_size_4_h."_".$i,1);

                $data['id_news'] = isset($_SESSION['id_news']) ? $_SESSION['id_news'] : "";
                $data['alt'] = isset($_SESSION['alt'.$i]) ? $_SESSION['alt'.$i] : "";
                $data['numberic'] = isset($_POST['numberic'.$i]) ? $_POST['numberic'.$i] : "";
                $data['shows'] = isset($_POST['shows'.$i]) ? 1 : 0;
                $d->setTable('news_photo');
                if(!$d->insert($data)) transfer("Lưu dữ liệu bị lỗi", "index.php?com=news&act=man_photo");
            }
        }
        redirect("index.php?com=news_photo&act=man_photo");
    }
}

function delete_photo(){
    global $d;
    if(isset($_GET['id'])){

        $id =  themdau($_GET['id']);
        $d->reset();
        $sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_news_photo where id='".$id."'";
        $d->query($sql);
        if($d->num_rows()>0){
            while($row = $d->fetch_array()){
                delete_file(_upload_news.$row['photo']);
                delete_file(_upload_news.$row['thumb']);
                delete_file(_upload_news.$row['thumb1']);
                delete_file(_upload_news.$row['thumb2']);
                delete_file(_upload_news.$row['thumb3']);
            }
            $sql = "delete from #_news_photo where id='".$id."'";
        }
        if($d->query($sql))
            redirect("index.php?com=news&act=man_photo");
        else
            transfer("Xóa dữ liệu bị lỗi", "index.php?com=news&act=man_photo");
    }elseif (isset($_GET['listid'])==true){
        $listid = explode(",",$_GET['listid']);
        for ($i=0 ; $i<count($listid) ; $i++){
            $idTin=$listid[$i];
            $id =  themdau($idTin);
            $d->reset();
            $sql = "select id,photo,thumb,thumb1,thumb2,thumb3 from #_news_photo where id='".$id."'";
            $d->query($sql);
            if($d->num_rows()>0){
                while($row = $d->fetch_array()){
                    delete_file(_upload_news.$row['photo']);
                    delete_file(_upload_news.$row['thumb']);
                    delete_file(_upload_news.$row['thumb1']);
                    delete_file(_upload_news.$row['thumb2']);
                    delete_file(_upload_news.$row['thumb3']);
                }
                $sql = "delete from #_news_photo where id='".$id."'";
            }
            $d->query($sql);
        }
        redirect("index.php?com=news&act=man_photo");
    }else transfer("Không nhận được dữ liệu", "index.php?com=news&act=man_photo");
}

//-------GET NEWS LIST ------//

function get_select_list($id=0,$tbl='',$idl=''){
	global $d;
	
	$sql = "select * from #_$tbl order by numberic asc,id desc";
	$d->query($sql);
	$lists = $d->result_array();

    $news_list = '<select name="'.$idl.'" class="form-control selectChange">
	<option value="">Danh mục</option>
	
	';
	for($i=0, $count=count($lists); $i<$count; $i++)
        $news_list .= '<option value="'.$lists[$i]['id'].'" '.(($lists[$i]['id']==$id)?'selected="selected"':'').'>'.$lists[$i]['ten_vi'].'</option>';
    $news_list .= '</select>';
	
	return $news_list;
}

function get_name_list($id=0, $tbl=''){
	global $d;
	
	$sql = "select ten_vi from #_$tbl where id=$id";
	$d->query($sql);
	$list = $d->fetch_array();
	echo  $list['ten_vi'];
}

function countPhoto($id=0){
    global $d;
    $sql = "select id from #_news_photo where id_news=$id and shows<>0";
    $result=$d->query($sql);
    return mysqli_num_rows($result);
}
?>
