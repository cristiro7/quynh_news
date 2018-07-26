<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" id="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=user&act=admin_edit" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin tài khoản</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							
							<div class="form-group row">
								<div class="col-lg-3"><b>Tên đăng nhập</b></div>
								<div class="col-lg-7"><input type="text" name="username" value="<?=$item['username']?>" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Mật khẩu</b></div>
								<div class="col-lg-7"><input type="password" name="oldpassword" value="" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Mật khẩu mới</b></div>
								<div class="col-lg-7"><input type="password" name="new_pass" value="" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Nhập lại mật khẩu mới</b></div>
								<div class="col-lg-7"><input type="password" name="renew_pass" value="" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Họ tên</b></div>
								<div class="col-lg-7"><input type="text" name="ten" value="<?=$item['ten']?>" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Email</b></div>
								<div class="col-lg-7"><input type="text" name="email" value="<?=$item['email']?>" class="form-control" /></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3"><b>Điện thoại</b></div>
								<div class="col-lg-7"><input type="text" name="dienthoai" value="<?=$item['dienthoai']?>" class="form-control" /></div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<input type="button" value="Lưu" id="btn" class="btn btn-default" />
			
		</form>	
	</div>
</div>

<script language="javascript">
	$(document).ready(function(){
		$('#btn').click(function(){
			var frm = $('#frm');
			
			var name = frm.find('input[name="username"]');
			if(name.val()==''){alert("Bạn chưa nhập tên đăng nhập");name.focus();return false;}
			
			var oldpass = frm.find('input[name="oldpassword"]');
			if(oldpass.val()==''){alert("Bạn chưa nhập mật khẩu cũ");oldpass.focus();return false;}
			
			var newpass = frm.find('input[name="new_pass"]');
			if(newpass.val() !='' && newpass.val().length<5){alert("Mật khẩu phải nhiều hơn 4 ký tự.");newpass.focus();return false;}
			
			var renew_pass = frm.find('input[name="renew_pass"]');
			if(newpass.val() != renew_pass.val()){alert("Nhập lại mật khẩu mới không chính xác.");renew_pass.focus();return false;}
			
			var email = frm.find('input[name="email"]');
			if(email.val()==''){alert("Bạn chưa nhập Email");email.focus();return false;}else{var emailRegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.([a-z]){2,4})$/;if(!emailRegExp.test(email.val())){email.val("");alert('Địa chỉ Email không hợp lệ');email.focus();return false;}}
			
		
			frm.submit();
		})
	})
</script>
