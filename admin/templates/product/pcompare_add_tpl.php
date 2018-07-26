<?php
	$result = mysql_query("SELECT * FROM table_product_compare where shows=1 and id_list=".$_SESSION['id_list']." order by numberic,id desc");
	$categoryData = array();
	while ($row = mysql_fetch_array($result)) {
		 $categoryData[$row['id_parents']][$row['id']] = $row['ten_vi'];
	}
	mysql_free_result($result);


	$properties['id_compare'] = explode('<-||->',$item['id_compare']);
	$properties['noidung'] = explode('<-||->',$item['noidung']);
	//var_dump($properties);
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
		<form name="frm" method="post" action="http://<?=$config_url?>/admin/index.php?com=product&act=save_pcompare" enctype="multipart/form-data">
			<input type="hidden" name="id" id="id" value="<?=$item['id_product']?>" />
			
			<div class="panel panel-default">
				<div class="panel-heading">Thuộc tính so sánh</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<?=getcompareAdmin($categoryData,'0',$properties);?>
						</div>
					</div>
				</div>
			</div>
			
			<p>
			<input type="submit" value="Lưu" class="btn btn-default" />
			<input type="button" value="Thoát" onclick="javascript:window.location='http://<?=$config_url?>/admin/index.php?com=product&act=man_pcompare'" class="btn btn-default" />
			</p>
		</form>	
	</div>
</div>