<?php
if(isset($_REQUEST['command']) && $_REQUEST['command']=='delete' && $_REQUEST['pid']>0){
		remove_product($_REQUEST['pid']);
		if(count($_SESSION['cart'])==0){
			unset($_SESSION['cart']);
		}
	}
	else if(isset($_REQUEST['command']) && $_REQUEST['command']=='clear'){
		unset($_SESSION['cart']);
	}
	else if(isset($_REQUEST['command']) && $_REQUEST['command']=='update'){
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=intval($_REQUEST['product'.$pid]);
			if($q>0 && $q<=999){
				$_SESSION['cart'][$i]['qty']=$q;
			}
			else{
				$msg='Số lượng đơn hàng mua phải lớn hơn 1 và nhỏ hơn 20';
			}
		}
	}
?>
<script language="javascript">
	function del(pid){
		if(confirm('Bạn chắc chắn muốn xóa sản phẩm này?')){
			document.form1.pid.value=pid;
			document.form1.command.value='delete';
			document.form1.submit();
		}
	}
	function clear_cart(){
		if(confirm('Bạn chắc chắn muốn xóa hết giỏ hàng ?')){
			document.form1.command.value='clear';
			document.form1.submit();
		}
	}
	function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}
	
	function validate(evt) {
	  var theEvent = evt || window.event;
	  var key = theEvent.keyCode || theEvent.which;
	  key = String.fromCharCode( key );
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
		theEvent.returnValue = false;
		if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	}
</script>
<script src="http://<?=$config_url?>/js/jquery.filter_input.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('input.quantity').filter_input({regex:'[0-9_]'}); 
		
		$('input.quantity').each(function(){
			var soluong = $(this);
			
			soluong.change(function(){
				var quantity = parseInt($(this).val());
				var id = $(this).attr('rel');
				
				if(quantity <=0){alert('Số lượng đơn hàng không thể nhỏ hơn 1');$(this).val('1');return false;}
				update_basket(id,quantity);
				
				$('span#load-basket').load("http://<?=$config_url?>/ajax/load_total_basket.php");
			})
			
		})
		
		function update_basket(id,quantity){
			$.ajax({
				type: "POST",
				url: "ajax/update_basket.php",
				dataType: 'json',
				data: "id="+id+"&q="+quantity,
				beforeSend: function(){
					
					$('span.load-price'+id).html('<img src="http://<?=$config_url?>/images/loading-icon.gif" align="absmiddle" />');
					$('span.load-price').html('<img src="http://<?=$config_url?>/images/loading-icon.gif" align="absmiddle" />');
					$('span.load-price-final').html('<img src="http://<?=$config_url?>/images/loading-icon.gif" align="absmiddle" />');
				},
				success: function(result){
					
					if(result){
						$('span.load-price'+id).html(result.giaban);
						$('span.load-price').html(result.thanhtien);
						$('span.load-price-final').html(result.tonggia);
					
					}	
				}
			});
		}
		
		$('input[name="htvc"]').click(function(){
			if($(this).val()==1){
				$('input[name="httt"]').each(function(){
					if($(this).attr('data-group')==1){$(this).attr('checked',1);}
				})
				
				$('#address_pay').css('display', 'block');
			}else{
				$('input[name="httt"]').each(function(){
					if($(this).attr('data-group')==2){$(this).attr('checked',0);}
				})
				
				$('#address_pay').css('display', 'none');
			}
		})
		
		$('input[name="httt"]').click(function(){
			if($(this).val()==1){
				$('input[name="htvc"]').each(function(){
					if($(this).attr('data-group')==1){$(this).attr('checked',1);}
				})
				
				$('#address_pay').css('display', 'block');
			}else{
				$('input[name="htvc"]').each(function(){
					if($(this).attr('data-group')==2){$(this).attr('checked',0);}
				})
				
				$('#address_pay').css('display', 'none');
			}
		})
		
		$('#city_nn').change(function(){
			var id = $(this).val();
			$.ajax({
				type: "POST",
				url: "ajax/ajax_quan.php",
				data: "lang=<?=$lang?>&id="+id,
				success: function(result){
					$('#district_nn').html(result);
					
				}
			});
		})
		
		$('#city_tt').change(function(){
			var id = $(this).val();
			$.ajax({
				type: "POST",
				url: "ajax/ajax_quan.php",
				data: "lang=<?=$lang?>&id="+id,
				success: function(result){
					$('#district_tt').html(result);
					
				}
			});
		})
		
		$('#same').click(function(){
			var frm = $('#frm_order');
			var name = frm.find('#ten_nn');
			var address = frm.find('#diachi_nn');
			var city = frm.find('#city_nn');
			var district = frm.find('#district_nn');
			var name2 = frm.find('#ten_tt');
			var address2 = frm.find('#diachi_tt');
			var city2 = frm.find('#city_tt');
			var district2 = frm.find('#district_tt');
			
			if($(this).is(':checked') == true){
				name2.val(name.val());
				address2.val(address.val());
				city2.val(city.val());
				$.ajax({
					type: "POST",
					url: "ajax/ajax_quan.php",
					data: "lang=<?=$lang?>&id="+city.val()+"&idi="+district.val(),
					success: function(result){
						$('#district_tt').html(result);
						
					}
				});
			}else{
				name2.val('');
				address2.val('');
				city2.val('');
				district2.val('')
			}
		
		})
		
		$('#send_order').click(function(){
			var frm = $('#frm_order');
			
			var name = frm.find('#ten_nn');
			if(name.val()==''){alert("Bạn chưa nhập tên");name.focus();return false;}
			
			var phone = frm.find('#dienthoai');
			if(phone.val()==''){alert("Bạn chưa nhập số điện thoại");phone.focus();return false;}else{var str = "0123456789";for(var j=0; j < phone.val().length; j++){if(str.indexOf(phone.val().charAt(j))==-1){alert("Số điện thoại không hợp lệ");phone.val("");phone.focus();return false;}}}

			var email = frm.find('#email');
			if(email.val()==''){alert("Bạn chưa nhập Email");email.focus();return false;}else{var emailRegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.([a-z]){2,4})$/;if(!emailRegExp.test(email.val())){email.val("");alert('Địa chỉ Email không hợp lệ');email.focus();return false;}}

			
			var address = frm.find('#diachi_nn');
			if(address.val()==''){alert("Bạn chưa nhập địa chỉ.");address.focus();return false;}
			
			var city = frm.find('#city_nn');
			if(city.val()==''){alert("Bạn chưa nhập Tỉnh / Thành phố.");city.focus();return false;}
			
			var district = frm.find('#district_nn');
			if(district.val()==''){alert("Bạn chưa nhập Quận / Huyện.");district.focus();return false;}
			
			var name2 = frm.find('#ten_tt');
			if(name2.val()==''){alert("Bạn chưa nhập tên thanh toán");name2.focus();return false;}
			
			var address2 = frm.find('#diachi_tt');
			if(address2.val()==''){alert("Bạn chưa nhập địa chỉ thanh toán.");address2.focus();return false;}
			
			var city2 = frm.find('#city_tt');
			if(city2.val()==''){alert("Bạn chưa nhập Tỉnh / Thành phố.");city2.focus();return false;}
			
			var district2 = frm.find('#district_tt');
			if(district2.val()==''){alert("Bạn chưa nhập Quận / Huyện.");district2.focus();return false;}
	
			var httt = $('input[name="httt"]');
			if(httt.is(':checked') == false){alert("Bạn chưa chọn phương thức thanh toán");return false;}
			
			frm.submit();
		});
		
	})
</script>
<div class="breadcrumb clearfix">
	<a class="home" href="" title="Trang chủ">
		<i class="fa fa-home"></i>
	</a>
	<span class="navigation-pipe">&gt;</span>Giỏ hàng
</div>
<h1 class="page-heading basket-detail">
	<span class="cat-name">Giỏ hàng</span>
</h1>

<div id="info" class="col-sm-12 basket-detail">
	<div class="row">
		<div class="i-title">
			<h3>Có <span><?=get_total()?></span> sản phẩm trong giỏ hàng của bạn</h3>
		</div>
		<div class="i-content">
			<?php if(isset($_SESSION['cart']) && is_array($_SESSION['cart']) && count($_SESSION['cart'])>0){?>
			<div class="col-sm-12">

				<form name="form1" method="post">
					<input type="hidden" name="error" value="0" />
					<input type="hidden" name="pid" />
					<input type="hidden" name="command" />
					<table class="tbl-order" >
						<?php 
							echo '<tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center">Tên sản phẩm</td><td align="center">Giá bán</td><td align="center">Số lượng</td><td align="center">Tổng giá bán</td><td align="center" style="width:4%;">Xóa</td></tr>';
							$max=count($_SESSION['cart']);
							for($i=0;$i<$max;$i++){
								$pid=$_SESSION['cart'][$i]['productid'];
								$q=$_SESSION['cart'][$i]['qty'];
								$pimg=get_product_img($pid,_upload_product_l,$config_url);
								$pname=get_product_name($pid,$lang);
								if($q==0) continue;
						?>
						<tr>
							<td width="5%" align="center" valign="middle"><?=$i+1?></td>
							<td width="15%" align="center" valign="middle"><?=$pimg?></td>
							<td width="15%" align="center" valign="middle"><?=$pname?></td>
							
							<td width="10%" align="center" valign="middle" ><?=number_format(get_price($pid),0, ',', '.')?> vnđ</td>
							
							<td width="10%" align="center" valign="middle" ><input type="number" class="quantity" name="product<?=$pid?>" value="<?=$q?>" rel="<?=$pid?>" max="999" min="1" style="width: 70px;text-align:center;" /></td>
							
							<td width="10%" align="center" valign="middle" ><span class="load-price<?=$pid?>" style="color: #000;"><?=number_format(get_price($pid)*$q,0, ',', '.') ?> vnđ </span></td>
							<td align="center"><a href="javascript:del(<?=$pid?>)"><i class="fa fa-trash-o fa-lg"></i></a></td>
						</tr>
						<?php } ?>

                        <tr>
							<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><b>VAT</b></td>
							<td colspan="2" align="right" style="height:30px;padding-right: 5px;"><span class="load-price" style="color: #000;">5%</span></td>
						</tr>
                        
						<tr>
							<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><b>Thành tiền</b></td>
							<td colspan="2" align="right" style="height:30px;padding-right: 5px;"><span class="load-price" style="color: #000;"><?=number_format(get_order_total(),0, ',', '.')?> vnđ</span></td>
						</tr>
                        
						<tr style="text-align: center;background: #fff;">
							<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><b style="color: #f00;">Tổng cộng</b></td>
							<td colspan="2" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><b style="color: #f00;"><span class="load-price-final"><?=number_format(get_order_total(),0, ',', '.')?> vnđ</span></b></td>
						</tr>
						
					</table>
				</form>
			</div>
			
			<form method="post" name="frm_order" id="frm_order" action="" enctype="multipart/form-data" onsubmit="return check();">
				<input type="hidden" name="error" value="1" />
                <input type="hidden" name="code" id="code" value="" />
				<div class="col-sm-12">
					<div class="col-sm-7 order-left ">
						<p style="font-weight:bold;height: 35px;background: #f8f8f8;padding: 5px;font-size: 13px;text-transform: uppercase;"><img src="http://<?=$config_url?>/images/step-1.png" align="absmiddle" /> Thực hiện việc đặt hàng </p>
						<p style="font-weight:bold;font-size: 13px;text-transform: uppercase;">Thông tin người nhận</p>
						<table class="tbl-info">
							
							<tr>
								<td align="left">Họ tên<span class="red fw-bold">*</span></td>
								<td align="right"><input name="ten_nn" id="ten_nn" class="form-control" value="" /></td>
							</tr>
							<tr>
								<td align="left">Điện thoại<span class="red fw-bold">*</span></td>
								<td align="right"><input name="dienthoai" id="dienthoai" class="form-control" value="" onkeypress="return validate();" /></td>
							</tr>
							
							<tr>
								<td align="left">E-mail<span class="red fw-bold">*</span></td>
								<td align="right"><input name="email" id="email" class="form-control"  value=""/></td>
							</tr>
							
							<tr>
								<td align="left">Địa chỉ<span class="red fw-bold">*</span></td>
								<td align="right"><input  name="diachi_nn"  id="diachi_nn" class="form-control"  value="" /></td>
							</tr>
							
							<tr>
								<td align="left">Tỉnh / Thành phố: <span class="red fw-bold">*</span></td>
								<td align="right">
									<select name="city_nn" id="city_nn" class="form-control" >
										<option value="">-- Chọn --</option>
									<?php for($i=0;$i<count($city);$i++){?>
											<option value="<?=$city[$i]['id']?>" ><?=$city[$i]['ten']?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
                            
                            <tr>
    							<td align="left">Quận / Huyện: <span class="red fw-bold">*</span></td>
    							<td align="right">
    								<select name="district_nn" id="district_nn" class="form-control" >
    									<option value="">-- Chọn --</option>
    								<?php for($i=0;$i<count($district);$i++){?>
    										<option value="<?=$district[$i]['id']?>" <?php if($_SESSION['logging']['id_district'] == $district[$i]['id']){echo 'selected="selected"';}?>><?=$district[$i]['ten']?></option>
    										<?php } ?>
    								</select>
    								
    							</td>
    						</tr>
                                    
							<tr>
								<td align="left">Nội dung</td>
								<td align="right"><textarea name="noidung"  class="form-control" id="noidung" rows="7"  ></textarea></td>
							</tr>
						</table>
						<p style="float: left;padding: 10px 0px;"><input type="checkbox" id="same" /> Địa chỉ nhận hàng và địa chỉ thanh toán của tôi giống nhau</p>
						<div class="col-sm-12">
							
							<p style="font-weight:bold;font-size: 13px;text-transform: uppercase;">Địa chỉ thanh toán</p>
							<table class="tbl-info">
								
								<tr>
									<td align="left">Họ tên<span class="red fw-bold">*</span></td>
									<td align="right"><input name="ten_tt" id="ten_tt" class="form-control" value="" /></td>
								</tr>
								<tr>
									<td align="left">Địa chỉ<span class="red fw-bold">*</span></td>
									<td align="right"><input  name="diachi_tt"  id="diachi_tt" class="form-control"  value=""/></td>
								</tr>
								<tr>
									<td align="left">Tỉnh / Thành phố: <span class="red fw-bold">*</span></td>
									<td align="right">
										<select name="city_tt" id="city_tt" class="form-control">
											<option value="">-- Chọn --</option>
										<?php for($i=0;$i<count($city);$i++){?>
												<option value="<?=$city[$i]['id']?>"><?=$city[$i]['ten']?></option>
											<?php } ?>
										</select>
									</td>
								</tr>
								<tr>
									<td align="left">Quận / Huyện: <span class="red fw-bold">*</span></td>
									<td align="right">
										<select name="district_tt" id="district_tt" class="form-control">
											<option value="">-- Chọn --</option>
										<?php for($i=0;$i<count($district);$i++){?>
												<option value="<?=$district[$i]['id']?>" <?php if($district[$i]['id'] == $_SESSION['logging']['id_item']){echo 'selected="selected"';} ?>><?=$district[$i]['ten_vi']?></option>
												<?php } ?>
										</select>
										
									</td>
								</tr>
							</table>
						</div>
					</div>
					
					<div class="col-sm-5 order-right">
						
							<div class="col-sm-12">
								<p style="font-weight:bold;height: 35px;background: #f8f8f8;padding: 5px;font-size: 13px;text-transform: uppercase;"><img src="http://<?=$config_url?>/images/step-2.png" align="absmiddle" /> Phương thức vận chuyển</p>
								<!--<p style="padding-left: 25px;padding-top: 15px;padding-right: 10px;"><input type="radio" name="htvc" value="1" data-group="1" /> Chuyển phát nhanh / Thanh toán qua ngân hàng (Thời gian giao hàng từ 2 - 5 ngày. Không tính thứ 7 và CN)</p>-->
								
								<p style="padding-left: 25px;padding-top: 5px;padding-bottom: 10px;padding-right: 10px;"><input type="radio" name="htvc" value="2" data-group="2" /> Thu tiền khi giao hàng (Thời gian giao hàng từ 1 - 2 ngày, tính cả thứ 7 và CN. Chỉ áp dụng tại các địa chỉ giao hàng cụ thể có địa chỉ, số nhà rõ ràng.)</p>
								
							</div>

							<div class="col-sm-12">
								<p style="font-weight:bold;height: 35px;background: #f8f8f8;padding: 5px;font-size: 13px;text-transform: uppercase;"><img src="http://<?=$config_url?>/images/step-3.png" align="absmiddle" /> Phương thức thanh toán</p>
								<p style="padding-left: 25px;padding-top: 15px;padding-right: 10px;"><input type="radio" name="httt" value="1" data-group="1" /> Chuyển phát nhanh / Thanh toán qua ngân hàng</p>
								
								<p style="padding-left: 25px;padding-top: 5px;padding-bottom: 10px;padding-right: 10px;"><input type="radio" name="httt" value="2" data-group="2" /> Thu tiền khi giao hàng</p>
								
							</div>
							
							<div class="col-sm-12" id="address_pay">
								
							</div>
							<p style="float: right;padding-top: 10px;padding-bottom: 10px;text-align: right"><input class="button" type="button" value="Mua tiếp" onclick="location.href='http://<?=$config_url.'/san-pham/'?>'" style="cursor:pointer;padding:5px 10px;"/> <input class="button" type="submit" name="next" id="send_order" value="Đặt hàng" style="cursor:pointer;padding:5px 10px;"/></p>
					</div>
				</div>
			</form>

			<?php } ?>
		</div>	
	</div>
</div>
