<script type="text/javascript">
tinyMCE.init({
	// General options
	mode : "exact",
    elements : "contact,footer,certificate_quality",
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
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=info&act=save" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">Nội dung</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group row">
										<div class="col-lg-2"><b>Liên hệ</b></div>
										<div class="col-lg-10">
        									<textarea id="contact" name="contact" rows="5" class="form-control"><?=$item['contact']?></textarea>
        								</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Footer</b></div>
										<div class="col-lg-10">
        									<textarea id="footer" name="footer" rows="5" class="form-control"><?=$item['footer']?></textarea>
        								</div>
									</div>
                                    <div class="form-group row">
										<div class="col-lg-2"><b>Chứng chỉ chất lượng</b></div>
										<div class="col-lg-10">
        									<textarea id="certificate_quality" name="certificate_quality" rows="5" class="form-control"><?=$item['certificate_quality']?></textarea>
        								</div>
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