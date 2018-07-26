<script>
$(document).ready(function(){
	$('#sl-news').change(function(){
		var id = $(this).val();
		if(id==''){
			$('.box-news').css({display: 'block'});return false;
		}
		$('.box-news').each(function(){
			
			if($(this).attr('rel') == id){
				$(this).css({display: 'block'});
			}else{
				$(this).css({display: 'none'});
			}
		})

	})
})
</script>
<?php
	$d->reset();
	$sql = "select id,ten_$lang,tenkodau,noidung_$lang from #_news where shows=1 and id_list=".$idl." order by numberic asc,id desc";
	$d->query($sql);
	$news = $d->result_array();
?>
<div id="info" class="col-sm-9">
	
	<div class="row news">
		<div class="i-title">
			<ul>
			<?php for($list =1,$count_list = count($news_list_bar); $list<=$count_list;$list++){?>
				<li <?php if($news_list_bar[$list-1]['id'] == $news_list['id']){echo 'class="active"';}?>><a href="http://<?=$config_url.'/tin-tuc/'.$news_list_bar[$list-1]['tenkodau']?>/" class="transitionAll"><?=$news_list_bar[$list-1]['ten_'.$lang]?></a></li>
			<?php } ?>
			</ul>
		</div>
		<div class="i-content" style="margin: 10px 0px;">
			<div class="col-xs-4 col-sm-2"><h5>Chọn danh mục</h5></div>
			<div class="col-xs-8 col-sm-5">
				
				<select id="sl-news" class="form-control">
					<option value="" >-- Tất cả --</option>
					<?php for($i=1,$count = count($news); $i<=$count;$i++){?>
					<option value="<?=$news[$i-1]['id']?>" >
						<?=$news[$i-1]['ten_'.$lang]?>
					</option>
					<?php } ?>
				</select>
				
			</div>
		</div>
		<div class="i-content">
			<?php for($i=1,$count = count($news); $i<=$count;$i++){?>
			<div class="box-news" rel="<?=$news[$i-1]['id']?>">
				<h2><?=$news[$i-1]['ten_'.$lang]?></h2>
				<?=$news[$i-1]['noidung_'.$lang]?>
			</div>
			<?php } ?>
			
		</div>
	</div>
	
</div>