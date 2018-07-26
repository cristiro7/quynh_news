<script type="text/javascript">
tinyMCE.init({
	// General options
	mode : "exact",
    elements : "noidung_vi,noidung_en",
	theme : "advanced",
	convert_urls : false,
	plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,imagemanager,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",
    height:"400px",
    width:"100%",
    remove_script_host : false,

	// Theme options
	theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
	theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
	theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	theme_advanced_statusbar_location : "bottom",
	theme_advanced_resizing : true,

	// Example content CSS (should be your site CSS)


	// Drop lists for link/image/media/template dialogs
	template_external_list_url : "lists/template_list.js",
	external_link_list_url : "lists/link_list.js",
	external_image_list_url : "lists/image_list.js",
	media_external_list_url : "lists/media_list.js",

	// Style formats
	style_formats : [
		{title : 'Bold text', inline : 'b'},
		{title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},
		{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
		{title : 'Example 1', inline : 'span', classes : 'example1'},
		{title : 'Example 2', inline : 'span', classes : 'example2'},
		{title : 'Table styles'},
		{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
	],

	// Replace values for the template plugin
	template_replace_values : {
		username : "Some User",
		staffid : "991234"
	}
});
</script>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=product&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />

			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Sản phẩm</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Danh mục cấp 1</b></div>
										<div class="col-lg-8"><?=get_select_list($_REQUEST['id_list'],'product_list','id_list')?></div>
									</div>

                                    <!--
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Danh mục cấp 2</b></div>
										<div class="col-lg-8"><?php // get_select_list($_REQUEST['id_cat'],'product_cat','id_cat','id_list',$_REQUEST['id_list']); ?></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Danh mục cấp 3</b></div>
										<div class="col-lg-8"><?php //get_select_list($_REQUEST['id_item'],'product_item','id_item','id_cat',$_REQUEST['id_cat'])?></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Nhà sản xuất</b></div>
										<div class="col-lg-8"><?php /* get_select_list($_REQUEST['id_provider'],'product_provider','id_provider'); */?></div>
									</div>

                                    <div class="form-group row">
										<div class="col-lg-2"><b>Size sản phẩm</b></div>
										<div class="col-lg-8"><?=get_team_list($item['id'],'size')?></div>
									</div>

                                    <div class="form-group row">
										<div class="col-lg-2"><b>Màu sản phẩm</b></div>
										<div class="col-lg-8"><?=get_team_list($item['id'],'color')?></div>
									</div>
                                    -->

									<div class="form-group row">
										<div class="col-lg-2"><b>Tên</b></div>
										<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Mã SP</b></div>
										<div class="col-lg-8"><input type="text" name="code" value="<?=$item['code']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Giá SP</b></div>
										<div class="col-lg-3">
											<div class="input-group"><input type="text" name="price" value="<?=$item['price']?>" class="form-control" /><span class="input-group-addon">Đ</span></div>
										</div>
                                        <div class="col-lg-2 col-lg-offset-1"><b>Đơn vị</b></div>
										<div class="col-lg-3">
											<div class="input-group">
                                                <select name="unit" class="form-control">
                                                    <option <?php echo ($item['unit'] == 'kg') ? 'selected="selected"' : ""; ?> value="kg">1 kg</option>
                                                    <option <?php echo ($item['unit'] == 'goi200g') ? 'selected="selected"' : ""; ?> value="goi200g">Gói 200gr</option>
                                                    <option <?php echo ($item['unit'] == 'hop150g') ? 'selected="selected"' : ""; ?> value="hop150g">Hộp 150gr</option>
                                                    <option <?php echo ($item['unit'] == 'chai250ml') ? 'selected="selected"' : ""; ?> value="chai250ml">Chai 250ml</option>
                                                    <option <?php echo ($item['unit'] == 'chai500ml') ? 'selected="selected"' : ""; ?> value="chai500ml">Chai 500ml</option>
                                                </select>
                                            </div>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Giá KM</b></div>
										<div class="col-lg-3">
											<div class="input-group"><input type="text" name="sale" value="<?=$item['sale']?>" class="form-control" /><span class="input-group-addon">%</span></div>
										</div>
									</div>
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Mô tả</b></div>
										<div class="col-lg-8"><textarea name="mota_vi" rows="5" class="form-control"><?=$item['mota_vi']?></textarea></div>
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
									<!--<div class="form-group row">
										<div class="col-lg-2"><b>Chọn loại Format</b></div>
										<div class="col-lg-3"><?php print get_type_format_list($item['type_format']); ?></div>
										<div class="col-lg-5">Nếu chọn <b>'Gallery Format' hoặc 'Slideshow Format'</b> thì bạn cần nhập <b>'Thêm ảnh'</b> cho sản phẩm</div>
									</div>-->

									<div class="form-group row">
										<div class="col-lg-2"><b>Photo</b></div>
										<div class="col-lg-5">
											<?php if($item['thumb1']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_product_l.$item['thumb1'].'" width="150" />';}?>
											<input type="file" name="photo" />
										</div>
										<div class="col-lg-3"><?php print _default_type; ?></div>
										<div class="col-lg-2"><?php print _news_size_3; ?></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Alt</b></div>
										<div class="col-lg-8"><input type="text" name="alt" value="<?=$item['alt']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Video</b></div>
										<div class="col-lg-3"><input type="text" name="video_link" value="<?=$item['video_link']?>" class="form-control" /></div>
										<div class="col-lg-5">https://www.youtube.com/watch?v=<b class="red">o9ErTB-nRJA</b></div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">Nội dung</div>
						<div class="panel-body">
                            <div class="row">
								<div class="col-lg-12">
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Nội dung</b></div>
										<div class="col-lg-10">
        									<textarea id="noidung_vi" name="noidung_vi" rows="5" class="form-control"><?=$item['noidung_vi']?></textarea>
        								</div>
									</div>
                                </div>
                            </div>
							<!--
                            <ul id="productTab" class="nav nav-tabs">

								<li class="active"><a href="#tongquan" data-toggle="tab" class="btn btn-info" >Chi tiết</a></li>

								<li><a href="#hinhanh" data-toggle="tab" class="btn btn-info" >Hình ảnh</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">

								<div class="tab-pane fade in active" id="tongquan">
									<textarea name="noidung_vi" rows="5" class="form-control"><?=$item['noidung_vi']?></textarea>
									<script type="text/javascript">
										$(document).ready(function(){
											var editor = CKEDITOR.replace( 'noidung_vi',{
												uiColor : '#9AB8F3',
												language:'en',
												skin:'moono',
												width:'100%',
												height: 300,
												filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?Type=Images',
												filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?Type=Flash',
												filebrowserLinkBrowseUrl : 'ckfinder/ckfinder.html',

												filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
												filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
												filebrowserLinkUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload',
											}).config.entities = false;
										})
									</script>
								</div>

								<div class="tab-pane fade" id="hinhanh">
									<textarea name="images" rows="5" class="form-control"><?=$item['images']?></textarea>
									<script type="text/javascript">
										$(document).ready(function(){
											var editor = CKEDITOR.replace( 'images',{
												uiColor : '#9AB8F3',
												language:'en',
												skin:'moono',
												width:'100%',
												height: 300,
												filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?Type=Images',
												filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?Type=Flash',
												filebrowserLinkBrowseUrl : 'ckfinder/ckfinder.html',

												filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
												filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
												filebrowserLinkUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload',
											}).config.entities = false;
										})
									</script>
								</div>
							</div>
                            -->
						</div>
					</div>

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
				<input type="hidden" name="team[]" value="type" />
				<input type="submit" value="Lưu" class="btn btn-default" />
				<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=product&act=man'" class="btn btn-default" />
			</p>
		</form>
	</div>
</div>
<script>
    $(document).ready(function() {
		$('select.selectChange').change(function(){
			selectChange();
		});

		$('input[name="ten_vi"]').blur(function(){
			$.ajax({
				type: 'GET',
				url: 'ajax/changeName.php',
				data: 'value='+$(this).val(),
				success: function(result){
					$('input[name="tenkodau"]').val(result);
				}
			})

		});

    });

	function selectChange(){
		var link = 'http://<?=$config_url?>/admin/index.php?com=product&act=<?=$_REQUEST['act']?>';
		var links ='';
		$('select.selectChange').each(function(){
			links += '&'+$(this).attr('name')+'='+$(this).val();
		});
		link +=links+'&id=<?=$item['id']?>';
		location.href=link;
	}
</script>
