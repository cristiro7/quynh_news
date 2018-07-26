<script>
	$(document).ready(function(e) {
		$('#send_contact').click(function(){
			var frm = $('#frm_contact');
			
			var name = frm.find('#name');
			if(name.val()==''){alert("Bạn chưa nhập tên");name.focus();return false;}
			
			//var address = frm.find('#address');
			//if(address.val()==''){alert("Bạn chưa nhập địa chỉ.");address.focus();return false;}
			
			var phone = frm.find('#phone');
			if(phone.val()==''){alert("Bạn chưa nhập số điện thoại");phone.focus();return false;}else{var str = "0123456789";for(var j=0; j < phone.val().length; j++){if(str.indexOf(phone.val().charAt(j))==-1){alert("Số điện thoại không hợp lệ");phone.val("");phone.focus();return false;}}}

			var email = frm.find('#email');
			if(email.val()==''){alert("Bạn chưa nhập Email");email.focus();return false;}else{var emailRegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.([a-z]){2,4})$/;if(!emailRegExp.test(email.val())){email.val("");alert('Địa chỉ Email không hợp lệ');email.focus();return false;}}
			
			//var subject = frm.find('#subject');
			//if(subject.val()==''){alert("Bạn chưa nhập tiêu đề");subject.focus();return false;}
			
			var message = frm.find('#message');
			if(message.val()==''){alert("Bạn chưa nhập nội dung");message.focus();return false;}
			
			frm.submit();
		});
	});
</script>

<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>                                                                                                                                                                                                                      
	</a>
	<span class="navigation-pipe">&gt;</span>Liên hệ
</div>
 
<h1 class="page-heading bottom-indent">Hãy liên hệ với chúng tôi</h1>

<div id="google-map">
    <iframe frameborder="0" style="width:100%;height: 300px;margin: 10px auto;border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD_XCyaIseCfPu9tBsjcFJmHhj7HegxQ-A&q=<?=$setting['googlemaps']?>&zoom=15"></iframe>
</div>

<div class="contact-info">
    <h2>Thông tin liên hệ</h2>
	<address>
		<strong><?php print $setting['ten_'.$lang]; ?><br/>
		<?php print $setting['address_'.$lang]; ?></strong><br/>
		Hotline: <?php print $setting['hotline']; ?><br/>
		Phone: <?php print $setting['phone']; ?><br/>
        Fax: <?php print $setting['fax']; ?><br/>
		E-mail: <?php print $setting['email']; ?><br/>
	</address>
</div>
                            
<form id="frm_contact" action="lien-he/" method="post" class="contact-form-box" enctype="multipart/form-data">
	<fieldset>
		<h3 class="page-subheading">Gửi tin nhắn</h3>
		<div class="clearfix">
			<div class="col-xs-12 col-md-3">
                <p class="form-group">
					<label for="name">Tên</label>
					<input class="form-control grey validate" type="text" id="name" name="name" required="required" value="" />
				</p> 
				<p class="form-group">
					<label for="email">Địa chỉ Email</label>
					<input class="form-control grey validate" type="text" id="email" name="email" required="required" value="" />
				</p>
				<div class="form-group selector1">
					<label for="phone">Số điện thoại</label>
					<input class="form-control grey" type="number" id="phone" name="phone" required="required" value="" />
				</div>
			</div>
			<div class="col-xs-12 col-md-9">
				<div class="form-group">
					<label for="message">Nội dung</label>
					<textarea class="form-control" id="message" name="message"></textarea>
				</div>
			</div>
		</div>
		<div class="submit">
			<button type="submit" name="send_contact" id="send_contact" class="btn btn-default btn-md">
				<span>Gửi<i class="fa fa-chevron-right right"></i></span>
			</button>
		</div>
	</fieldset>
</form>

<!-- Single -->
<div class="column-two-third single">
    <div id="map"></div>
    <div class="outerwide">
        <h5 class="line"><span>Location.</span></h5>
        <p>Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus adipcising elit. Lorem ipsum Dolor sit amet adipcising elit mauris dapibus dignisim. </p>

        <div class="contact-info">
            <p class="man"><i class="icon-location"></i>Creative Laboratory <br />77 New York Avenue, New York city, <br />USA 10000.</p>
            <p class="phone"><i class="icon-phone"></i> Phone:  73 443 11 23. <br />Fax:  73 443 11 23.</p>
            <p class="envelop"><i class="icon-mail"></i>Email: <a href="#">mail@page.com</a> <br /> Web: <a href="#">www.page.com</a></p>
        </div>
    </div>
    <div class="contact-form">
        <form action="#" method="post" id="contactForm" name="contactForm">
            <div class="form">
                <label>Name*</label>
                <div class="input">
                    <span class="name"></span>
                    <input type="text" class="name"  name="yourname" id="yourname" />
                </div>
            </div>
            <div class="form">
                <label>Email*</label>
                <div class="input">
                    <span class="email"></span>
                    <input type="text" class="name"  name="email" id="email" />
                </div>
            </div>
            <div class="form">
                <label>Subject*</label>
                <div class="input">
                    <span class="website"></span>
                    <input type="text" class="name" name="tele" id="tele"/>
                </div>
            </div>
            <div class="form">
                <label>Message*</label>
                <textarea name="message" rows="10" cols="20"></textarea>
            </div>
            <div class="form2">
                <!--<input type="submit" class="send-message" value="Send Message" />-->
                <a href="javascript:submitForm();" class="send">Send Message</a>
            </div>

        </form>

        <div class="alertMessage"></div>
    </div>
</div>
<!-- /Single -->
