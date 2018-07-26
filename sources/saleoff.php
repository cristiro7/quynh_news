<?php  if(!defined('_source')) die("Error");
	
	$title = 'Khuyến mãi - '.$setting['title_'.$lang];
	
	
	@$strDetail = trim($_GET['id']);
	
	$d->reset();
	if($strDetail !=''){
		$sql_detail = "select id,ten_$lang as ten,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords,date_create,viewed from #_pricelist where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$saleoff_detail = $d->fetch_array();
		
		$viewed = $saleoff_detail['viewed']+1;
		$sql_update = "update #_pricelist SET viewed=$viewed where id=".$saleoff_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$saleoff_detail['thumb'].'"/>
		<meta property="og:title" content="'.$saleoff_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$cccc['title'].'"/>
		<meta property="og:url" content="http://'.$config_url.'/khuyen-mai/'.$saleoff_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($saleoff_detail['mota']).'" />';

		
		if($saleoff_detail['title']){$title = $saleoff_detail['title'];}
		if($saleoff_detail['description']){$description = $saleoff_detail['description'];}
		if($saleoff_detail['keywords']){$keywords = $saleoff_detail['keywords'];}
		
		$d->reset();
		$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_pricelist where shows=1 and id!=".$saleoff_detail['id'];		
		$sql_khac .=" order by numberic asc,id desc limit 0,20";
		$d->query($sql_khac);
		$saleoff = $d->result_array();
				
	}else{
		$title_bar = 'Khuyến mãi';

		$sql = "select id,ten_$lang as ten,tenkodau,thumb,alt,mota_$lang as mota,date_create from #_pricelist where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$saleoff = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/khuyen-mai/";
		$maxR=10;
		$maxP=5;
		$paging=paging_home($saleoff, $url, $curPage, $maxR, $maxP);
		$saleoff=$paging['source'];
	}	
?>