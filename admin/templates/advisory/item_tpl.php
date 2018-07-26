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
								<th style="width: 5%;" ><input type="checkbox" name="select_all" id="select_all" /></th>
								<th style="width: 6%;" >Stt</th>
								<th>Tên khách hàng</th>
								<th style="width: 10%;" >Email</th>
								<th style="width: 10%;">Số điện thoại</th>
								<th style="width: 20%;">Sản phẩm cần tư vấn</th>
								<th style="width: 10%;">Trạng thái</th>
								<th style="width: 8%;">Ngày gửi</th>
								<th style="width: 4%;">Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php for($i=1, $count=count($items); $i<=$count; $i++){?>
							<tr class="<?php if($i%2 !=0){echo 'odd';}else{echo 'even';}?> gradeA">
								<td><input type="checkbox" name="select" id="select" value="<?=$items[$i-1]['id']?>" class="select" /></td>
								<td><?=$items[$i-1]['numberic']?></td>
								<td><?=$items[$i-1]['hoten']?></td>
								<td><?=$items[$i-1]['email']?></td>
								<td><?=$items[$i-1]['dienthoai']?></td>
								<td><?=get_name_list($items[$i-1]['id_product'], 'product')?></td>
								<td>
								<?php if($items[$i-1]['shows']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=advisory&act=man&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=advisory&act=man&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
								
								<td><?=date('d-m-Y', $items[$i]['date_create'])?></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=advisory&act=delete&id=<?=$items[$i-1]['id']?>" onclick="if(!confirm('Xác nhận xóa')) return false;"><i class="fa fa-trash-o fa-lg"></a></td>
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
		
		<a href="#" id="delete_all" class="btn btn-default" >Xóa hết</a>
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
			if (hoi==true) document.location = "index.php?com=advisory&act=delete&listid=" + listid;
		});
        
    });
</script>