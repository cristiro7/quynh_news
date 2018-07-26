<?php  if(!defined('_source')) die("Error");
	
	$title = 'Giới thiệu - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
	
	$strList = trim(isset($_GET['idl']) ? $_GET['idl'] : '');
	$strDetail = trim(isset($_GET['id']) ? $_GET['id'] : '');
	
	$d->reset();
	
	if($strList !=''){
		$urlList = $strList.'/';
		$class_body = 'page page-parent page-template page-template-page-fullwidth-php';
		// Lấy id_list
		
		$sql = "select id,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords,shows_all from #_about_list where tenkodau ='".$strList."'";
		$d->query($sql);
		if($d->num_rows()>0){
			
			$about_list = $d->fetch_array();
			
			if($about_list['title']){$title = $about_list['title'];}
			if($about_list['description']){$description = $about_list['description'];}
			if($about_list['keywords']){$keywords = $about_list['keywords'];}
			
			$idl = $about_list['id'];
			$title_bar = $about_list['ten'];
			
			$d->reset();
			$sql = "select id, id_list, ten_$lang as ten, tenkodau, photo, thumb1, thumb2, alt, mota_$lang as mota, date_create from #_about where shows=1 and id_list=".$idl." order by numberic asc,id desc";
			$d->query($sql);
			$about = $d->result_array();
            
			$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
			$url = "http://$config_url/about/".$urlList;
			$maxR=10;
			$maxP=10;
			$paging=paging_home($about, $url, $curPage, $maxR, $maxP);
			$about=$paging['source'];
			
			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_about_list where shows=1 and shows_tab=1 order by numberic asc, id desc";
			$d->query($sql);
			$about_list_tab = $d->result_array();

		}
	}else if($strDetail !=''){
	    $class_body = 'single single-abouts';
	    
		$sql_detail = "select id, id_list, ten_$lang as ten, noidung_$lang as noidung, title_$lang as title, description_$lang as description, keywords_$lang as keywords, tenkodau, mota_$lang as mota, thumb, alt, video_link, date_create, viewed from #_about where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$about_detail = $d->fetch_array();
		
		$viewed = $about_detail['viewed']+1;
		$sql_update = "update #_about SET viewed=$viewed where id=".$about_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$about_detail['thumb'].'"/>
		<meta property="og:title" content="'.$about_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/about-us/'.$about_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($about_detail['mota']).'" />';

		
		if($about_detail['title']){$title = $about_detail['title'];}
		if($about_detail['description']){$description = $about_detail['description'];}
		if($about_detail['keywords']){$keywords = $about_detail['keywords'];}
		
		$d->reset();
		if($about_detail['id_list'] !=0) {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_about where shows=1 and id!=".$about_detail['id']." and id_list=".$about_detail['id_list'];
		} else {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_about where shows=1 and id!=".$about_detail['id'];
		}
		$sql_khac .=" order by numberic asc,id desc limit 0,8";
		$d->query($sql_khac);
		$abouts_orther = $d->result_array();
				
	}else{
		$title_bar = 'Giới thiệu';
        $id_body = '';
		$class_body = '';
        $strDetail = 'gioi-thieu-the-gioi-nong-san';
	    
		$sql_detail = "select id, id_list, ten_$lang as ten, mota_$lang as mota, noidung_$lang as noidung, title_$lang as title, description_$lang as description, keywords_$lang as keywords, tenkodau, thumb, alt, date_create, viewed from #_about where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$about_detail = $d->fetch_array();
		
		$viewed = $about_detail['viewed']+1;
		$sql_update = "update #_about SET viewed=$viewed where id=".$about_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$about_detail['thumb'].'"/>
		<meta property="og:title" content="'.$about_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/gioi-thieu/"/>
		<meta property="og:description" content="'.strip_tags($about_detail['mota']).'" />';

		
		if($about_detail['title']){$title = $about_detail['title'];}
		if($about_detail['description']){$description = $about_detail['description'];}
		if($about_detail['keywords']){$keywords = $about_detail['keywords'];}
	}	
?>