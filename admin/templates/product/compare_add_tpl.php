<?php
	$result = mysql_query("SELECT * FROM table_product_compare");
	$categoryData = array();
	while ($row = mysql_fetch_array($result)) {
		 $categoryData[$row['id_parents']][$row['id']] = $row['ten_vi'];
	}
	mysql_free_result($result);
?>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=product&act=save_compare" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id']?>" />
			
			<div class="panel panel-default">
				<div class="panel-heading">Danh mục so sánh</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group row">
								<div class="col-lg-2"><b>Danh mục</b></div>
								<div class="col-lg-8">
									<select name="id_parents" id="id_parents" class="form-control selectChange">
										<option value="0">Danh mục chính</option>
										<?=getcat($item['id'],$item['id_parents'],$categoryData,'0');?>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-lg-2"><b>Tên</b></div>
								<div class="col-lg-8"><input type="text" name="ten_vi" value="<?=$item['ten_vi']?>" class="form-control" /></div>
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
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=product&act=man_compare'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>
