<?php
    $d->reset();
    $sql = "select ten_$lang as ten, caption_$lang as caption, alt, link, thumb, photo from #_slideshow where shows <>0 order by numberic asc,id desc";
    $d->query($sql);
    $slideshows = $d->result_array();

    $d->reset();
    $sql = "select ten_$lang as ten, mota_$lang as mota, tenkodau, thumb, thumb2, photo, alt from #_news where shows <>0 order by numberic asc,id desc limit 0,3";
    $d->query($sql);
    $news_slide = $d->result_array();
?>

<div class="container">
    <div class="main-slider">
        <div class="badg">
            <p><a href="#">Popular.</a></p>
        </div>
        <div class="flexslider">
            <ul class="slides">
                <?php foreach ($slideshows as $slide) { ?>
                <li>
                    <img src="http://<?=$config_url.'/'._upload_hinhanh_l.$slide['thumb']?>" alt="<?=$slide['alt']?>" />
                    <p class="flex-caption"><a href="<?=$slide['link']?>"><?=$slide['ten']?></a> <?=$slide['caption']?></p>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <?php if (count($news_slide) == 3) { ?>
    <div class="slider2">
        <div class="badg">
            <p><a href="#">Latest.</a></p>
        </div>
        <a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[0]['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$news_slide[0]['thumb2']?>" alt="<?=$news_slide[0]['alt']?>" /></a>
        <p class="caption"><a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[0]['tenkodau']?>.html"><?=$news_slide[0]['ten']?></a> <?=summary($news_slide[0]['mota'], 60)?></p>
    </div>

    <div class="slider3">
        <a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[1]['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$news_slide[1]['thumb']?>" alt="<?=$news_slide[1]['alt']?>" /></a>
        <p class="caption"><a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[1]['tenkodau']?>.html"><?=$news_slide[1]['ten']?></a> <?=summary($news_slide[1]['mota'], 30)?></p>
    </div>

    <div class="slider3">
        <a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[2]['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$news_slide[2]['thumb']?>" alt="<?=$news_slide[2]['alt']?>" /></a>
        <p class="caption"><a href="http://<?=$config_url.'/tin-tuc/'.$news_slide[2]['tenkodau']?>.html"><?=$news_slide[2]['ten']?></a> <?=summary($news_slide[2]['mota'], 30)?></p>
    </div>
    <?php } ?>
</div>
