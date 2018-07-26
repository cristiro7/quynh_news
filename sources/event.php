<?php  if(!defined('_source')) die("Error");
	
	$title = 'Sự kiện - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
	
	$strList = trim(isset($_GET['idl']) ? $_GET['idl'] : '');
	$strDetail = trim(isset($_GET['id']) ? $_GET['id'] : '');
	
	$d->reset();
	
	if($strList !=''){
		$urlList = $strList.'/';
		
		// Lấy id_list
		
		$sql = "select id,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords,shows_all from #_event_list where tenkodau ='".$strList."'";
		$d->query($sql);
		if($d->num_rows()>0){
			
			$event_list = $d->fetch_array();
			
			if($event_list['title']){$title = $event_list['title'];}
			if($event_list['description']){$description = $event_list['description'];}
			if($event_list['keywords']){$keywords = $event_list['keywords'];}
			
			$idl = $event_list['id'];
			$title_bar = $event_list['ten'];
			
			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau,thumb1, thumb2,alt,mota_$lang as mota,date_create from #_event where shows=1 and id_list=".$idl." order by numberic asc,id desc";
			$d->query($sql);
			$event = $d->result_array();
			$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
			$url = "http://$config_url/event/".$urlList;
			$maxR=10;
			$maxP=5;
			$paging=paging_home($event, $url, $curPage, $maxR, $maxP);
			$event=$paging['source'];
			
			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_event_list where shows=1 and shows_tab=1 order by numberic asc, id desc";
			$d->query($sql);
			$event_list_tab = $d->result_array();

		}
	}else if($strDetail !=''){
	    $class_body = 'single single-events postid-1909';
	    
		$sql_detail = "select id,id_list,ten_$lang as ten,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords, tenkodau, mota_$lang as mota, thumb2, alt,date_create,viewed from #_event where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$event_detail = $d->fetch_array();
		
		$viewed = $event_detail['viewed']+1;
		$sql_update = "update #_event SET viewed=$viewed where id=".$event_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$event_detail['thumb2'].'"/>
		<meta property="og:title" content="'.$event_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/event/'.$event_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($event_detail['mota']).'" />';

		
		if($event_detail['title']){$title = $event_detail['title'];}
		if($event_detail['description']){$description = $event_detail['description'];}
		if($event_detail['keywords']){$keywords = $event_detail['keywords'];}
		
		$d->reset();
		if($event_detail['id_list'] !=0) {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_event where shows=1 and id!=".$event_detail['id']." and id_list=".$event_detail['id_list'];
		} else {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_event where shows=1 and id!=".$event_detail['id'];
		}
		$sql_khac .=" order by numberic asc,id desc limit 0,20";
		$d->query($sql_khac);
		$event_orther = $d->result_array();
				
	}else{
		$title_bar = 'Sự kiện';
		$class_body = 'page page-id-7 page-template page-template-page-fullwidth-php';
		
		$sql = "select id,ten_$lang as ten,tenkodau from #_event_list where shows=1 and shows_index =1 order by numberic asc, id asc";
		$d->query($sql);
		$event_list = $d->result_array();

		$sql = "select id, id_list, ten_$lang as ten, tenkodau, photo, thumb1, thumb2, alt, mota_$lang as mota, date_create from #_event where shows=1 order by id_list asc, numberic asc,id desc";
		$d->query($sql);
		$event = $d->result_array();
		
		$event_show = array();
		foreach($event as $key => $value) {
		    foreach($event_list as $key_list => $value_list) {
		        if ($value['id_list'] == $value_list['id']) {
		            if(!isset($event_show[$value_list['id']])) {
		                $event_show[$value_list['id']] = array(
		                    'id' => $value_list['id'],
		                    'ten' => $value_list['ten'],
		                    'tenkodau' => $value_list['tenkodau'],
		                );
		            }
		            $event_show[$value_list['id']]['data'][] = $value;
		        }
		    }
		}
		/*
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/event/";
		$maxR=10;
		$maxP=5;
		$paging=paging_home($event, $url, $curPage, $maxR, $maxP);
		$event=$paging['source'];
		*/
	}	
?>