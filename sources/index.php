<?php  if(!defined('_source')) die("Error");

	$title = isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '';
	$id_body = 'index';
    $class_body = 'index hide-right-column lang_vi  two-columns';

	$sharefb = '<meta property="og:image" content="http://'.$config_url.'/'._upload_hinhanh_l.$setting['logo'].'"/>
			<meta property="og:title" content="'.$setting['ten_'.$lang].'"/>
			<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
			<meta property="og:url" content="http://'.$config_url.'/"/>
			<meta property="og:description" content="'.strip_tags($setting['title_'.$lang]).'" />';

    //Lay cac san pham ua chuong cho hien thi index
    $sql = "select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 and shows_like=1 order by numberic asc,id desc";
    $d->query($sql);
    $products_like = $d->result_array();

    $curPage = isset($_GET['p']) ? $_GET['p'] : '1';
	$url = "http://$config_url/home/";
	$maxR=24;
	$maxP=10;
	$paging=paging_home($products_like, $url, $curPage, $maxR, $maxP);
	$products_like=$paging['source'];

    //Lay cac san pham moi cho hien thi index
    $sql = "select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 and shows_new=1 order by numberic asc,id desc";
    $d->query($sql);
    $products_new = $d->result_array();

    $curPage = isset($_GET['p']) ? $_GET['p'] : '1';
	$url = "http://$config_url/home/";
	$maxR=24;
	$maxP=10;
	$paging=paging_home($products_new, $url, $curPage, $maxR, $maxP);
	$products_new=$paging['source'];

    //Lay cac san pham ban chay cho hien thi index
    $sql = "select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 and shows_top=1 order by numberic asc,id desc";
    $d->query($sql);
    $products_top = $d->result_array();

    $curPage = isset($_GET['p']) ? $_GET['p'] : '1';
	$url = "http://$config_url/home/";
	$maxR=24;
	$maxP=10;
	$paging=paging_home($products_top, $url, $curPage, $maxR, $maxP);
	$products_top=$paging['source'];
?>
