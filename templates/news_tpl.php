<!-- Popular News -->
<div class="column-two-third">
    <?php if (!isset($_GET['p'])) { ?>
    <div class="outertight m-t-no">
        <div class="badg">
            <p><a href="#"><?=_featured?></a></p>
        </div>

        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="http://<?=$config_url.'/'._upload_news_l.$news[0]['thumb1']?>" alt="<?=$news[0]['alt']?>" />
                </li>
                <?php if (!empty($news_feature1_related = getThumbNews($news[0]['id']))) {
                    foreach ($news_feature1_related as $new_feature1_related) {
                ?>
                    <li>
                        <img src="http://<?=$config_url.'/'._upload_news_l.$new_feature1_related['thumb1']?>" alt="<?=$new_feature1_related['alt']?>" />
                    </li>
                <?php } } ?>
            </ul>
        </div>

        <h6 class="regular"><a href="http://<?=$config_url.'/tin-tuc/'.$news[0]['tenkodau']?>.html"><?=$news[0]['ten']?></a></h6>
        <span class="meta"><?php echo date('d M, Y', $news[0]['date_create']); ?>.</span>
        <p><?=summary($news[0]['ten'], 200)?>...</p>
    </div>

    <div class="outertight m-r-no m-t-no">
        <div class="badg">
            <p><a href="#"><?=_featured?></a></p>
        </div>
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="http://<?=$config_url.'/'._upload_news_l.$news[1]['thumb1']?>" alt="<?=$news[1]['alt']?>" />
                </li>
                <?php if (!empty($news_feature2_related = getThumbNews($news[1]['id']))) {
                    foreach ($news_feature2_related as $new_feature2_related) {
                        ?>
                        <li>
                            <img src="http://<?=$config_url.'/'._upload_news_l.$new_feature2_related['thumb1']?>" alt="<?=$new_feature2_related['alt']?>" />
                        </li>
                    <?php } } ?>
            </ul>
        </div>

        <h6 class="regular"><a href="http://<?=$config_url.'/tin-tuc/'.$news[1]['tenkodau']?>.html"><?=$news[1]['ten']?></a></h6>
        <span class="meta"><?php echo date('d M, Y', $news[1]['date_create']); ?>.</span>
        <p><?=summary($news[1]['ten'], 200)?>...</p>
    </div>
    <?php } ?>

    <div class="outerwide">
        <ul class="block2">
            <?php foreach ($news as $key => $new) { ?>
            <li <?php if (($key%2) != 0) { echo 'class="m-r-no"'; } ?>>
                <a href="http://<?=$config_url.'/tin-tuc/'.$new['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new['thumb']?>" alt="<?=$new['alt']?>" class="alignleft" width="140" /></a>
                <p>
                    <span><?php echo date('d M, Y', $new['date_create']); ?>.</span>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$news[1]['tenkodau']?>.html"><?=$new['ten']?></a>
                </p>
<!--                <span class="rating"><span style="width:80%;"></span></span>-->
            </li>
            <?php } ?>
        </ul>
    </div>

    <div class="pager">
        <?=$paging['paging']?>
    </div>
</div>
<!-- /Popular News -->