<?php if(!defined('_source')) die("Error");

	$title = 'Liên hệ - '.$setting['title_'.$lang];
	$class_body = "page page-id-14 page-template page-template-page-fullwidth-php";

	$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_hinhanh_l.$setting['logo'].'"/>
			<meta property="og:title" content="'.$setting['ten_'.$lang].'"/>
			<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
			<meta property="og:url" content="http://'.$config_url.'/contact.html"/>
			<meta property="og:description" content="'.strip_tags($setting['title_'.$lang]).'" />';

	if(!empty($_POST)){
		include_once "phpMailer/class.phpmailer.php";
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host = '112.213.89.75';
		$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
		$mail->Username   = "contact@thegioinongsan.com.vn"; // SMTP account username
		$mail->Password   = "92npx0hmnrUW";

		//Thiet lap thong tin nguoi gui va email nguoi gui
		$mail->SetFrom('contact@thegioinongsan.com.vn',$_POST['name']);

		//Thiết lập thông tin người nhận
		$mail->AddAddress($setting['email'], $setting['ten_'.$lang]);
		//Thiết lập email nhận email hồi đáp
		//nếu người nhận nhấn nút Reply
		$mail->AddReplyTo($_POST['email'],$_POST['name']);

		/*=====================================
		 * THIET LAP NOI DUNG EMAIL
		*=====================================*/

		//Thiết lập tiêu đề
		$mail->Subject    = "Contact form - ".$setting['ten_'.$lang];
		$mail->IsHTML(true);
		//Thiết lập định dạng font chữ
		$mail->CharSet = "utf-8";

		$body = '<table>';
		$body .= '
			<tr>
				<th colspan="2">&nbsp;</th>
			</tr>
			<tr>
				<th colspan="2">Thư liên hệ từ website <a href="http://'.$config_url.'">'.$setting['website'].'</a></th>
			</tr>
			<tr>
				<th colspan="2">&nbsp;</th>
			</tr>
			<tr>
				<th>Họ và tên :</th><td>'.$_POST['name'].'</td>
			</tr>
			<tr>
				<th>Số điện thoại :</th><td>'.$_POST['phone'].'</td>
			</tr>
			<tr>
				<th>Email :</th><td>'.$_POST['email'].'</td>
			</tr>
			<tr>
				<th>Nội dung :</th><td>'.$_POST['message'].'</td>
			</tr>';
		$body .= '</table>';

		$mail->Body = $body;
		if($mail->Send())
		transfer("Thư của bạn đã được gửi. <bt/> Chúng tôi sẽ liên hệ lại với bạn trong thời gian sơm nhất.", "http://$config_url/contact.html");
		else
		 transfer("Hệ thống đang bận.<br/> Xin quý khách vui lòng thử lại sau.", "http://$config_url/contact.html");
	}

?>