<?php
	$d->reset();	
	$sql = "select id,ten_$lang,tenkodau from #_product_provider where shows=1 order by numberic asc, id desc";
	$d->query($sql);
	$provider = $d->result_array();
	
	$d->reset();
	$sql = "select giaban from #_product where shows=1 order by giaban asc limit 0,1";
	$d->query($sql);
	$cost_small = $d->fetch_array();
	$cost_small = $cost_small['giaban'];
	
	if($cost_small<=500000){
		$cost_begin = 500000;
		
	}else{
		$cost_begin = 1000000;
	}
	$cost_begin1=$cost_begin;
	
	$d->reset();
	$sql = "select giaban from #_product where shows=1 order by giaban desc limit 0,1";
	$d->query($sql);
	$cost_large = $d->fetch_array();
	$cost_large = $cost_large['giaban'];
	
	if($cost_large >= 10500000 && $cost_large <= 25000000){
		$cost_jump = 2000000;
	}elseif($cost_large > 25000000){
		$cost_jump = 4000000;
	}else{
		$cost_jump = 2000000;
	}
	
?>
<div class="navbar navbar-multi-search navbar-default yamm">
	<div class="navbar-header"><button type="button" data-toggle="collapse" data-target="#navbar-search-grid" class="navbar-toggle"><i class="fa fa-search fa-fw"></i></button></div>	
	<div class="lbl-search"></div>
	<div id="navbar-search-grid" class="navbar-collapse collapse">
		<form method="get" action="index.php" id="frm-search">
			<input type="hidden" name="com" value="search" />
			<ul class="nav navbar-nav">
				<li><input type="text" name="key" id="key" class="form-control" placeholder="Tên sản phẩm" /></li>
				<li>
					<select name="nsx" id="nsx" class="form-control">
						<option value="" selected>Hãng sản xuất</option>
						<?php
							for($i=1, $count = count($provider); $i<=$count; $i++){
								echo '<option value="'.$provider[$i-1]['id'].'">'.$provider[$i-1]['ten_'.$lang].'</option>';
							}
						?>
					</select>
				</li>
				<li>
					<select name="f-cost" id="f-cost" class="form-control">
						<option value="" selected>Giá từ</option>
						<?php for($i=0; $i<5; $i++){
							$cost_curr = $cost_begin1+$cost_jump;
							
						?>
						<option value="<?=$cost_begin1?>" > <?=number_format($cost_begin1,0,'',',').' vnđ'?></option>
						<?php $cost_begin1 = $cost_curr;} ?>
					</select>
				</li>
				<li>
					<select name="t-cost" id="t-cost" class="form-control">
						<option value="" selected>Giá đến</option>
						<?php for($i=0; $i<5; $i++){
							$cost_curr = $cost_begin+$cost_jump;
						?>
						<option value="<?=$cost_curr?>" > <?=number_format($cost_curr,0,'',',').' vnđ'?></option>
						<?php $cost_begin = $cost_curr;} ?>
					</select>
				</li>
				<li>
					<button type="button" class="btn" id="btn-search"> Tìm kiếm</button>
				</li>
			</ul>
		</form>
	</div>
</div>
<div class="clearfix"></div>
<script type="text/javascript">
	$(function(){
		$('#frm-search #btn-search').click(function(evt){
			onMultiSearch(evt);
		});
	});
	function onMultiSearch(evt){
		var key = $('#frm-search #key');
		var nsx = $('#frm-search #nsx');
		var fCost = $('#frm-search #f-cost');
		var tCost = $('#frm-search #t-cost');
		if(key.val()=='' && nsx.val()=='' && fCost.val()=='' && tCost.val()==''){alert('Bạn chưa nhập thông tin tìm kiếm!'); return false;}
		
		$('#frm-search').submit();
		
		
	}
	
	function doEnter(evt){
	// IE					// Netscape/Firefox/Opera
	var key;
	if(evt.keyCode == 13 || evt.which == 13){
		onSearch(evt);
	}else{
		return false;	
	}
	}
</script>