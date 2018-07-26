<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=setting&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Thông tin chung</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Ngôn ngữ mặc định</b></div>
										<div class="col-lg-8"><input type="radio" value="vi" name="lang" <?php if($item['lang'] == 'vi' || $item['lang'] == ''){echo 'checked="checked"';}?> /> Việt Nam </div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên công ty</b></div>
										<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Địa chỉ</b></div>
										<div class="col-lg-8"><input type="text" name="address_vi" value="<?=$item['address_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Hotline</b></div>
										<div class="col-lg-8"><input type="text" name="hotline" value="<?=$item['hotline']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Điện thoại</b></div>
										<div class="col-lg-8"><input type="text" name="phone" value="<?=$item['phone']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Fax</b></div>
										<div class="col-lg-8"><input type="text" name="fax" value="<?=$item['fax']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Email</b></div>
										<div class="col-lg-8"><input type="text" name="email" value="<?=$item['email']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Website</b></div>
										<div class="col-lg-8"><input type="text" name="website" value="<?=$item['website']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Fanpage</b></div>
										<div class="col-lg-8"><input type="text" name="fanpage" value="<?=$item['fanpage']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Copy right</b></div>
										<div class="col-lg-8"><input type="text" name="copy_right" value="<?=$item['copy_right']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Google maps</b></div>
										<div class="col-lg-8"><input type="text" name="googlemaps" class="form-control" value="<?=$item['googlemaps']?>" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Geo Meta Tags</b></div>
										<div class="col-lg-8"><textarea name="geos" rows="3" class="form-control"><?=$item['geos']?></textarea></div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">Hình ảnh</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Logo + Banner</b></div>
										<div class="col-lg-4">
											<?php if($item['logo']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_hinhanh_l.$item['logo'].'" width="300" />';}?>
											<input type="file" name="logo" />
										</div>
										<div class="col-lg-4"><?php print _news_type; ?></div>
										<div class="col-lg-2">(314 x 124px)</div>
									</div>
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Favicon</b></div>
										<div class="col-lg-4">
											<?php if($item['favicon']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_hinhanh_l.$item['favicon'].'" width="40" />';}?>
											<input type="file" name="favicon" /></div>
										<div class="col-lg-4">.ico | .png</div>
										<div class="col-lg-2">(64 x 64px)</div>
									</div>	
								</div>
							</div>
						</div>
					</div>
                    
<!--                    <div class="panel panel-default">-->
<!--						<div class="panel-heading">Popup Trang chủ</div>-->
<!--						<div class="panel-body">-->
<!--							<div class="row">-->
<!--								<div class="col-lg-12">-->
<!--									-->
<!--									<div class="form-group row">-->
<!--										<div class="col-lg-2"><b>Popup image</b></div>-->
<!--										<div class="col-lg-4">-->
<!--											--><?php //if($item['popup_image']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_hinhanh_l.$item['popup_image'].'" width="500" />';}?>
<!--											<input type="file" name="popup_image" />-->
<!--										</div>-->
<!--										<div class="col-lg-4">--><?php //print _news_type; ?><!--</div>-->
<!--										<div class="col-lg-2">(950 x 477 px)</div>-->
<!--									</div>-->
<!--                                    -->
<!--                                    <div class="form-group row">-->
<!--										<div class="col-lg-2"><b>Link</b></div>-->
<!--										<div class="col-lg-8"><input type="text" name="popup_link" value="--><?//=$item['popup_link']?><!--" class="form-control" /></div>-->
<!--									</div>-->
<!--                                    -->
<!--                                    <div class="form-group row">-->
<!--										<div class="col-lg-2"><b>Tiêu đề</b></div>-->
<!--										<div class="col-lg-8"><input type="text" name="popup_title" value="--><?//=$item['popup_title']?><!--" class="form-control" /></div>-->
<!--									</div>	-->
<!--								</div>-->
<!--							</div>-->
<!--						</div>-->
<!--					</div>-->
                    
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
				</div><!-- end #vi -->
				<!--<div class="tab-pane fade" id="en">
					<div class="panel panel-default">
						<div class="panel-heading">Thông tin chung</div>
						 <div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Tên công ty (EN)</b></div>
										<div class="col-lg-8"><input type="text" name="ten_en" value="<?=$item['ten_en']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Địa chỉ (EN)</b></div>
										<div class="col-lg-8"><input type="text" name="address_en" value="<?=$item['address_en']?>" class="form-control" /></div>
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
			
			<input type="submit" value="Lưu" class="btn btn-default" />
			
		</form>	
	</div>
</div>