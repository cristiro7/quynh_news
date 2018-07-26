<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=support&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Thông tin</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên</b></div>
										<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Yahoo</b></div>
										<div class="col-lg-8"><input type="text" name="yahoo" value="<?=$item['yahoo']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Skype</b></div>
										<div class="col-lg-8"><input type="text" name="skype" value="<?=$item['skype']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Số điện thoại</b></div>
										<div class="col-lg-8"><input type="text" name="phone" value="<?=$item['phone']?>" class="form-control" /></div>
									</div>
	
								</div>
							</div>
						</div>
					</div>
					
				</div><!-- end #vi -->
				<!--<div class="tab-pane fade" id="en">
					<div class="panel panel-default">
						<div class="panel-heading">Thông tin</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên (EN)</b></div>
										<div class="col-lg-8"><input type="text" name="ten_en" value="<?=$item['ten_en']?>" class="form-control" /></div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div><!-- end #en -->
			   
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-12">
						<div class="form-group row">
							<div class="col-lg-2"><b>Số thứ tự</b></div>
							<div class="col-lg-8"><input type="text" name="numberic" value="<?=isset($item['numberic'])?$item['numberic']:1?>" style="width:30px; text-align: center" /></div>
						</div>
						<div class="form-group row">
							<div class="col-lg-2"><b>Hiển thị</b></div>
							<div class="col-lg-8"><input type="checkbox" name="shows" <?=(!isset($item['shows']) || $item['shows']==1)?'checked="checked"':''?> /></div>
						</div>
						
					</div>
				</div>
			</div>
			<p>
			<input type="submit" value="Lưu" class="btn btn-default" />
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=support&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>