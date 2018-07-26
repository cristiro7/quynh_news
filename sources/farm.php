<?php  if(!defined('_source')) die("Error");
	
	$title = 'Hệ thống trang trại - '.$setting['title_'.$lang];
	
	
	@$strDetail = trim($_GET['id']);
	
	$d->reset();
	if($strDetail !=''){
		$sql_detail = "select id,ten_$lang as ten,tenkodau,thumb,alt,mota_$lang as mota,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords,date_create,viewed from #_farm where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$news_detail = $d->fetch_array();
		
		$viewed = $news_detail['viewed']+1;
		$sql_update = "update #_farm SET viewed=$viewed where id=".$news_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$news_detail['thumb'].'"/>
		<meta property="og:title" content="'.$news_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/he-thong-trang-trai/'.$news_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($news_detail['mota']).'" />';

		
		if($news_detail['title']){$title = $news_detail['title'];}
		if($news_detail['description']){$description = $news_detail['description'];}
		if($news_detail['keywords']){$keywords = $news_detail['keywords'];}
		
		$d->reset();
		$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_farm where shows=1 and id!=".$news_detail['id'];		
		$sql_khac .=" order by numberic asc,id desc limit 0,15";
		$d->query($sql_khac);
		$news = $d->result_array();
				
	}else{
		$title_bar = 'Hệ thống trang trại';

		$sql = "select id,ten_$lang as ten,tenkodau,thumb,alt,mota_$lang as mota,date_create from #_farm where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$news = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/he-thong-trang-trai/";
		$maxR=12;
		$maxP=10;
		$paging=paging_home($news, $url, $curPage, $maxR, $maxP);
		$news=$paging['source'];
	}	
?>