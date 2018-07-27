<?php  if(!defined('_source')) die("Error");

	$title = isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '';
	$id_body = 'index';
    $class_body = 'index hide-right-column lang_vi  two-columns';

	$sharefb = '<meta property="og:image" content="http://'.$config_url.'/'._upload_hinhanh_l.$setting['logo'].'"/>
			<meta property="og:title" content="'.$setting['ten_'.$lang].'"/>
			<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
			<meta property="og:url" content="http://'.$config_url.'/"/>
			<meta property="og:description" content="'.strip_tags($setting['title_'.$lang]).'" />';

    // Get news popular
    $sql = "select id, ten_$lang as ten, tenkodau, thumb1, alt, date_create from #_news where shows=1 and shows_popular=1 order by numberic asc,id desc limit 0,3";
    $d->query($sql);
    $news_popular = $d->result_array();

	// Get news hot
	$sql = "select id, ten_$lang as ten, tenkodau, thumb1, alt, date_create from #_news where shows=1 and shows_hot=1 order by numberic asc,id desc limit 0,3";
	$d->query($sql);
	$news_hot = $d->result_array();

	// Get page (news_list)
	$sql = "select id, ten_$lang as ten, tenkodau, mota_$lang as mota, thumb1, thumb2, alt, date_create from #_news where id_list=1 and shows=1 order by numberic asc,id desc";
	$d->query($sql);
	$news_of_page_list = $d->result_array();

	// Get world (news_list) Block 1
	$sql = "select id, ten_$lang as ten, tenkodau, mota_$lang as mota, thumb1, thumb2, alt, date_create from #_news where id_list=1 and shows=1 order by numberic asc,id desc limit 0,4";
	$d->query($sql);
	$news_of_world_list_block1 = $d->result_array();

	// Get world (news_list) Block 2
	$sql = "select id, ten_$lang as ten, tenkodau, mota_$lang as mota, thumb1, thumb2, alt, date_create from #_news where id_list=1 and shows=1 order by numberic asc,id desc limit 5,8";
	$d->query($sql);
	$news_of_world_list_block2 = $d->result_array();

	// Get business (news_list)
	$sql = "select id, ten_$lang as ten, tenkodau, mota_$lang as mota, thumb1, thumb2, alt, date_create from #_news where id_list=3 and shows=1 order by numberic asc,id desc limit 0,3";
	$d->query($sql);
	$news_of_business_list = $d->result_array();

	// Get sport (news_list)
	$sql = "select id, ten_$lang as ten, tenkodau, mota_$lang as mota, thumb1, thumb2, alt, date_create from #_news where id_list=5 and shows=1 order by numberic asc,id desc limit 0,3";
	$d->query($sql);
	$news_of_sport_list = $d->result_array();
?>
