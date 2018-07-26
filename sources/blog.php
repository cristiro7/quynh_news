<?php  if(!defined('_source')) die("Error");
	
	$title = 'Blog - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
	
	//$strList = trim(isset($_GET['idl']) ? $_GET['idl'] : '');
	$strDetail = trim(isset($_GET['id']) ? $_GET['id'] : '');
	
	$d->reset();
	
	if($strDetail !=''){
	    $class_body = 'single single-blogs postid-1909';
	    
		$sql_detail = "select id,id_list,ten_$lang as ten,noidung_$lang as noidung,title_$lang as title,description_$lang as description,keywords_$lang as keywords, tenkodau, mota_$lang as mota, thumb, alt,date_create,viewed from #_blog where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$blog_detail = $d->fetch_array();
		
		$viewed = $blog_detail['viewed']+1;
		$sql_update = "update #_blog SET viewed=$viewed where id=".$blog_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_news_l.$blog_detail['thumb'].'"/>
		<meta property="og:title" content="'.$blog_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/blog/'.$blog_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($blog_detail['mota']).'" />';

		
		if($blog_detail['title']){$title = $blog_detail['title'];}
		if($blog_detail['description']){$description = $blog_detail['description'];}
		if($blog_detail['keywords']){$keywords = $blog_detail['keywords'];}
		
		$d->reset();
		if($blog_detail['id_list'] !=0) {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_blog where shows=1 and id!=".$blog_detail['id']." and id_list=".$blog_detail['id_list'];
		} else {
			$sql_khac = "select id,ten_$lang as ten,tenkodau,date_create from #_blog where shows=1 and id!=".$blog_detail['id'];
		}
		$sql_khac .=" order by numberic asc,id desc limit 0,20";
		$d->query($sql_khac);
		$blog_orther = $d->result_array();
				
	}else{
		$title_bar = 'blog';
		$class_body = 'blog cat-1-id';

		$sql = "select id, id_list, ten_$lang as ten, tenkodau, photo, thumb1, alt, mota_$lang as mota, date_create from #_blog where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$blog = $d->result_array();
		
		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/blog/";
		$maxR=5;
		$maxP=10;
		$paging=paging_home($blog, $url, $curPage, $maxR, $maxP);
		$blog=$paging['source'];
	}	
?>