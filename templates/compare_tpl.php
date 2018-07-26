<div id="info" class="col-sm-12">
	
	<div class="row product">
		<div class="i-title"><h3><?=$title_bar?></h3></div>
		<div class="i-content col-sm-12">
			<div class="compare-category">
			<?php for($i=1, $count_list = count($pro_list); $i<=$count_list; $i++){?>
				<h2><input type="radio" name="type" value="<?=$pro_list[$i-1]['id']?>" <?php if($i==1){echo 'checked="checked"';}?>> <?=$pro_list[$i-1]['ten_'.$lang]?></h2>
			<?php } ?>
			</div>
			<div class="compare-device">
				<div class="compare-buttons col-xs-3 col-sm-3">
					<div class="btn btn-default btn-block" id="start-compare">So sánh</div>
					<div class="btn btn-default btn-block" id="remove-compare" type="remove">Gỡ bỏ</div>
				</div>
				<div class="compare col-xs-9 col-sm-9">
					
				</div>
			</div>
			
			<div class="compare-search">
				
				  <p class="lbl"><span>Chọn</span> sản phẩm </p>	
				  <input type="text" name="keyword" id="keyword" class="element-search" value="" placeholder="Từ khóa tìm kiếm">
				  <select id="idc" name="idc" class="element-search">
					
				  </select>
						  
				  <button id="compare-btn" class="btn">Tìm kiếm</button>
				  
				
			</div>
			
			<div class="compare-search-result">
				
			</div>
		</div>
	</div>	
</div>
<script>
	$(document).ready(function(){
		
		var id =  $('input[name="type"]').val();
		load_search_cat(id);
		$('.compare-category input').click(function(){
			var id =  $(this).val();
			load_search_cat(id);
		});
	
		$('#compare-btn').click(function(){	
			load_search();	
		});
		
		$('#remove-compare').click(function(){
			
			$.get('ajax/ajax_compare_session.php?type=remove');
			addBox();removeAll();	
		})
		
		addBox();
		
		$('#start-compare').click(function(){
			var id =  $('input[name="type"]').val();
			$.get('ajax/ajax_compare.php?lang=<?=$lang?>&id_list='+id, function(result){
			$('.compare-search-result').html(result);
			});	
		})
		
	})
	function load_search_cat(id){
		
		
		$.ajax({
			type: "POST",
			url: "ajax/ajax_compare_search_cat.php",
			data: "id="+id,
			success: function(result){
				
				$('select[name="idc"]').html(result);
			}
		})
	}

	function load_search(){

		var keyword = $('#keyword').val();
		var idc = $('#idc').val();
			
		if( keyword == '' && idc ==''){alert('Bạn chưa nhập thông tin tìm kiếm!'); keyword.focus(); return false;}
		
		$.ajax({
			type: "POST",
			url: "ajax/ajax_compare_search.php",
			data: "lang=<?=$lang?>&idc="+idc+"&keyword="+keyword+"&page=1",
			beforeSend: function(){
				$('<div class="loading" ><img src="images/loading.gif"></div>').appendTo('.compare-search-result');
			},
			success: function(result){
				if(result){
					$('.compare-search-result').html(result);
					Addtooltip();
					$("nav[role='page'] > a").live('click',function(){
						var page = $(this).attr('page');
						pagination(idc,keyword,page);
					});		
				}
				
			}
		})
	}

	function pagination(idc,keyword,page){
		
		$.ajax ({
			type: "POST",
			url: "ajax/ajax_compare_search.php",
			data: "idc="+idc+"&keyword="+keyword+"&page="+page,
			success: function(result) { 
				$('.compare-search-result').html(result);
				Addtooltip();
			}
		});
	}
	
	function Addtooltip(){
		$('.box-sp').each(function(){
			
			$(this).hover(function(){
				var curBox = $(this).find('.sp-compare');
				var add_compare = curBox.find('a');
				curBox.css({display: 'block'});
				add_compare.click(function(){
					
					var id = add_compare.attr('value');
					var type = add_compare.attr('type');
					if(type =='add'){
						curBox.addClass('.sp-compare-added');
					}else if(type =='minus'){
						removeBoxspcompareAdded(id);
					}
					$.ajax ({
						type: "POST",
						url: "ajax/ajax_compare_session.php",
						data: "id="+id+"&type="+type,
						success: function(result){
							if(result){
							
								addBox();
							}
						}
					});
				});
			
			},function(){
				var curBox = $(this).find('.sp-compare');
				curBox.css({display: 'none'});
			});
			
		})
		
	}
	
	function removeBoxspcompareAdded(newid){
		$('.box-sp').each(function(){
			var curBox = $(this).find('.sp-compare');
			var add_compare = curBox.find('a');
			var oldid = add_compare.attr('value');
			if(oldid == newid)curBox.removeClass('.sp-compare-added');
		})
	}
	
	function removeAll(){
		$('.box-sp').each(function(){
			$(this).find('.sp-compare').removeClass('.sp-compare-added');
		})
	}
	
	function addBox(){
		$.get('ajax/ajax_compare_add.php?lang=<?=$lang?>', function(result){
			$('.compare').html(result);
			Addtooltip();
		});
		
	}

</script>
