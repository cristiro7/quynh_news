<?php  if(!defined('_source')) die("Error");
	
	$title = 'Xưởng sản xuất - '.$setting['title_'.$lang];
	
	
	@$strDetail = trim($_GET['id']);
	
	$d->reset();
	if($strDetail !=''){
		$sql_detail = "select id,ten_$lang as ten,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords,date_create,viewed from #_factory where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$factory_detail = $d->fetch_array();
		
		$viewed = $factory_detail['viewed']+1;
		$sql_update = "update #_factory SET viewed=$viewed where id=".$factory_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$factory_detail['thumb'].'"/>
		<meta property="og:title" content="'.$factory_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$cccc['title'].'"/>
		<meta property="og:url" content="http://'.$config_url.'/xuong-san-xuat/'.$factory_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($factory_detail['mota']).'" />';

		
		if($factory_detail['title']){$title = $factory_detail['title'];}
		if($factory_detail['description']){$description = $factory_detail['description'];}
		if($factory_detail['keywords']){$keywords = $factory_detail['keywords'];}
		
		$d->reset();
		$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_factory where shows=1 and id!=".$factory_detail['id'];		
		$sql_khac .=" order by numberic asc,id desc limit 0,20";
		$d->query($sql_khac);
		$factory = $d->result_array();
				
	}else{
		$title_bar = 'Xưởng sản xuất';

		$sql = "select id,ten_$lang as ten,tenkodau,thumb,alt,mota_$lang as mota,date_create from #_factory where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$factory = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/xuong-san-xuat/";
		$maxR=10;
		$maxP=5;
		$paging=paging_home($factory, $url, $curPage, $maxR, $maxP);
		$factory=$paging['source'];
	}	
?>