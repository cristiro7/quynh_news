<?php
    // Get news list
    $sql = "select id, ten_$lang as ten, tenkodau from #_news_list where shows=1 and shows_menu=1 order by numberic asc,id desc";
    $d->query($sql);
    $news_list_header = $d->result_array();
?>

<div class="container">
    <div class="column">
        <div class="logo">
            <a href="index.html"><img src="http://<?=$config_url.'/'._upload_hinhanh_l.$setting['logo']?>" alt="<?=$setting['ten_'.$lang]?>" /></a>
        </div>

        <div class="search">
            <form action="#" method="post">
                <input type="text" value="Search." onblur="if(this.value=='') this.value='Search.';" onfocus="if(this.value=='Search.') this.value='';" class="ft"/>
                <input type="submit" value="" class="fs">
            </form>
        </div>

        <!-- Nav -->
        <nav id="nav">
            <ul class="sf-menu">
                <li <?php if($com == '' || $com == 'trang-chu') { echo 'class="current"'; } ?>><a href="http://<?=$config_url?>/">Home.</a></li>
<!--                <li>-->
<!--                    <a href="#">Pages.</a>-->
<!--                    <ul>-->
<!--                        <li><i class="icon-right-open"></i><a href="leftsidebar.html">Left Sidebar.</a></li>-->
<!--                        <li><i class="icon-right-open"></i><a href="reviews.html">Reviews.</a></li>-->
<!--                        <li><i class="icon-right-open"></i><a href="single.html">Single News.</a></li>-->
<!--                        <li><i class="icon-right-open"></i><a href="features.html">Features.</a></li>-->
<!--                        <li><i class="icon-right-open"></i><a href="contact.html">Contact.</a></li>-->
<!--                    </ul>-->
<!--                </li>-->
                <?php foreach ($news_list_header as $new_list_header) { ?>
                <li <?php if($idl == $new_list_header['tenkodau']) { echo 'class="current"'; } ?>><a href="http://<?=$config_url.'/tin-tuc/'.$new_list_header['tenkodau']?>/"><?=$new_list_header['ten']?></a></li>
                <?php } ?>

                <li <?php if($com == 'lien-he') { echo 'class="current"'; } ?>><a href="http://<?=$config_url?>/lien-he/">Contact.</a></li>
            </ul>
        </nav>
        <!-- /Nav -->
    </div>
</div>
