<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=place&act=save_district" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			<div class="panel panel-default">
				<div class="panel-heading">Quận / Huyện</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group row">
								<div class="col-lg-2"><b>Tỉnh / Thành phố</b></div>
								<div class="col-lg-8"><?=get_select($_REQUEST['id_city'],'city','id_city')?></div>
							</div>
							<div class="form-group row">
								<div class="col-lg-2"><b>Tên</b></div>
								<div class="col-lg-8"><input type="text" name="ten" value="<?=$item['ten']?>" class="form-control" /></div>
							</div>
							

						</div>
					</div>
				</div>
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
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=place&act=man_district'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>