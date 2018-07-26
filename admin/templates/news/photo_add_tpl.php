<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=news&act=save_photo" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="vi">
					<div class="panel panel-default">
						<div class="panel-heading">
							<?php
								$sql="select ten_vi from table_news where id=".$_SESSION['id_news'];
								$result=mysql_query($sql);
								$news = mysql_fetch_array($result);
								echo '<a href="index.php?com=news&act=man">'.$news['ten_vi'].'</a>';
							?>
						</div>
						<div class="panel-body">
							<?php for($i=1; $i<=5; $i++){?>
							<div class="row">
								<div class="col-lg-12">
									
									<div class="form-group row">
										<div class="col-lg-2"><b>Photo <?=$i?></b></div>
										<div class="col-lg-5">
											<input type="file" name="photo<?=$i?>" />
										</div>
										<div class="col-lg-3"><?php print _default_type; ?></div>
										<div class="col-lg-2"><?php print _news_size_3; ?></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Alt</b></div>
										<div class="col-lg-8"><input type="text" name="alt<?=$i?>" class="form-control" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Số thứ tự</b></div>
										<div class="col-lg-8"><input type="text" name="numberic<?=$i?>" value="1" style="width:30px; text-align: center" /></div>
									</div>
									<div class="form-group row">
										<div class="col-lg-2"><b>Hiển thị</b></div>
										<div class="col-lg-8"><input type="checkbox" name="shows<?=$i?>" checked /></div>
									</div>
									
								</div>
							</div>
							<br/>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
			
			<p>
				<input type="submit" value="Lưu" class="btn btn-default" />
				<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=$news&act=man_photo'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>
