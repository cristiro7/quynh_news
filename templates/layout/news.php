<?php
	$d->reset();
	$sql = "select id,ten_$lang,tenkodau from #_news_list where shows=1 and shows_tab=1 order by numberic asc, id desc";
	$d->query($sql);
	$news_list = $d->result_array();
	
	$d->reset();
	$sql = "select id,ten_$lang,tenkodau,thumb,alt from #_news where shows=1 and shows_index=1 order by rand() limit 0,3";
	$d->query($sql);
	$news_hot = $d->fetch_array();
?>
<div id="news" class="row">
	<div id="newsTabTitle" class="col-sm-12">
		
		<div class="news-hot col-sm-5"><p class="rmp"><span class="fw-bold yellow">Tiêu biểu: </span> <a href="http://<?=$config_url.'/tin-tuc/'.$news_hot['tenkodau']?>.html" class="transitionAll" title="<?=$news_hot['ten_'.$lang]?>" ><?=$news_hot['ten_'.$lang]?></a></p></div>
		<div class="col-sm-7">
			<ul id="newsTab" class="nav nav-tabs">
				<?php for($list =1,$count_list = count($news_list); $list<=$count_list;$list++){?>
				<li <?php if($list==1){echo 'class="active"';}?>><a href="#<?=$news_list[$list-1]['tenkodau']?>" data-toggle="tab" class="transitionAll" ><?=$news_list[$list-1]['ten_'.$lang]?></a></li>
				<?php } ?>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<div id="newsTabContent" class="tab-content">
		<?php for($list =1,$count_list = count($news_list); $list<=$count_list;$list++){
			
			$d->reset();
			$sql = "select id,ten_$lang,tenkodau,thumb,alt from #_news where shows_index=1 and id_list=".$news_list[$list-1]['id']." order by numberic asc, id desc limit 0,3";
			$d->query($sql);
			$news = $d->result_array();
			
		?>
		<div class="tab-pane fade <?php if($list==1){echo 'in active';}?>" id="<?=$news_list[$list-1]['tenkodau']?>">
			<?php for($i =1,$count = count($news); $i<=$count;$i++){?>
			<div class="col-sm-4">
				<div class="box-news">
					<div class="box-news-img transitionAll"><a href="http://<?=$config_url.'/tin-tuc/'.$news[$i-1]['tenkodau']?>.html"><img src="http://<?=$config_url.'/'._upload_news_l.$news[$i-1]['thumb']?>" alt="<?=$news[$i-1]['alt']?>" /></a></div>
					<div class="box-news-name"><a href="http://<?=$config_url.'/tin-tuc/'.$news[$i-1]['tenkodau']?>.html" class="transitionAll" ><?=$news[$i-1]['ten_'.$lang]?></a></div>
					<div class="box-news-readmore"><a href="http://<?=$config_url.'/tin-tuc/'.$news[$i-1]['tenkodau']?>.html" class="transitionAll"></a></div>
				</div>
			</div>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	
</div>