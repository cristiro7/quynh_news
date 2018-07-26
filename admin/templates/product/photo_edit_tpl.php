<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=product&act=save_photo" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">

					<div class="panel panel-default">
						<div class="panel-heading">
							<?php
								$sql="select ten_vi from table_product where id=".$_SESSION['id_product'];
								$result=mysql_query($sql);
								$product = mysql_fetch_array($result);
								echo '<a href="index.php?com=product&act=man">'.$product['ten_vi'].'</a>';
							?>
						</div>
						<div class="panel-body">
							
							<div class="row">
								<div class="col-lg-12">
									
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
					</div>
	
				</div>
			   
			</div>
			
			<p>
				<input type="submit" value="Lưu" class="btn btn-default" />
				<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=product&act=man_photo'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>
