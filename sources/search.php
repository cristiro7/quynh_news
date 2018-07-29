<?php  if(!defined('_source')) die("Error");
		
    $title = _search . ' - '.(isset($setting['title_'.$lang]) ? $setting['title_'.$lang] : '');
    $breadcrumbs = "<p><a href='http://" . $config_url . "/'>" . _home . ".</a>      \\   " . _search . "</p>";

    $d->reset();
    $sql = "select id, ten_$lang as ten, mota_$lang as mota, tenkodau, thumb, thumb1, alt, date_create from #_news where shows=1";

    if (isset($_GET['keyword']) && $_GET['keyword'] != '') {
        $keyword = trim(strip_tags($_GET['keyword']));
        if (get_magic_quotes_gpc() == false) {
            $keyword = mysqli_real_escape_string($keyword);
        }

        $sql .= " and ten_$lang like'%$keyword%'";
    }

    $sql .=" order by numberic asc,id desc";

    $d->query($sql);
    $news = $d->result_array();

    $total_news = count($news);
    $title_bar = _found . " <span style='color: #FFFF00;'>".$total_news."</span> " . _news;

    $curPage = isset($_GET['p']) ? $_GET['p'] : '1';
    $url = "http://$config_url/tim-kiem/";
    $maxR=20;
    $maxP=10;
    $paging=paging_home($news, $url, $curPage, $maxR, $maxP);
    $news=$paging['source'];
?>