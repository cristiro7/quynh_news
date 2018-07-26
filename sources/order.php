<?php  if(!defined('_source')) die("Error");

	$title = "Giỏ hàng - ".$setting['title_'.$lang];

    $sharefb = '<meta property="og:image" content="http://'.$config_url.'/'._upload_hinhanh_l.$setting['logo'].'"/>
			<meta property="og:title" content="'.$setting['ten_'.$lang].'"/>
			<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
			<meta property="og:url" content="http://'.$config_url.'/"/>
			<meta property="og:description" content="'.strip_tags($setting['title_'.$lang]).'" />';
            
	$d->reset();
	$sql = "select id,ten from #_city where shows=1 order by numberic asc,id desc";
	$d->query($sql);
	$city = $d->result_array();
    
    $district = array();	
		
	if(!empty($_POST)){
		
		if($_POST['error']){
			
			$hoten_nn=$_POST['ten_nn'];$hoten_tt=$_POST['ten_tt'];
			$dienthoai=$_POST['dienthoai'];
			$diachi_nn=$_POST['diachi_nn'];$diachi_tt=$_POST['diachi_tt'];
			$city_nn=$_POST['city_nn'];$city_tt=$_POST['city_tt'];
			$district_nn=$_POST['district_nn'];$district_tt=$_POST['district_tt'];
		
			$email=$_POST['email'];
			$noidung=$_POST['noidung'];
			$thanhtoan=$_POST['thanhtoan'];
		
			$htvc=$_POST['htvc'];
			$httt=$_POST['httt'];
			
			settype($htvc,"int");settype($httt,"int");
			
			$coloi=false;
            $body = '';
            $giamgia = 0;
            $user = '';
            $weight = '';
            $height = '';
            $sudung = '';
			if ($coloi==FALSE) {
												
				$body.='<table cellpadding="0" cellspacing="0" style="width:100%; border: none;">';
				if(is_array($_SESSION['cart']))
				{
					$body.='<tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr>';
					$max=count($_SESSION['cart']);
					for($i=0;$i<$max;$i++){
						$pid=$_SESSION['cart'][$i]['productid'];
						$q=$_SESSION['cart'][$i]['qty'];
						$pimg=get_product_img($pid,_upload_product_l,$config_url);
						$pname=get_product_name($pid,$lang);
						
						$product[$i]['productid'] = $_SESSION['cart'][$i]['productid'];
						$product[$i]['qty'] = $_SESSION['cart'][$i]['qty'];
						$product[$i]['giaban'] = get_price($pid)*$q;
						
						if($q==0) continue;
						$body.='<tr style="text-align: center;background: #fff;">';
						$body.='<td width="5%" align="center" valign="middle">'.($i+1).'</td>';
						$body.='<td width="15%" align="center" valign="middle">'.$pimg.'</td>';
						$body.='<td width="15%" align="center" valign="middle">'.$pname.'</td>';
						$body.='<td width="10%" align="center" valign="middle">'.number_format(get_price($pid),0, ',', '.').' vnđ</td>';
						$body .='<td width="10%" align="center" valign="middle">'.$q.'</td>'  ;
						$body.='<td width="10%" align="center" valign="middle">'.number_format(get_price($pid)*$q,0, ',', '.') .' vnđ</td>';
						$body.='</tr>';
					}
					$body.='
                    <tr style="text-align: center;background: #fff;">
						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>
						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>
					</tr>
                    <tr style="text-align: center;background: #fff;">
						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>
						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">'.number_format(get_order_total(),0, ',', '.').' vnđ</span></td>
					</tr>
					<tr style="text-align: center;background: #fff;">
						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>
						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">'.number_format(get_order_total()-$giamgia,0, ',', '.').' vnđ</span></strong></td>
					</tr>
					';
				}
				
				$body.='</table>';
				
				$mahoadon=strtoupper (ChuoiNgauNhien(6));
				$ngaydangky=time();
				$tonggia=get_order_total()-$giamgia;
				
				$sql = "INSERT INTO  table_order (id_user,madonhang,hoten_nn,hoten_tt,dienthoai,diachi_nn,diachi_tt,city_nn,city_tt,district_nn,district_tt,weight,height,email,httt,htvc,tonggia,noidung,donhang,ngaytao,id_trangthai ) 
					  VALUES ('$user','$mahoadon','$hoten_nn','$hoten_tt','$dienthoai','$diachi_nn','$diachi_tt','$city_nn','$city_tt','$district_nn','$district_tt','$weight','$height','$email','$httt','$htvc','$tonggia','$noidung','$body','$ngaydangky','1')";	
				mysql_query($sql) or die(mysql_error());
				$idDonhang = mysql_insert_id();
				
				$d->reset();
				$sql = "select ten from table_city where id=".$city_nn;
				$d->query($sql);
				$city_nn = $d->fetch_array();
				
				$d->reset();
				$sql = "select ten from table_district where id=".$district_nn;
				$d->query($sql);
				$district_nn = $d->fetch_array();
				
				$d->reset();
				$sql = "select ten from table_city where id=".$city_tt;
				$d->query($sql);
				$city_tt = $d->fetch_array();
				
				$d->reset();
				$sql = "select ten from table_district where id=".$district_tt;
				$d->query($sql);
				$district_tt = $d->fetch_array();
				
				if($htvc==1){ $htvc_dh = 'Chuyển phát nhanh / Thanh toán qua ngân hàng';}else{ $htvc_dh = 'Thu tiền khi giao hàng';}
				if($httt==1){ $httt_dh = 'Chuyển phát nhanh / Thanh toán qua ngân hàng';}else{ $httt_dh = 'Thu tiền khi giao hàng';}
				$data='<div style="width: 100%;margin: 0px auto;">
						<h3 style="font-size: normal;text-align: left;font-weight: bold;">Chi tiết đơn hàng</h3>
						<table cellpadding="0" cellspacing="0" style="width:98%; border: none;margin: 1%;">
							<tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr>';
				$max=count($_SESSION['cart']);
				for($i=0;$i<$max;$i++){
					$pid=$_SESSION['cart'][$i]['productid'];
					$q=$_SESSION['cart'][$i]['qty'];
					$pimg=get_product_img($pid,_upload_product_l,$config_url);
					$pname=get_product_name($pid,$lang);
					
					$product[$i]['productid'] = $_SESSION['cart'][$i]['productid'];
					$product[$i]['qty'] = $_SESSION['cart'][$i]['qty'];
					$product[$i]['giaban'] = get_price($pid)*$q;
					if($q==0) continue;
					$data.='<tr style="text-align: center;background: #fff;">';
					$data.='<td width="5%" align="center" valign="middle">'.($i+1).'</td>';
					$data.='<td width="15%" align="center" valign="middle">'.$pimg.'</td>';
					$data.='<td width="15%" align="center" valign="middle">'.$pname.'</td>';
					$data.='<td width="10%" align="center" valign="middle">'.number_format(get_price($pid),0, ',', '.').' vnđ</td>';
					$data .='<td width="10%" align="center" valign="middle">'.$q.'</td>'  ;
					$data.='<td width="10%" align="center" valign="middle">'.number_format(get_price($pid)*$q,0, ',', '.') .' vnđ</td>';
					$data.='</tr>';
				}
					$data.='<tr style="text-align: center;background: #fff;">
						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>
						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">'.number_format(get_order_total(),0, ',', '.').' vnđ</span></td>
					</tr>'.$sudung.'
					<tr style="text-align: center;background: #fff;">
						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>
						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">'.number_format(get_order_total()-$giamgia,0, ',', '.').' vnđ</span></strong></td>
					</tr></table></div>';
				
				include_once "phpMailer/class.phpmailer.php";	
				$mail = new PHPMailer();
				$mail->IsSMTP(); // Gọi đến class xử lý SMTP
				$mail->Host = '112.213.89.75';
				$mail->SMTPAuth   = true;                  // Sử dụng đăng nhập vào account
				$mail->Username   = "order@thegioinongsan.com.vn"; // SMTP account username
				$mail->Password   = "c*-=VGhNl5%A"; 

				//Thiet lap thong tin nguoi gui va email nguoi gui
				$mail->SetFrom('order@thegioinongsan.com.vn',$setting['ten_'.$lang]);

				//Thiết lập thông tin người nhận
				$mail->AddAddress($email, $hoten_nn);
				
				/*=====================================
				 * THIET LAP NOI DUNG EMAIL
				*=====================================*/

				//Thiết lập tiêu đề
				$mail->Subject    = "ĐƠN ĐẶT HÀNG - ".$setting['ten_'.$lang];
				$mail->IsHTML(true);
				//Thiết lập định dạng font chữ
				$mail->CharSet = "utf-8";	

				$body='<div style="width: 100%;margin: 0px auto;">
					<div style="width: 100%;margin: 0px auto;text-align: center;"><img src="http://'.$config_url.'/'._upload_hinhanh_l.$setting['logo'].'"></div>
					<h2 style="text-transform: uppercase;text-align: center;font-weight: bold;">Đơn đặt hàng</h2>
					<h4 style="font-size: normal;text-align: right;font-weight: bold;">Số PO: '.$idDonhang.'</h4>
					<h4 style="font-size: normal;text-align: right;font-weight: bold;">Ngày: '.date('d/m/Y',time()).'</h4>
					
					<div style="width: 100%;margin: 0px auto;line-height: 1.5em">
						<p style="float: left;width: 48%;"><b style="font-size: normal;text-align: left;font-weight: bold;">Thông tin người nhận</b></p>
						<p style="float: right;width: 48%;"><b style="font-size: normal;text-align: left;font-weight: bold;">Thông tin thanh toán</b></p>
						<p style="float: left;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Họ tên:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$hoten_nn.'</b></p>
						<p style="float: right;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Họ tên:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$hoten_tt.'</b></p>
						<p style="float: left;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Điện thoại:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$dienthoai.'</b></p>
						<p style="float: right;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Địa chỉ:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$diachi_tt.' - '.$district_tt['ten'].' - '.$city_tt['ten'].'</b></p>
						<p style="float: left;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Email:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$email.'</b></p>
						<p style="float: right;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Phương thức vận chuyển:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$htvc_dh.'</b></p>
						<p style="float: left;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Địa chỉ:</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$diachi_nn.' - '.$district_nn['ten'].' - '.$city_nn['ten'].'</b></p>
						<p style="float: right;width: 48%;"><span style="float: left;width: 40%;font-size: normal;text-align: left;">Phương thức thanh toán</span> <b style="float: right;width: 55%;font-size: normal;text-align: left;font-weight: bold;">'.$httt_dh.'</b></p>
						<div style="display:block;clear:both;"></div>
					</div>';
						
				$body.=$data.'</div>';
				
				$mail->Body = $body;
				$mail->Send();
				
				unset($_SESSION['cart']); 
				transfer("Đơn hàng của bạn đã được gửi", "http://".$config_url."/");			
			}
		}
	}
?>