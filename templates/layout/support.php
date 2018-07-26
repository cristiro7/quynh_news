<?php
	
	$d->reset();
	$sql = "select ten_$lang,yahoo,skype,phone from #_support where shows=1 order by numberic asc,id desc";
	$d->query($sql);
	$support = $d->result_array();
?>
<script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
<div id="support" class="row">
	<?php for($i=1, $count = count($support); $i<=$count; $i++){?>
	<div class="col-xs-2">
		<?php
			if($support[$i-1]['yahoo']){echo '<p class="rmp" ><a href="ymsgr:sendim?'.$support[$i-1]['yahoo'].'"><img alt="'.$support[$i-1]['ten_'.$lang].'" src="http://opi.yahoo.com/online?u='.$support[$i-1]['yahoo'].'&amp;m=g&amp;t=2" width="90px" ></a></p>';}
			if($support[$i-1]['skype']){echo '<p class="rmp"><a href="skype:'.$support[$i-1]['skype'].'?chat"><img src="http://mystatus.skype.com/balloon/'.$support[$i-1]['skype'].'" width="90px" /></a></p>';}
			if($support[$i-1]['ten_'.$lang]){echo '<p class="rmp fw-bold fs-12">'.$support[$i-1]['ten_'.$lang].'</p>';}
		?>
	</div>
	<?php } ?>
</div>
