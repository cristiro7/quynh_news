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
			<div class="panel-heading">Thông tin đặt hàng</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dataTables-example">
						<thead>
							<tr>
								<th style="width: 5%;" ><input type="checkbox" name="select_all" id="select_all" /></th>
								<th style="width:5%">ID</th>
								<th style="width:15%;">Mã đơn hàng</th>	
								<th>Họ tên</th>
								<th style="width:15%;">Ngày đặt</th>
								<th style="width:10%;">Số tiền</th>
								<th style="width:15%;">Tình trạng</th>     
								<th style="width:5%;">Sửa</th>
								<th style="width:5%;">Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php for($i=1, $count=count($items); $i<=$count; $i++){?>
							<tr class="<?php if($i%2 !=0){echo 'odd';}else{echo 'even';}?> gradeA">
								<td><input type="checkbox" name="select" id="select" value="<?=$items[$i-1]['id']?>" class="select" /></td>
								<td><?=$items[$i-1]['id']?></td>
								<td><?=$items[$i-1]['madonhang']?></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=order&act=edit&id=<?=$items[$i-1]['id']?>" ><?=$items[$i-1]['hoten_nn']?></a></td>
								<td><?=date('d/m/Y',$items[$i-1]['ngaytao'])?></td>
								<td><?=number_format($items[$i-1]['tonggia'],0, ',', '.')?>&nbsp;VNĐ</td>
								<td>
									<?php 
										$sql="select trangthai from #_trangthai where id= '".$items[$i-1]['id_trangthai']."' ";
										$d->query($sql);
										$result=$d->fetch_array();
										echo $result['trangthai'];
									?>
								</td>
								
								<td><a href="http://<?=$config_url?>/admin/index.php?com=order&act=edit&id=<?=$items[$i-1]['id']?>" ><i class="fa fa-pencil fa-lg"></a></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=order&act=delete&id=<?=$items[$i-1]['id']?>" onclick="if(!confirm('Xác nhận xóa')) return false;"><i class="fa fa-trash-o fa-lg"></a></td>
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
			if (hoi==true) document.location = "index.php?com=order&act=delete&listid=" + listid;
		});
        
    });
</script>