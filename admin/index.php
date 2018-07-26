<?php
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
error_reporting(E_ALL & ~E_NOTICE & ~8192);
@define('_template', './templates/');
@define('_source', './sources/');
@define('_lib', './lib/');

include_once _lib . "config.php";
include_once _lib . "constant.php";
include_once _lib . "functions.php";
include_once _lib . "library.php";
include_once _lib . "class.database.php";

$com = (isset($_REQUEST['com'])) ? addslashes($_REQUEST['com']) : "";
$act = (isset($_REQUEST['act'])) ? addslashes($_REQUEST['act']) : "";
$login_name = 'AMTECOL';

$d = new database($config['database']);

switch ($com) {
    case 'user':
        $source = "user";
        break;

    case 'setting':
        $source = "setting";
        break;

    case 'info':
        $source = "info";
        break;

    case 'product':
        $source = "product";
        break;

    case 'order':
        $source = "order";
        break;

    case 'about':
        $source = "about";
        break;

    case 'news':
        $source = "news";
        break;

    case 'advisory':
        $source = "advisory";
        break;

    case 'service':
        $source = "service";
        break;

    case 'event':
        $source = "event";
        break;

    case 'faqs':
        $source = "faqs";
        break;

    case 'courses':
        $source = "courses";
        break;

    case 'blog':
        $source = "blog";
        break;

    case 'pricelist':
        $source = "pricelist";
        break;

    case 'slideshow':
        $source = "slideshow";
        break;

    case 'advertise':
        $source = "advertise";
        break;

    case 'banner':
        $source = "banner";
        break;

    case 'custome':
        $source = "custome";
        break;

    case 'farm':
        $source = "farm";
        break;

    case 'helper':
        $source = "helper";
        break;

    case 'support':
        $source = "support";
        break;

    case 'social':
        $source = "social";
        break;

    case 'place':
        $source = "place";
        break;

    default:
        $source = "";
        $template = "index";
        break;
}

if (!isset($_SESSION['login'])) {
    redirect("login.php");
} elseif ($_SESSION['login']['ajax'] == false) {
    redirect("login.php");
}

if ($source != "") {
    include _source . $source . ".php";
}
?>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="Quản trị website"/>
    <meta name="author" content="Admin"/>

    <title>Quản trị website</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://<?= $config_url ?>/admin/media/css/bootstrap.css" rel="stylesheet"/>
    <link href="http://<?= $config_url ?>/admin/media/css/default.css" rel="stylesheet"/>
    <!-- MetisMenu CSS -->
    <link href="http://<?= $config_url ?>/admin/media/css/plugins/metisMenu/metisMenu.css" rel="stylesheet"/>

    <!-- Timeline CSS -->
    <link href="http://<?= $config_url ?>/admin/media/css/plugins/timeline.css" rel="stylesheet"/>

    <!-- DataTables CSS -->
    <link href="http://<?= $config_url ?>/admin/media/css/plugins/dataTables.bootstrap.css"
          rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="http://<?= $config_url ?>/admin/media/css/sb-admin-2.css" rel="stylesheet"/>

    <!-- Morris Charts CSS 
    <link href="http://<?= $config_url ?>/admin/media/css/plugins/morris.css" rel="stylesheet">-->

    <!-- Custom Fonts -->
    <link href="http://<?= $config_url ?>/admin/media/font-awesome-4.1.0/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,greek-ext,cyrillic-ext,vietnamese,greek' rel='stylesheet' type='text/css'>

    <link href="http://<?= $config_url ?>/admin/media/css/lang.css" rel="stylesheet"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery Version 1.11.0 -->
    <script src="http://<?= $config_url ?>/admin/media/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="http://<?= $config_url ?>/admin/media/js/bootstrap.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="http://<?= $config_url ?>/admin/media/js/plugins/metisMenu/metisMenu.js"></script>

    <!-- DataTables JavaScript -->
    <script src="http://<?= $config_url ?>/admin/media/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="http://<?= $config_url ?>/admin/media/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- Tiny MCE -->
    <script src="http://<?= $config_url ?>/admin/ckeditor/ckeditor.js"></script>
    <script src="http://<?= $config_url ?>/admin/ckfinder/ckfinder.js"></script>
    <script src="http://<?= $config_url ?>/admin/tiny_mce/tiny_mce.js" type="text/javascript"></script>

    <!-- Custom Theme JavaScript -->
    <script src="http://<?= $config_url ?>/admin/media/js/sb-admin-2.js"></script>

    <link href="http://<?= $config_url ?>/admin/media/css/jquery-ui-1.10.3/jquery.ui.theme.css" rel="stylesheet" type="text/css"/>
    <link href="http://<?= $config_url ?>/admin/media/css/jquery-ui-1.10.3/jquery.ui.core.css" rel="stylesheet" type="text/css"/>
    <script src="http://<?= $config_url ?>/admin/media/js/jquery-ui.js"></script>
    <script src="http://<?= $config_url ?>/admin/media/js/multiselect.js"></script>
    <link href="http://<?= $config_url ?>/admin/media/css/multiselect.css" rel="stylesheet" type="text/css"/>
    <script>
        $(function () {
              $("#team_type").multiselect();
              $("#team_size").multiselect();
              $("#team_color").multiselect();
        });
    </script>
</head>

<body>
    <!--<ul id="langTab" class="nav nav-tabs">
        <li class="active">
            <a href="#vi" data-toggle="tab" class="btn btn-info" >VI</a>
        </li>
        <li><a href="#en" data-toggle="tab" class="btn btn-info" >EN</a></li>
    </ul>-->
    <div id="wrapper">
        <?php include _template . "header_tpl.php" ?>
        <div id="page-wrapper">
            <?php include _template . $template . "_tpl.php" ?>
        </div><!-- /#page-wrapper -->
    </div><!-- /#wrapper -->
</body>
</html>
