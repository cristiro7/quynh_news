<?php
    // Get news list
    $sql = "select id, ten_$lang as ten, tenkodau from #_news_list where shows=1 and shows_footer=1 order by numberic asc,id desc";
    $d->query($sql);
    $news_list_footer = $d->result_array();
?>
<div class="container">
    <div class="column-one-fourth">
        <h5 class="line"><span><?=_tweet?></span></h5>
        <div id="tweets"></div>
    </div>
    <div class="column-one-fourth">
        <h5 class="line"><span><?=_navigation?></span></h5>
        <ul class="footnav">
            <?php foreach ($news_list_footer as $new_list_footer) { ?>
            <li><a href="http://<?=$config_url.'/tin-tuc/'.$new_list_footer['tenkodau']?>/"><i class="icon-right-open"></i><?=$new_list_footer['ten']?></a></li>
            <?php } ?>
        </ul>
    </div>
    <div class="column-one-fourth">
        <h5 class="line"><span><?=_flickr_stream?></span></h5>

    </div>
    <div class="column-one-fourth">
        <h5 class="line"><span><?=_aboutf?></span></h5>
        <div><?=$info['about']?></div>
    </div>
    <p class="copyright">Copyright 2018. All Rights Reserved</p>
</div>