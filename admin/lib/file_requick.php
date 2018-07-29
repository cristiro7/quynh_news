<?php
    $com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
    $act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
    $idl = (isset($_REQUEST['idl'])) ? addslashes($_REQUEST['idl']) : "";

    switch ($com) {
        case 'lien-he':
            $source = "contact";
            $template = "contact";
            break;
        case 'gioi-thieu':
            $source = "about";
            $template = "about_detail";
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
