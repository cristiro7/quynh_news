<?php  if(!defined('_source')) die("Error");
	
    if(isset($com) && $com == 'faqs') { 
    	$title = 'FAQs - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
    	$title_bar = 'FAQs';
    	$class_body = 'page page-id-12 page-child parent-pageid-1797 page-template page-template-page-faq-php';
    
    	$sql = "select id, id_list, ten_$lang as ten, mota_$lang as mota, date_create from #_faqs where shows=1 order by numberic asc,id desc";
    	$d->query($sql);
    	$faqs = $d->result_array();
        
    	$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
    	$url = "http://$config_url/faqs/";
    	$maxR=5;
    	$maxP=10;
    	$paging=paging_home($faqs, $url, $curPage, $maxR, $maxP);
    	$faqs=$paging['source'];
    }
?>