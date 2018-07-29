<!-- Single -->
<div class="column-two-third single">
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="http://<?=$config_url.'/'._upload_news_l.$news_detail['thumb3']?>" alt="<?=$news_detail['alt']?>" />
            </li>
            <?php if (!empty($news_related = getThumbNews($news_detail['id']))) {
                foreach ($news_related as $new_related) {
                    ?>
                    <li>
                        <img src="http://<?=$config_url.'/'._upload_news_l.$new_related['thumb3']?>" alt="<?=$new_related['alt']?>" />
                    </li>
                <?php } } ?>
        </ul>
    </div>

    <h6 class="title"><?=$news_detail['ten']?></h6>
    <span class="meta"><?php echo date('d M, Y', $news_detail['date_create']); ?>.</span>
    <div><?=$news_detail['noidung']?></div>
    <ul class="sharebox">
        <li><a href="#"><span class="twitter">Tweet</span></a></li>
        <li><a href="#"><span class="pinterest">Pin it</span></a></li>
        <li><a href="#"><span class="facebook">Like</span></a></li>
    </ul>


<!--    <div class="authorbox">-->
<!--        <img src="img/trash/author.png" alt="MyPassion" />-->
<!--        <h6>MyPassion.</h6>-->
<!--        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibu quam id turpis dignissim rutrum.</p>-->
<!--    </div>-->

    <div class="relatednews">
        <h5 class="line"><span><?=_related_news?></span></h5>
        <ul>
            <?php foreach ($news as $key => $new) { ?>
                <li>
                    <a href="http://<?=$config_url.'/tin-tuc/'.$new['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$new['thumb']?>" alt="<?=$new['alt']?>" class="alignleft" width="140" /></a>
                    <p>
                        <span><?php echo date('d M, Y', $new['date_create']); ?>.</span>
                        <a href="http://<?=$config_url.'/tin-tuc/'.$news[1]['tenkodau']?>.html"><?=$new['ten']?></a>
                    </p>
                    <!--<span class="rating"><span style="width:80%;"></span></span>-->
                </li>
            <?php } ?>
        </ul>
    </div>

<!--    <div class="comments">-->
<!--        <h5 class="line"><span>Comments.</span></h5>-->
<!--        <ul>-->
<!--            <li>-->
<!--                <div>-->
<!--                    <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                    <div class="commment-text-wrap">-->
<!--                        <div class="comment-data">-->
<!--                            <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                        </div>-->
<!--                        <div class="comment-text">Curabitur nunc mauris, <a href="#">link test</a> id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                    </div>-->
<!---->
<!--                </div>-->
<!--                <ul class="children">-->
<!--                    <li>-->
<!--                        <div>-->
<!--                            <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                            <div class="commment-text-wrap">-->
<!--                                <div class="comment-data">-->
<!--                                    <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                </div>-->
<!--                                <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                            </div>-->
<!--                        </div>-->
<!---->
<!--                        <ul class="children">-->
<!--                            <li>-->
<!--                                <div>-->
<!--                                    <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                                    <div class="commment-text-wrap">-->
<!--                                        <div class="comment-data">-->
<!--                                            <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                        </div>-->
<!--                                        <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!---->
<!--                                <ul class="children">-->
<!--                                    <li>-->
<!--                                        <div>-->
<!--                                            <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                                            <div class="commment-text-wrap">-->
<!--                                                <div class="comment-data">-->
<!--                                                    <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                                </div>-->
<!--                                                <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!---->
<!--                                        <ul class="children">-->
<!--                                            <li>-->
<!--                                                <div>-->
<!--                                                    <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                                                    <div class="commment-text-wrap">-->
<!--                                                        <div class="comment-data">-->
<!--                                                            <p>MyPassion <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                                        </div>-->
<!--                                                        <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!---->
<!--                                                <ul class="children">-->
<!--                                                    <li>-->
<!--                                                        <div>-->
<!--                                                            <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                                                            <div class="commment-text-wrap">-->
<!--                                                                <div class="comment-data">-->
<!--                                                                    <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                                                </div>-->
<!--                                                                <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </li>-->
<!--                                                </ul>-->
<!---->
<!--                                            </li>-->
<!--                                        </ul>-->
<!---->
<!--                                    </li>-->
<!--                                </ul>-->
<!---->
<!--                            </li>-->
<!--                        </ul>-->
<!---->
<!--                        <ul class="children">-->
<!--                            <li>-->
<!--                                <div>-->
<!--                                    <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                                    <div class="commment-text-wrap">-->
<!--                                        <div class="comment-data">-->
<!--                                            <p><a href="#" class="url">MyPassion </a><br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                        </div>-->
<!--                                        <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </li>-->
<!--                        </ul>-->
<!---->
<!--                    </li>-->
<!--                </ul>-->
<!--                <ul class="children">-->
<!--                    <li>-->
<!--                        <div>-->
<!--                            <div class="comment-avatar"><img src="img/avatar.png" alt="MyPassion" /></div>-->
<!--                            <div class="commment-text-wrap">-->
<!--                                <div class="comment-data">-->
<!--                                    <p><a href="#" class="url">MyPassion</a> <br /> <span>January 12, 2013 - <a href="#" class="comment-reply-link">reply</a></span></p>-->
<!--                                </div>-->
<!--                                <div class="comment-text">Curabitur nunc mauris, imperdiet id dictum quis, aliquet vel diam. Aliquam gravida, augue et dictum hendrerit, nisl erat congue elit, et molestie magna sapien cursus tortor.</div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </li>-->
<!--                </ul>-->
<!--            </li>-->
<!--        </ul>-->
<!--    </div>-->
<!---->
<!--    <div class="comment-form">-->
<!--        <h5 class="line"><span>Leave a reply.</span></h5>-->
<!--        <form action="#" method="post">-->
<!--            <div class="form">-->
<!--                <label>Name*</label>-->
<!--                <div class="input">-->
<!--                    <input type="text" class="name" />-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="form">-->
<!--                <label>Email*</label>-->
<!--                <div class="input">-->
<!--                    <input type="text" class="name" />-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="form">-->
<!--                <label>Website</label>-->
<!--                <div class="input">-->
<!--                    <input type="text" class="name" />-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="form">-->
<!--                <label>Comment*</label>-->
<!--                <textarea rows="10" cols="20"></textarea>-->
<!--            </div>-->
<!--            <input type="submit" class="post-comment" value="Post Comment" />-->
<!--        </form>-->
<!--    </div>-->

</div>
<!-- /Single -->