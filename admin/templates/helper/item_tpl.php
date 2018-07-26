<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Bài viết</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dataTables-example">
						<thead>
							<tr>
								<th>Tên</th>
								<th style="width: 4%;">Sửa</th>
							</tr>
						</thead>
						<tbody>
							<?php for($i=1, $count=count($items); $i<=$count; $i++){?>
							<tr class="<?php if($i%2 !=0){echo 'odd';}else{echo 'even';}?> gradeA">
								<td><a href="http://<?=$config_url?>/admin/index.php?com=helper&act=edit&id=<?=$items[$i-1]['id']?>" ><?=$items[$i-1]['type']?></a></td>								
								<td><a href="http://<?=$config_url?>/admin/index.php?com=helper&act=edit&id=<?=$items[$i-1]['id']?>" ><i class="fa fa-pencil fa-lg"></a></td>
							</tr>
							<?php } ?>
							
						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
				
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel
		<div class="row">
			<div class="col-lg-3">
				<a href="http://<?=$config_url?>/admin/index.php?com=helper&act=add" class="btn btn-default" >Thêm mới</a>
			</div>
		</div>
        -->
	</div>
</div>

<script>
    $(document).ready(function() {
		$('#dataTables-example').dataTable( {
			"aoColumns": [
				{ "bSortable": false },
				{ "bSortable": false }
			]
		});
		
		$('select.selectChange').change(function(){
			selectChange();
		})
        
    });
	
	function selectChange(){
		var link = 'http://<?=$config_url?>/admin/index.php?com=helper&act=man';
		var links ='';
		$('select.selectChange').each(function(){
			links += '&'+$(this).attr('name')+'='+$(this).val();
		});
		link +=links;
		location.href=link;
	}
</script>