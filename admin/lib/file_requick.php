<?php
    $com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
    $act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
    $d = new database($config['database']);

    // Get setting
    $sql = "select * from #_setting limit 0,1";
    $d->query($sql);
    $setting= $d->fetch_array();

    // Get other info
    $sql = "select * from #_info limit 0,1";
    $d->query($sql);
    $info = $d->fetch_array();

    // Set lang
    $lang = $setting['lang'];
    $lang_arr = array("vi", "en");
    if (isset($_GET['lang']) == true) {
        if (in_array($_GET['lang'], $lang_arr) == true) {
            $lang = $_GET['lang'];
        }
    }

    // Set SEO
    $title = $setting['title_' . $lang];
    $description = $setting['description_' . $lang];
    $keywords = $setting['keywords_' . $lang];

    switch ($com) {
        case 'lien-he':
            $source = "contact";
            $template = "contact";
            break;
        case 'gioi-thieu':
            $source = "about";
            $template = "about_detail";
            break;
        case 'chung-chi-chat-luong':
            $source = "";
            $template = "certificate_quality_detail";
            break;
        case 'tin-tuc':
            $source = "news";
            $template = isset($_GET['id']) ? "news_detail" : "news";
            break;
        case 'dich-vu':
            $source = "service";
            $template = isset($_GET['id']) ? "service_detail" : "service";
            break;
        case 'san-pham':
            $source = "product";
            $template = isset($_GET['id']) ? "product_detail" : "product";
            break;
        case 'san-pham-moi':
            $source = "product_new";
            $template = "product_new";
            break;
        case 'san-pham-ban-chay':
            $source = "product_top";
            $template = "product_top";
            break;
        case 'san-pham-ua-chuong':
            $source = "product_like";
            $template = "product_like";
            break;
        case 'tim-kiem':
            $source = "search";
            $template = "search";
            break;
        case 'gio-hang':
            $source = "order";
            $template = "order";
            break;
        case 'sitemap':
            $source = "index";
            $template = "index";
            break;
        default:
            $source = "index";
            $template = "index";
            break;
    }

    if ($source != "") {
        include _source . $source . ".php";
    }
?>
