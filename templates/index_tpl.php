<!-- Popular News -->
<div class="column-one-third">
    <h5 class="line"><span>Popular News.</span></h5>
    <div class="outertight">
        <ul class="block">
            <?php foreach ($news_popular as $new_popular) { ?>
            <li>
                <a href="http://<?=$config_url.'/tin-tuc/'.$new_popular['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_popular['thumb']?>" alt="<?=$new_popular['alt']?>" class="alignleft" width="140" /></a>
                <p>
                    <span><?php echo date('d M, Y', $new_popular['date_create']); ?></span>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_popular['tenkodau']?>.html"><?=$new_popular['ten']?></a>
                </p>
<!--                <span class="rating"><span style="width:80%;"></span></span>-->
            </li>
            <?php } ?>
        </ul>
    </div>

</div>
<!-- /Popular News -->

<!-- Hot News -->
<div class="column-one-third">
    <h5 class="line"><span>Hot News.</span></h5>
    <div class="outertight m-r-no">
        <ul class="block">
            <?php foreach ($news_hot as $new_hot) { ?>
                <li>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_hot['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_hot['thumb']?>" alt="<?=$new_hot['alt']?>" class="alignleft" width="150" /></a>
                    <p>
                        <span><?php echo date('d M, Y', $new_hot['date_create']); ?></span>
                        <a href="http://<?=$config_url.'/tin-tuc/'.$new_hot['tenkodau']?>.html"><?=$new_hot['ten']?></a>
                    </p>
<!--                    <span class="rating"><span style="width:80%;"></span></span>-->
                </li>
            <?php } ?>
        </ul>
    </div>

</div>
<!-- /Hot News -->

<!-- Life Style -->
<div class="column-two-third">
    <h5 class="line">
        <span>Life Style.</span>
        <div class="navbar">
            <a id="next1" class="next" href="#"><span></span></a>
            <a id="prev1" class="prev" href="#"><span></span></a>
        </div>
    </h5>

    <div class="outertight">
        <img src="http://<?=$config_url.'/'._upload_news_l.$news_of_page_list[0]['thumb1']?>" alt="<?=$news_of_page_list[0]['alt']?>" />
        <h6 class="regular"><a href="http://<?=$config_url.'/tin-tuc/'.$news_of_page_list[0]['tenkodau']?>.html"><?=$news_of_page_list[0]['ten']?></a></h6>
        <span class="meta"><?php echo date('d M, Y', $news_of_page_list[0]['date_create']); ?></span>
        <p><?=$news_of_page_list[0]['mota']?>...</p>
    </div>

    <div class="outertight m-r-no">
        <ul class="block" id="carousel">
            <?php foreach ($news_of_page_list as $key => $new_of_page_list) {
                if ($key == 0) { continue; }
            ?>
            <li>
                <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_page_list['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_of_page_list['thumb']?>" alt="<?=$new_of_page_list['alt']?>" class="alignleft" width="140" /></a>
                <p>
                    <span><?php echo date('d M, Y', $new_of_page_list['date_create']); ?>.</span>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_page_list['tenkodau']?>.html"><?=summary($new_of_page_list['ten'], 70)?></a>
                </p>
<!--                <span class="rating"><span style="width:80%;"></span></span>-->
            </li>
            <?php } ?>
        </ul>
    </div>
</div>
<!-- /Life Style -->

<!-- World News -->
<div class="column-two-third">
    <h5 class="line">
        <span>World News.</span>
        <div class="navbar">
            <a id="next2" class="next" href="#"><span></span></a>
            <a id="prev2" class="prev" href="#"><span></span></a>
        </div>
    </h5>

    <div class="outerwide" >
        <ul class="wnews" id="carousel2">
            <?php foreach ($news_of_world_list_block1 as $new_of_world_list_block1) { ?>
            <li>
                <img src="http://<?=$config_url.'/'._upload_news_l.$new_of_world_list_block1['thumb1']?>" alt="<?=$new_of_world_list_block1['alt']?>" class="alignleft" />
                <h6 class="regular"><a href="http://<?=$config_url.'/tin-tuc/'.$new_of_world_list_block1['tenkodau']?>.html"><?=$new_of_world_list_block1['ten']?></a></h6>
                <span class="meta"><?php echo date('d M, Y', $new_of_world_list_block1['date_create']); ?>.</span>
                <p><?=summary($new_of_world_list_block1['mota'], 200)?>...</p>
            </li>
            <?php } ?>
        </ul>
    </div>

    <div class="outerwide">
        <ul class="block2">
            <?php foreach ($news_of_world_list_block2 as $new_of_world_list_block2) { ?>
            <li>
                <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_world_list_block2['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_of_world_list_block2['thumb']?>" alt="<?=$new_of_world_list_block2['alt']?>" class="alignleft" width="140" /></a>
                <p>
                    <span><?php echo date('d M, Y', $new_of_world_list_block2['date_create']); ?>.</span>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_world_list_block2['tenkodau']?>.html"><?=$new_of_world_list_block2['ten']?></a>
                </p>
                <!--<span class="rating"><span style="width:80%;"></span></span>-->
            </li>
            <?php } ?>
        </ul>
    </div>
</div>
<!-- /World News -->

<!-- Popular News -->
<div class="column-two-third">
    <div class="outertight">
        <h5 class="line"><span>Business News.</span></h5>

        <div class="outertight m-r-no">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="http://<?=$config_url.'/'._upload_news_l.$news_of_business_list[0]['thumb1']?>" alt="<?=$news_of_business_list[0]['alt']?>" />
                    </li>
                    <?php if (!empty($news_thumb_related = getThumbNews($news_of_business_list[0]['id']))) {
                        foreach ($news_thumb_related as $new_thumb_related) {
                    ?>
                    <li>
                        <img src="http://<?=$config_url.'/'._upload_news_l.$new_thumb_related['thumb1']?>" alt="<?=$new_thumb_related['alt']?>" />
                    </li>
                    <?php } } ?>
                </ul>
            </div>

            <h6 class="regular"><a href="#">Blandit Rutrum, Erat et Sagittis. Lorem
                    Ipsum Dolor, Sit Amet Adipsing.</a></h6>
            <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
            <p>Blandit rutrum, erat et egestas ultricies, dolor tortor egestas enim, quiste rhoncus sem purus eu sapien. Curabitur a orci nec risus lacinia vehic. Lorem ipsum
                dolor adipcising elit. Erat egestan sagittis lorem aupo dolor sit ameta, auctor libero tempor...</p>
        </div>

        <ul class="block">
            <?php foreach ($news_of_business_list as $key => $new_of_business_list) {
                if ($key == 0) { continue; }
            ?>
                <li>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_business_list['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_of_business_list['thumb']?>" alt="<?=$new_of_business_list['alt']?>" class="alignleft" width="140" /></a>
                    <p>
                        <span><?php echo date('d M, Y', $new_of_business_list['date_create']); ?>.</span>
                        <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_business_list['tenkodau']?>.html"><?=$new_of_business_list['ten']?></a>
                    </p>
                    <!--<span class="rating"><span style="width:80%;"></span></span>-->
                </li>
            <?php } ?>
        </ul>
    </div>

    <div class="outertight m-r-no">
        <h5 class="line"><span>Sport News.</span></h5>

        <div class="outertight m-r-no">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="img/trash/27.png" alt="MyPassion" />
                    </li>
                    <li>
                        <img src="img/trash/26.png" alt="MyPassion" />
                    </li>
                    <li>
                        <img src="img/trash/24.png" alt="MyPassion" />
                    </li>
                </ul>
            </div>

            <h6 class="regular"><a href="#">Blandit Rutrum, Erat et Sagittis. Lorem
                    Ipsum Dolor, Sit Amet Adipsing.</a></h6>
            <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
            <p>Blandit rutrum, erat et egestas ultricies, dolor tortor egestas enim, quiste rhoncus sem purus eu sapien. Curabitur a orci nec risus lacinia vehic. Lorem ipsum
                dolor adipcising elit. Erat egestan sagittis lorem aupo dolor sit ameta, auctor libero tempor...</p>
        </div>

        <ul class="block">
            <?php foreach ($news_of_sport_list as $key => $new_of_sport_list) {
                if ($key == 0) { continue; }
            ?>
                <li>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_sport_list['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new_of_sport_list['thumb']?>" alt="<?=$new_of_sport_list['alt']?>" class="alignleft" width="140" /></a>
                    <p>
                        <span><?php echo date('d M, Y', $new_of_sport_list['date_create']); ?>.</span>
                        <a href="http://<?=$config_url.'/tin-tuc/'.$new_of_sport_list['tenkodau']?>.html"><?=$new_of_sport_list['ten']?></a>
                    </p>
                    <!--<span class="rating"><span style="width:80%;"></span></span>-->
                </li>
            <?php } ?>
        </ul>
    </div>
</div>
<!-- /Popular News -->
