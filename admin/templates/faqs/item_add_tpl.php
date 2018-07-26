<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=faqs&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Bài viết</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Câu hỏi</b></div>
										<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Trả lời</b></div>
										<div class="col-lg-8"><textarea name="mota_vi" rows="5" class="form-control"><?=$item['mota_vi']?></textarea></div>
									</div>
									
                                    <!--
									<div class="form-group row">
										<div class="col-lg-2"><b>Nội dung</b></div>
										<div class="col-lg-10">
											<textarea name="noidung_vi" rows="5" class="form-control"><?=$item['noidung_vi']?></textarea>
											<script type="text/javascript">
												$(document).ready(function(){
													var editor = CKEDITOR.replace( 'noidung_vi',{
														uiColor : '#9AB8F3',    
														language:'en',
														skin:'moono',
														width:$('.col-lg-10').innerWidth()-40,
														height: 300,
														filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?Type=Images',
														filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?Type=Flash',
														filebrowserLinkBrowseUrl : 'ckfinder/ckfinder.html',
														
														filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
														filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',	
														filebrowserLinkUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload',	
													});
												})
											</script>
										</div>
									</div>
                                    -->	
								</div>
							</div>
						</div>
					</div>
					
                    <!--
					<div class="panel panel-default">
						<div class="panel-heading">Hình ảnh</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Photo</b></div>
										<div class="col-lg-6">
											<?php if($item['thumb']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_faqs_l.$item['thumb'].'" width="150" />';}?>
											<input type="file" name="photo" />
										</div>
										<div class="col-lg-2"><b>.jpg | .png | .gif</b></div>
										<div class="col-lg-2"><b>(200 x 150px)</b></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Alt</b></div>
										<div class="col-lg-8"><input type="text" name="alt" value="<?=$item['alt']?>" class="form-control" /></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					-->
                    <!--
					<div class="panel panel-default">
						<div class="panel-heading">Seo</div>
						 <div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Title</b></div>
										<div class="col-lg-8"><input type="text" name="title_vi" value="<?=$item['title_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Keywords</b></div>
										<div class="col-lg-8"><textarea name="keywords_vi" rows="3" class="form-control"><?=$item['keywords_vi']?></textarea></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Description</b></div>
										<div class="col-lg-8"><textarea name="description_vi" rows="3" class="form-control"><?=$item['description_vi']?></textarea></div>
									</div>
								</div>
							</div>
						</div>
					</div>
                    -->
				</div><!-- end #vi -->
				<!--<div class="tab-pane fade" id="en">
					<div class="panel panel-default">
						<div class="panel-heading">Bài viết</div>
						 <div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên (EN)</b></div>
										<div class="col-lg-8"><input type="text" name="ten_en" value="<?=$item['ten_en']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Mô tả (EN)</b></div>
										<div class="col-lg-8"><textarea name="mota_en" rows="5" class="form-control"><?=$item['mota_en']?></textarea></div>
									</div>
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Nội dung (EN)</b></div>
										<div class="col-lg-10">
											<textarea name="noidung_en" rows="5" class="form-control"><?=$item['noidung_en']?></textarea>
											<script type="text/javascript">
												$(document).ready(function(){
													var editor = CKEDITOR.replace( 'noidung_en',{
														uiColor : '#9AB8F3',    
														language:'en',
														skin:'moono',
														width:$('.col-lg-10').innerWidth()-40,
														height: 300,
														filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?Type=Images',
														filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?Type=Flash',
														filebrowserLinkBrowseUrl : 'ckfinder/ckfinder.html',
														
														filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
														filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',	
														filebrowserLinkUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload',	
													});
												})
											</script>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">Seo</div>
						 <div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Title (EN)</b></div>
										<div class="col-lg-8"><input type="text" name="title_en" value="<?=$item['title_en']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Keywords (EN)</b></div>
										<div class="col-lg-8"><textarea name="keywords_en" rows="3" class="form-control"><?=$item['keywords_en']?></textarea></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Description (EN)</b></div>
										<div class="col-lg-8"><textarea name="description_en" rows="3" class="form-control"><?=$item['description_en']?></textarea></div>
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
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=faqs&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>