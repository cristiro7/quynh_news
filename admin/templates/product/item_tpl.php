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
			<div class="panel-heading">Danh mục cấp 3</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dataTables-example">
						<thead>
							<tr>
								<th style="width: 5%;" ><input type="checkbox" name="select_all" id="select_all" /></th>
								<th style="width: 6%;" >Stt</th>
								<th>Tên</th>
								<!--<th style="width: 15%;" >Hình ảnh</th>-->
								<th style="width: 8%;">Hiển thị</th>
								<th style="width: 4%;">Sửa</th>
								<th style="width: 4%;">Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php for($i=1, $count=count($items); $i<=$count; $i++){?>
							<tr class="<?php if($i%2 !=0){echo 'odd';}else{echo 'even';}?> gradeA">
								<td><input type="checkbox" name="select" id="select" value="<?=$items[$i-1]['id']?>" class="select" /></td>
								<td><?=$items[$i-1]['numberic']?></td>
								
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=edit_item&id_list=<?=$items[$i-1]['id_list']?>&id_cat=<?=$items[$i-1]['id_cat']?>&id=<?=$items[$i-1]['id']?>" ><?=$items[$i-1]['ten_vi']?></a></td>
								<!--<td><?php if($items[$i-1]['photo']){?><a href="index.php?com=product&act=edit_item&id_list=<?=$items[$i-1]['id_list']?>&id=<?=$items[$i-1]['id']?>" ><img src="http://<?=$config_url.'/'._upload_product_l.$items[$i-1]['thumb']?>" height="50"><?php } ?></a></td>-->
								<td>
								<?php if($items[$i-1]['shows']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man_item&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man_item&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=edit_item&id_list=<?=$items[$i-1]['id_list']?>&id_cat=<?=$items[$i-1]['id_cat']?>&id=<?=$items[$i-1]['id']?>" ><i class="fa fa-pencil fa-lg"></a></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=delete_item&id=<?=$items[$i-1]['id']?>" onclick="if(!confirm('Xác nhận xóa')) return false;"><i class="fa fa-trash-o fa-lg"></a></td>
							</tr>
							<?php } ?>
							
						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
				
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
		<div class="row">
			
			<div class="col-lg-3">
				<a href="http://<?=$config_url?>/admin/index.php?com=product&act=add_item" class="btn btn-default" >Thêm mới</a>
				
				<a href="#" id="delete_all" class="btn btn-default" >Xóa hết</a>
			</div>
			<div class="col-lg-9">
				<div class="col-lg-2 rmp"><span style="line-height: 34px;">Danh mục cấp 1</span></div>
				<div class="col-lg-4"><?=get_select_list($_REQUEST['id_list'],'product_list','id_list')?></div>
				<div class="col-lg-2 rmp"><span style="line-height: 34px;">Danh mục cấp 2</span></div>
				<div class="col-lg-4"><?=get_select_list($_REQUEST['id_cat'],'product_cat','id_cat','id_list',$_REQUEST['id_list'])?></div>
			</div>
			
		</div>
	</div>
</div>

<script>
    $(document).ready(function() {
		$('#dataTables-example').dataTable( {
			"aoColumns": [
				{ "bSortable": false },
				null,
				{ "bSortable": false },
				{ "bSortable": false },
				{ "bSortable": false },
				{ "bSortable": false }
			]
		});
		
		$("#select_all").click(function(){
			var status=this.checked;
			$("input[name='select']").each(function(){this.checked=status;})
		});

		$("#delete_all").click(function(){
			var listid="";
			$("input[name='select']").each(function(){
				if (this.checked) listid = listid+","+this.value;
			})
			listid=listid.substr(1);	 //alert(listid);
			if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
			hoi= confirm("Bạn có chắc chắn muốn xóa?");
			if (hoi==true) document.location = "index.php?com=product&act=delete_item&listid=" + listid;
		});
		
		
		
		$('select.selectChange').change(function(){
			selectChange();
		})
        
    });
	
	function selectChange(){
		var link = 'http://<?=$config_url?>/admin/index.php?com=product&act=man_item';
		var links ='';
		$('select.selectChange').each(function(){
			links += '&'+$(this).attr('name')+'='+$(this).val();
		});
		link +=links;
		location.href=link;
	}
	
	
	
</script>
