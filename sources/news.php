<?php  if(!defined('_source')) die("Error");
	
	$title = 'Tin tức - '.$setting['title_'.$lang];
    $breadcrumbs = '';

    $strList = trim(isset($_GET['idl']) ? $_GET['idl'] : '');
	$strDetail = trim(isset($_GET['id']) ? $_GET['id'] : '');
	
	$d->reset();

    if($strList !=''){
        $urlList = $strList.'/';

        // Lấy id_list
        $sql = "select id, ten_$lang as ten , tenkodau, title_$lang as title, description_$lang as description, keywords_$lang as keywords from #_news_list where tenkodau ='" . $strList . "'";
        $d->query($sql);
        if($d->num_rows()>0){
            $news_list = $d->fetch_array();

            $breadcrumbs = "<p><a href='http://" . $config_url . "/'>" . _home . ".</a>      \\   " . $news_list['ten'] . "</p>";

            if($news_list['title']){$title = $news_list['title'];}
            if($news_list['description']){$description = $news_list['description'];}
            if($news_list['keywords']){$keywords = $news_list['keywords'];}

            $idl = $news_list['id'];
            $title_bar = $news_list['ten'];

            $d->reset();
            $sql = "select id, ten_$lang as ten, mota_$lang as mota, tenkodau, thumb, thumb1, alt, date_create from #_news where shows=1 and id_list=" . $idl . " order by numberic asc,id desc";
            $d->query($sql);
            $news = $d->result_array();
            $curPage = isset($_GET['p']) ? $_GET['p'] : '1';
            $url = "http://$config_url/tin-tuc/".$urlList;
            $maxR=4;
            $maxP=10;
            $paging=paging_home($news, $url, $curPage, $maxR, $maxP);
            $news=$paging['source'];
        }
    } elseif ($strDetail != '') {
		$sql_detail = "select id, id_list, ten_$lang as ten, tenkodau, thumb, thumb1, thumb2, thumb3, alt, mota_$lang as mota, noidung_$lang as noidung, title_$lang as title, description_$lang as description, keywords_$lang as keywords, date_create, viewed from #_news where tenkodau='" . $strDetail . "'";
		$d->query($sql_detail);
		$news_detail = $d->fetch_array();

        $breadcrumbs = "<p><a href='http://" . $config_url . "/'>" . _home . ".</a>      \\   "  . $news_detail['ten'] . "</p>";
		
		$viewed = $news_detail['viewed']+1;
		$sql_update = "update #_news SET viewed=$viewed where id=".$news_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$news_detail['thumb'].'"/>
		<meta property="og:title" content="'.$news_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/tin-tuc/'.$news_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($news_detail['mota']).'" />';

		if($news_detail['title']){$title = $news_detail['title'];}
		if($news_detail['description']){$description = $news_detail['description'];}
		if($news_detail['keywords']){$keywords = $news_detail['keywords'];}
		
		$d->reset();
		$sql_khac = "select id, ten_$lang as ten, tenkodau, thumb, alt, date_create from #_news where shows=1 and id!=".$news_detail['id'];
		$sql_khac .=" order by numberic asc,id desc limit 0,4";
		$d->query($sql_khac);
		$news = $d->result_array();
				
	} else {
		$title_bar = 'Tin tức';

		$sql = "select id, ten_$lang as ten, tenkodau, thumb, thumb1, alt, mota_$lang as mota, date_create from #_news where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$news = $d->result_array();
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/tin-tuc/";
		$maxR=20;
		$maxP=10;
		$paging=paging_home($news, $url, $curPage, $maxR, $maxP);
		$news=$paging['source'];
	}	
?>