<?php  if(!defined('_source')) die("Error");
	
	$title = 'Dịch vụ - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
	
	//$strList = trim(isset($_GET['idl']) ? $_GET['idl'] : '');
	$strDetail = trim(isset($_GET['id']) ? $_GET['id'] : '');
	
	$d->reset();
	
	/* if($strList !=''){
		$urlList = $strList.'/';
		
		// Lấy id_list
		
		$sql = "select id,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords,shows_all from #_service_list where tenkodau ='".$strList."'";
		$d->query($sql);
		if($d->num_rows()>0){
			
			$service_list = $d->fetch_array();
			
			if($service_list['title']){$title = $service_list['title'];}
			if($service_list['description']){$description = $service_list['description'];}
			if($service_list['keywords']){$keywords = $service_list['keywords'];}
			
			$idl = $service_list['id'];
			$title_bar = $service_list['ten'];
			
			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau,thumb,alt,mota_$lang as mota,date_create from #_service where shows=1 and id_list=".$idl." order by numberic asc,id desc";
			$d->query($sql);
			$service = $d->result_array();
			$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
			$url = "http://$config_url/dich-vu/".$urlList;
			$maxR=10;
			$maxP=5;
			$paging=paging_home($service, $url, $curPage, $maxR, $maxP);
			$service=$paging['source'];
			
			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_service_list where shows=1 and shows_tab=1 order by numberic asc, id desc";
			$d->query($sql);
			$service_list_tab = $d->result_array();

		}
	}else */ 
    if($strDetail !=''){
	    //$class_body = 'single single-services postid-152';
	    
		$sql_detail = "select id,id_list,ten_$lang as ten,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords, tenkodau, mota_$lang as mota, thumb2, alt,date_create,viewed from #_service where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$service_detail = $d->fetch_array();
		
		$viewed = $service_detail['viewed']+1;
		$sql_update = "update #_service SET viewed=$viewed where id=".$service_detail['id'];
		$d->query($sql_update);

		$sharefb = '<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$service_detail['thumb2'].'"/>
		<meta property="og:title" content="'.$service_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/dich-vu/'.$service_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($service_detail['mota']).'" />';

		if($service_detail['title']){$title = $service_detail['title'];}
		if($service_detail['description']){$description = $service_detail['description'];}
		if($service_detail['keywords']){$keywords = $service_detail['keywords'];}
		
		$d->reset();
		if($service_detail['id_list'] !=0) {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_service where shows=1 and id!=".$service_detail['id']." and id_list=".$service_detail['id_list'];
		} else {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_service where shows=1 and id!=".$service_detail['id'];
		}
		$sql_khac .=" order by numberic asc,id desc limit 0,15";
		$d->query($sql_khac);
		$services = $d->result_array();
				
	} else {
		$title_bar = 'Dịch vụ';
		//$class_body = 'page page-template page-template-page-fullwidth-php';
		
		$sql = "select id,ten_$lang as ten,tenkodau from #_service_list where shows=1 and shows_index =1 order by numberic asc, id asc";
		$d->query($sql);
		$service_list = $d->result_array();
		
		$sql = "select id, id_list, ten_$lang as ten, tenkodau , photo, thumb, thumb1, thumb2, alt, mota_$lang as mota, date_create from #_service where shows=1 order by id_list asc, numberic asc, id desc";
		$d->query($sql);
		$services = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/dich-vu/";
		$maxR=12;
		$maxP=10;
		$paging=paging_home($services, $url, $curPage, $maxR, $maxP);
		$services=$paging['source'];
	}	
?>