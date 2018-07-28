<?php
    session_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    //error_reporting(E_ALL & ~E_NOTICE & ~8192);
    $session=session_id();

    @define ( '_template' , './templates/');
    @define ( '_source' , './sources/');
    @define ( '_lib' , './admin/lib/');
    @define ( _upload_folder , './upload/');

    include_once _lib."config.php";
    include_once _lib."constant.php";
    include_once _lib."functions.php";
    include_once _lib."functions_giohang.php";
    include_once _lib."class.database.php";
    $d = new database($config['database']);

    $sql = "select * from #_setting limit 0,1";
    $d->query($sql);
    $setting= $d->fetch_array();

    $sql = "select * from #_info limit 0,1";
    $d->query($sql);
    $info= $d->fetch_array();

    $lang=$setting['lang'];
    $lang_arr=array("vi","en");
    if(isset($_GET['lang']) == true){
        if (in_array($_GET['lang'], $lang_arr)==true){$lang = $_GET['lang'];}
    }

    $title = $setting['title_'.$lang];
    $description = $setting['description_'.$lang];
    $keywords = $setting['keywords_'.$lang];

    require_once _source."lang_$lang.php";
    include_once _lib."file_requick.php";
    include_once _source."counter.php";
    include_once _source."useronline.php";
?>

<!DOCTYPE HTML>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
	<base href="http://<?php echo isset($config_url) ? $config_url : ''; ?>/" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta name="author" content="MyPassion">
    <meta name="keywords" content="<?php echo isset($keywords) ? $keywords : ''; ?>" />
	<meta name="description" content="<?php echo isset($description) ? $description : ''; ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<?php echo isset($setting['geos']) ? $setting['geos'] : ''; ?>
	<?php echo isset($sharefb) ? $sharefb : ''; ?>
	<title><?php echo isset($title) ? $title : ''; ?></title>
	<link rel="shortcut icon" type="image/x-icon" href="http://<?=$config_url . '/' . _upload_hinhanh_l . $setting['favicon']?>" />
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://<?=$config_url . '/' . _upload_hinhanh_l . $setting['favicon']?>"/>

    <link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="css/fontello/fontello.css" />
    <link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/ui.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/960.css" />
    <link rel="stylesheet" type="text/css" href="css/devices/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
    <link rel="stylesheet" type="text/css" href="css/devices/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
    <link rel="stylesheet" type="text/css" href="css/devices/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
    <link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]> <script type="text/javascript" src="js/customM.js"></script> <![endif]-->
</head>

<body>
    <!-- Body Wrapper -->
    <div class="body-wrapper">
        <div class="controller">
            <div class="controller2">
                <!-- Header -->
                <header id="header">
                    <?php include_once _template."layout/header.php";?>
                </header>
                <!-- /Header -->

                <?php if($com == '' || $com == 'trang-chu') { ?>
                <!-- Slider -->
                <section id="slider">
                    <?php include_once _template."layout/slider.php";?>
                </section>
                <!-- / Slider -->
                <?php } ?>

                <!-- Content -->
                <section id="content">
                    <div class="container">
                        <?php if($com != '' && $com != 'trang-chu') { ?>
                        <!-- Breadcrumbs -->
                        <div class="breadcrumbs column">
                            <?=$breadcrumbs?>
                        </div>
                        <!-- Breadcrumbs -->
                        <?php } ?>

                        <!-- Main Content -->
                        <div class="main-content">
                            <!-- Load Main content Start -->
                            <?php include_once _template.$template."_tpl.php"; ?>
                            <!-- Load Main content End -->
                        </div>
                        <!-- /Main Content -->

                        <!-- Left Sidebar -->
                        <div class="column-one-third">
                            <?php include_once _template."layout/left_sidebar.php";?>
                        </div>
                        <!-- /Left Sidebar -->
                    </div>
                </section>
                <!-- / Content -->

                <!-- Footer -->
                <footer id="footer">
                    <?php include_once _template."layout/footer.php";?>
                </footer>
                <!-- / Footer -->
            </div>
        </div>
    </div>
    <!-- / Body Wrapper -->

    <!-- SCRIPTS -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/easing.min.js"></script>
    <script type="text/javascript" src="js/1.8.2.min.js"></script>
    <script type="text/javascript" src="js/ui.js"></script>
    <script type="text/javascript" src="js/carouFredSel.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/customM.js"></script>
    <script type="text/javascript" src="js/flexslider-min.js"></script>
    <script type="text/javascript" src="js/tweetable.js"></script>
    <script type="text/javascript" src="js/timeago.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.min.js"></script>
    <script type="text/javascript" src="js/mobilemenu.js"></script>

    <!--[if lt IE 9]> <script type="text/javascript" src="js/html5.js"></script> <![endif]-->

    <?php if($com == 'lien-he') { ?>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <?php } ?>

    <script type="text/javascript" src="js/mypassion.js"></script>
</body>
</html>
