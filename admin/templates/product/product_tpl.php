<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?=$title?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

	<div class="col-lg-12" style="margin-bottom: 20px;">
		<div class="col-lg-1 rmp"><span style="line-height: 34px;">Cấp 1</span></div>
		<div class="col-lg-3"><?=get_select_list($_REQUEST['id_list'],'product_list','id_list')?></div>
		<!--
        <div class="col-lg-1 rmp"><span style="line-height: 34px;">Cấp 2</span></div>
		<div class="col-lg-3"><?php //get_select_list($_REQUEST['id_cat'],'product_cat','id_cat','id_list',$_REQUEST['id_list'])?></div>
		<div class="col-lg-1 rmp"><span style="line-height: 34px;">Cấp 3</span></div>
		<div class="col-lg-3"><?php //get_select_list($_REQUEST['id_item'],'product_item','id_item','id_cat',$_REQUEST['id_cat'])?></div>
        -->
	</div>
	
	<div class="col-lg-12">
		<a href="http://<?=$config_url?>/admin/index.php?com=product&act=add" class="btn btn-default" >Thêm mới</a>
		<!--<a href="#" id="copy_all" class="btn btn-default" >Copy</a>-->
		<a href="#" id="delete_all" class="btn btn-default" >Xóa hết</a>
	</div>
</div><br/>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Sản phẩm (Gallery)</div>
			<!-- /.panel-heading -->
			
			<div class="panel-body">	
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dataTables-example">
						<thead>
							<tr>
								<th style="width: 2%;"><input type="checkbox" name="select_all" id="select_all" /></th>
								<th style="width: 2%;">Stt</th>
								<th style="width: 18%;">Tên</th>
								<th style="width: 10%;">Hình ảnh</th>
								<th style="width: 15%;">Giá bán</th>
                                <th style="width: 5%;">Bán chạy</th>
                                <th style="width: 5%;">Mới</th>
                                <th style="width: 5%;">Ưa chuộng</th>
								<th style="width: 5%;">Hiển thị</th>
								<th style="width: 7%;">Thêm ảnh</th>
								<th style="width: 2%;">Sửa</th>
								<th style="width: 2%;">Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php for($i=1, $count=count($items); $i<=$count; $i++){?>
							<tr class="<?php if($i%2 !=0){echo 'odd';}else{echo 'even';}?> gradeA">
								<td><input type="checkbox" name="select" id="select" value="<?=$items[$i-1]['id']?>" class="select" /></td>
								<td><?=$items[$i-1]['numberic']?></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=edit&id_list=<?=$items[$i-1]['id_list']?>&id_cat=<?=$items[$i-1]['id_cat']?>&id_item=<?=$items[$i-1]['id_item']?>&id_provider=<?=$items[$i-1]['id_provider']?>&id=<?=$items[$i-1]['id']?>" ><?=$items[$i-1]['ten_vi']?></a></td>
								<td><?php if($items[$i-1]['photo']){?><a href="http://<?=$config_url?>/admin/index.php?com=product&act=edit&id_list=<?=$items[$i-1]['id_list']?>&id_cat=<?=$items[$i-1]['id_cat']?>&id_item=<?=$items[$i-1]['id_item']?>&id_provider=<?=$items[$i-1]['id_provider']?>&id=<?=$items[$i-1]['id']?>" ><img src="http://<?=$config_url.'/'._upload_product_l.$items[$i-1]['thumb']?>" height="50" /><?php } ?></a></td>
								<td>
									<?php
										if($items[$i-1]['price'] !=0 && $items[$i-1]['sale'] == 0){
											echo '<span class="s-price">'.number_format($items[$i-1]['price'],0,'','.').' vnđ</span>/'.getUnit($items[$i-1]['unit']);
										}elseif($items[$i-1]['sale'] != 0){
											$save_price = ($items[$i-1]['price']*$items[$i-1]['sale'])/100;
											$special_price = $items[$i-1]['price']-$save_price;
											echo '<span class="s-price col-sm-6">'.number_format($special_price,0,'','.').' vnđ</span>/'.getUnit($items[$i-1]['unit']);
                                            echo '<span class="s-price col-sm-6">'.$items[$i-1]['sale'].' % km</span>';	
										}else{echo '<span class="s-price">Chưa nhập</span>';}
									?>
								</td>
                                
                                <td>
								<?php if($items[$i-1]['shows_top']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_top=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_top=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
                                
                                <td>
								<?php if($items[$i-1]['shows_new']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_new=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_new=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
                                
                                <td>
								<?php if($items[$i-1]['shows_like']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_like=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows_like=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
                                
								<td>
								<?php if($items[$i-1]['shows']==1){?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-check-square-o fa-lg"></i></a>
								<?php }else{?>
									<a href="http://<?=$config_url?>/admin/index.php?com=product&act=man&shows=<?=$items[$i-1]['id']?>"><i class="fa fa-square-o fa-lg"></i></a>
								<?php } ?>
								</td>
                                
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=man_photo&id_product=<?=$items[$i-1]['id']?>"><i class="fa fa-file-photo-o fa-lg"></i> <b style="color: #ff0000;">(<?php print countPhoto($items[$i-1]['id']); ?> hình)</b></a></td>								 
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=edit&id_list=<?=$items[$i-1]['id_list']?>&id_cat=<?=$items[$i-1]['id_cat']?>&id_item=<?=$items[$i-1]['id_item']?>&id_provider=<?=$items[$i-1]['id_provider']?>&id=<?=$items[$i-1]['id']?>" ><i class="fa fa-pencil fa-lg"></a></td>
								<td><a href="http://<?=$config_url?>/admin/index.php?com=product&act=delete&id=<?=$items[$i-1]['id']?>" onclick="if(!confirm('Xác nhận xóa')) return false;"><i class="fa fa-trash-o fa-lg"></a></td>
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
			if (hoi==true) document.location = "index.php?com=product&act=delete&listid=" + listid;
		});
		
		$("#copy_all").click(function(){
			var listid="";
			$("input[name='select']").each(function(){
				if (this.checked) listid = listid+","+this.value;
			})
			listid=listid.substr(1);	 //alert(listid);
			if (listid=="") { alert("Bạn chưa chọn mục nào"); return false;}
			hoi= confirm("Bạn muốn thực hiện hành động này?");
			if (hoi==true) document.location = "index.php?com=product&act=copy&listid=" + listid;
		});
		
		$('select.selectChange').change(function(){
			selectChange();
		})
        
    });
	
	function selectChange(){
		var link = 'http://<?=$config_url?>/admin/index.php?com=product&act=man';
		var links ='';
		$('select.selectChange').each(function(){
			links += '&'+$(this).attr('name')+'='+$(this).val();
		});
		link +=links;
		location.href=link;
	}	
</script>
