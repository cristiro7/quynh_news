<?php
    // Get advertise block1
    $d->reset();
	$sql = "select id, ten_$lang as ten, link, alt, photo from #_advertise where shows=1 and shows_single=0 order by numberic asc, id desc";
	$d->query($sql);
	$advertises_sidebar_block1 = $d->result_array();

    // Get advertise block2
    $d->reset();
    $sql = "select id, ten_$lang as ten, link, alt, photo from #_advertise where shows=1 and shows_single=1 order by numberic asc, id desc limit 0,1";
    $d->query($sql);
    $advertise_sidebar_block2 = $d->fetch_array();

    // Get news hot
    $sql = "select id, ten_$lang as ten, tenkodau, date_create from #_news where shows=1 and shows_hot=1 order by numberic asc,id desc limit 0,4";
    $d->query($sql);
    $news_hot_sidebar = $d->result_array();

    // Get news popular
    $sql = "select id, ten_$lang as ten, tenkodau, date_create from #_news where shows=1 and shows_popular=1 order by numberic asc,id desc limit 0,4";
    $d->query($sql);
    $news_popular_sidebar = $d->result_array();
?>
<div class="sidebar">
    <h5 class="line"><span><?=_stay_connected?></span></h5>
    <ul class="social">
        <li>
            <a href="#" class="facebook"><i class="icon-facebook"></i></a>
            <span>6,800 <br/> <i>fans</i></span>
        </li>
        <li>
            <a href="#" class="twitter"><i class="icon-twitter"></i></a>
            <span>12,475 <br/> <i>followers</i></span>
        </li>
        <li>
            <a href="#" class="rss"><i class="icon-rss"></i></a>
            <span><i>Subscribe via rss</i></span>
        </li>
    </ul>
</div>

<div class="sidebar">
    <h5 class="line"><span><?=_vimeo_video?></span></h5>
    <iframe src="http://player.vimeo.com/video/<?=$setting['vimeo_video']?>?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="300px" height="170px" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</div>

<div class="sidebar">
    <h5 class="line"><span><?=_ads_spot?></span></h5>
    <ul class="ads125">
        <?php foreach ($advertises_sidebar_block1 as $advertise_sidebar_block1) { ?>
        <li><a href="<?=$advertise_sidebar_block1['link']?>"><img src="http://<?=$config_url.'/'._upload_hinhanh_l.$advertise_sidebar_block1['photo']?>" alt="<?=$advertise_sidebar_block1['alt']?>" /></a></li>
        <?php } ?>
    </ul>
</div>

<div class="sidebar">
<!--    <div id="tabs">-->
<!--        <ul>-->
<!--            <li><a href="#tabs1"><?=_hot?></a></li>-->
<!--            <li><a href="#tabs2"><?=_popular?></a></li>-->
<!--        </ul>-->
<!--        <div id="tabs1">-->
<!--            <ul>-->
<!--                --><?php //foreach ($news_hot_sidebar as $new_hot_sidebar) { ?>
<!--                <li>-->
<!--                    <a href="http://--><?//=$config_url.'/tin-tuc/'.$new_hot_sidebar['tenkodau']?><!--.html" class="title">--><?//=$new_hot_sidebar['ten']?><!--</a>-->
<!--                    <span class="meta">--><?php //echo date('d M, Y', $new_hot_sidebar['date_create']); ?><!--</span>-->
<!--<!--                    <span class="rating"><span style="width:70%;"></span></span>-->-->
<!--                </li>-->
<!--                --><?php //} ?>
<!--            </ul>-->
<!--        </div>-->
<!--        <div id="tabs2">-->
<!--            <ul>-->
<!--                --><?php //foreach ($news_popular_sidebar as $new_popular_sidebar) { ?>
<!--                    <li>-->
<!--                        <a href="http://--><?//=$config_url.'/tin-tuc/'.$new_popular_sidebar['tenkodau']?><!--.html" class="title">--><?//=$new_popular_sidebar['ten']?><!--</a>-->
<!--                        <span class="meta">--><?php //echo date('d M, Y', $new_popular_sidebar['date_create']); ?><!--</span>-->
<!--                        <!--                    <span class="rating"><span style="width:70%;"></span></span>-->-->
<!--                    </li>-->
<!--                --><?php //} ?>
<!--            </ul>-->
<!--        </div>-->
<!--    </div>-->
</div>

<?php if (!empty($advertise_sidebar_block2)) { ?>
<div class="sidebar">
    <h5 class="line"><span><?=_ads_spot?></span></h5>
    <a href="<?=$advertise_sidebar_block2['link']?>"><img src="http://<?=$config_url.'/'._upload_hinhanh_l.$advertise_sidebar_block2['photo']?>" alt="<?=$advertise_sidebar_block2['alt']?>" /></a>
</div>
<?php } ?>

<div class="sidebar">
    <h5 class="line"><span><?=_facebook?></span></h5>
    <iframe src="http://www.facebook.com/plugins/likebox.php?href=<?=$setting['fanpage']?>&amp;width=298&amp;height=258&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color=%23BCBCBC&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:298px; height:258px;" allowTransparency="true"></iframe>
</div>
