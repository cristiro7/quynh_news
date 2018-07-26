<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=helper&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Bài viết</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên</b></div>
										<div class="col-lg-8"><input type="text" readonly="readonly" name="type" value="<?=$item['type']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Dòng 1</b></div>
										<div class="col-lg-8"><input type="text" name="column_1_vi" value="<?=$item['column_1_vi']?>" class="form-control" /></div>
									</div>
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Dòng 2</b></div>
										<div class="col-lg-8"><input type="text" <?php if($item['type'] == 'Follow us' || $item['type'] == 'Hotline') echo 'readonly="readonly"'; ?> name="column_2_vi" value="<?=$item['column_2_vi']?>" class="form-control" /></div>
									</div>
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Dòng 3</b></div>
										<div class="col-lg-8"><input type="text" name="column_3_vi" value="<?=$item['column_3_vi']?>" class="form-control" /></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- end #vi -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-12">
						<div class="form-group row">
							<div class="col-lg-2"><b>Hiển thị</b></div>
							<div class="col-lg-8"><input type="checkbox" name="shows" <?=(!isset($item['shows']) || $item['shows']==1)?'checked="checked"':''?> /></div>
						</div>
					</div>
				</div>
			</div>
			<p>
			<input type="submit" value="Lưu" class="btn btn-default" />
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=helper&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>