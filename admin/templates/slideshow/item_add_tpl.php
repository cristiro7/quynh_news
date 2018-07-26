<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=slideshow&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />

			<div class="panel panel-default">
				<div class="panel-heading">Slideshow</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">	
							<div class="form-group row">
								<div class="col-lg-2"><b>Photo</b></div>
								<div class="col-lg-5">
									<?php if($item['photo']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_hinhanh_l.$item['photo'].'" width="400" />';}?>
									<input type="file" name="photo" />
								</div>
								<div class="col-lg-3"><?php print _default_type; ?></div>
								<div class="col-lg-2"><?php print _slide_size; ?></div>
								
							</div>
							<div class="form-group row">
								<div class="col-lg-2"><b>Alt</b></div>
								<div class="col-lg-8"><input type="text" name="alt" value="<?=$item['alt']?>" class="form-control" /></div>
							</div>
                            
                            <div class="form-group row">
								<div class="col-lg-2"><b>Tiêu đề</b></div>
								<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
							</div>

                            <div class="form-group row">
                                <div class="col-lg-2"><b>Caption</b></div>
                                <div class="col-lg-8"><input type="text" name="caption_vi" value="<?=$item['caption_vi']?>" class="form-control" /></div>
                            </div>
							<div class="form-group row">
								<div class="col-lg-2"><b>Link</b></div>
								<div class="col-lg-8"><input type="text" name="link" value="<?=$item['link']?>" class="form-control" /></div>
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
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=slideshow&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>