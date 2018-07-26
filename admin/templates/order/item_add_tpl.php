<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=order&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin đặt hàng</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group row">
								<div class="col-lg-3"><b>Mã đơn hàng</b></div>
								<div class="col-lg-8"><?=$item['madonhang']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-12"><b>Thông tin người nhận</b></div>
								
							</div>
							
							<div class="form-group row">
								<div class="col-lg-3">Họ tên</div>
								<div class="col-lg-9"><?=$item['hoten_nn']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Điện thoại</div>
								<div class="col-lg-9"><?=$item['dienthoai']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Email</div>
								<div class="col-lg-9"><?=$item['email']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Địa chỉ</div>
								<div class="col-lg-9"><?=$item['diachi_nn'].' - '.$district_nn['ten'].' - '.$city_nn['ten']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-12"><b>Địa chỉ thanh toán</b></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Họ tên</div>
								<div class="col-lg-9"><?=$item['hoten_tt']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Địa chỉ</div>
								<div class="col-lg-9"><?=$item['diachi_tt'].' - '.$district_tt['ten'].' - '.$city_tt['ten']?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Phương thức vận chuyển</div>
								<div class="col-lg-9">
								<?php if($item['htvc']==1){echo 'Chuyển phát nhanh / Thanh toán qua ngân hàng';}else{echo 'Thu tiền khi giao hàng';}?>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Phương thức thanh toán</div>
								<div class="col-lg-9">
								<?php if($item['httt']==1){echo 'Chuyển phát nhanh / Thanh toán qua ngân hàng';}else{echo 'Thu tiền khi giao hàng';}?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
			<div class="panel panel-default">
				
				<div class="panel-heading">Chi tiết đơn hàng</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group row">
								<?=$item['donhang']?>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Nội dung thêm</div>
								<div class="col-lg-9"><textarea name="noidung" rows="5" class="form-control"><?=$item['noidung']?></textarea></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Ghi chú</div>
								<div class="col-lg-9"><textarea name="ghichu" rows="5" class="form-control"><?=$item['ghichu']?></textarea></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-3">Trạng thái</div>
								<div class="col-lg-9"><?=trangthai($item['id_trangthai'])?></div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			
			
			<p>
			<input type="submit" value="Lưu" class="btn btn-default" />
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=order&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>