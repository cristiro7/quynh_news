<script type="text/javascript">
	$(function(){
		$('#search #btn').click(function(evt){
			onSearch(evt);
		});
	});
	function onSearch(evt){
		var keyword = $('#keyword');
		
		if( keyword.val() == ''){alert('Bạn chưa nhập thông tin tìm kiếm!'); keyword.focus(); return false;}
		
		$('#frm_header_search').submit();
		
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


<div id="search">
	<form  id="frm_header_search" name="frm_header_search" method="get" action="index.php">
		<input type="hidden" name="com" value="search" />
		<input type="text" name="keyword" id="keyword" class="element-search" value="<?=$_GET['keyword']?>" placeholder="<?=_search?>">
		<div id="btn"></div>
	</form>
</div>
<!-- #search -->