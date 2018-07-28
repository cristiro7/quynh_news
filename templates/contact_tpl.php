<!-- Single -->
<div class="column-two-third single">
    <div id="map"></div>
    <div class="outerwide">
        <h5 class="line"><span>Location.</span></h5>
        <div><?=$info['contact']?></div>

        <div class="contact-info">
            <p class="man"><i class="icon-location"></i>Creative Laboratory <br /><?=$setting['address_vi']?></p>
            <p class="phone"><i class="icon-phone"></i> Phone:  <?=$setting['phone']?></p>
            <p class="envelop"><i class="icon-mail"></i>Email: <a href="<?=$setting['email']?>"><?=$setting['email']?></a> <br /> Web: <a href="<?=$setting['website']?>"><?=$setting['website']?></a></p>
        </div>
    </div>
    <div class="contact-form">
        <form action="http://<?=$config_url?>/lien-he/" method="post" id="contactForm" name="contactForm" enctype="multipart/form-data">
            <div class="form">
                <label>Name*</label>
                <div class="input">
                    <span class="your_name"></span>
                    <input type="text" class="name" name="your_name" id="your_name" required="required" />
                </div>
            </div>
            <div class="form">
                <label>Email*</label>
                <div class="input">
                    <span class="your_email"></span>
                    <input type="text" class="name" name="your_email" id="your_email" required="required" />
                </div>
            </div>
            <div class="form">
                <label>Subject*</label>
                <div class="input">
                    <span class="your_subject"></span>
                    <input type="text" class="name" name="your_subject" id="your_subject" required="required" />
                </div>
            </div>
            <div class="form">
                <label>Message*</label>
                <textarea name="your_message" rows="10" cols="20" required="required"></textarea>
            </div>
            <div class="form2">
                <input type="submit" id="send_contact" class="send" value="Send Message" />
            </div>

        </form>

        <div class="alertMessage"></div>
    </div>
</div>
<!-- /Single -->
