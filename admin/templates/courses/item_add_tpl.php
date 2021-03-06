<script type="text/javascript">
tinyMCE.init({
	// General options
	mode : "exact",
    elements : "noidung_vi,noidung_en",
	theme : "advanced",
	convert_urls : false,
	plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,imagemanager,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",
    height:"400px",
    width:"90%",
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
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=courses&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Bài viết</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<!--<div class="form-group row">
										<div class="col-lg-2"><b>Danh mục cấp 1</b></div>
										<div class="col-lg-8"><?=get_select_list($_REQUEST['id_list'],'courses_list','id_list')?></div>
									</div>-->
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Tên</b></div>
										<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Mô tả</b></div>
										<div class="col-lg-8"><textarea name="mota_vi" rows="5" class="form-control"><?=$item['mota_vi']?></textarea></div>
									</div>
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Nội dung</b></div>
                                        <div class="col-lg-10">
        									<textarea id="noidung_vi" name="noidung_vi" rows="5" class="form-control"><?=$item['noidung_vi']?></textarea>
        								</div>
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
										<div class="col-lg-2"><b>Photo</b></div>
										<div class="col-lg-5">
											<?php if($item['thumb']!=NULL) {echo '<img src="http://'.$config_url.'/'._upload_news_l.$item['thumb'].'" width="'._news_size_1_w.'" />';}?>
											<input type="file" name="photo" />
										</div>
										<div class="col-lg-3"><b><?php print _default_type; ?></b></div>
										<div class="col-lg-2"><b><?php print _news_size_3; ?></b></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Alt</b></div>
										<div class="col-lg-8"><input type="text" name="alt" value="<?=$item['alt']?>" class="form-control" /></div>
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
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=courses&act=man'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>