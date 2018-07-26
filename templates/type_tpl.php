<div id="info" class="col-sm-9">
	
	<div class="row product">
		<div class="i-title"><h3><?=$title_bar?></h3>
			<p>View <i class="fa fa-tasks fa-fw transitionAll" id="view-inline"></i> <i class="fa fa-th-large fa-fw transitionAll active" id="view-block"></i></p>
		</div>
		<div class="i-content col-sm-12">
			<?php if($products){?>
			<div class="bg-product col-sm-12">
				<?php for($i=1, $count = count($products);$i<=$count;$i++) { ?>
				<div class="col-sm-3 box-sp <?php if($i%4==0){echo 'box-sp-right';}?>">
					<h3 class="sp-name"><a href="http://<?=$config_url.'/san-pham/'.$products[$i-1]['tenkodau']?>.html" class="transitionAll"><?=$products[$i-1]['ten_'.$lang]?></a></h3>
					<p class="sp-img"><a href="http://<?=$config_url.'/san-pham/'.$products[$i-1]['tenkodau']?>.html" rel="http://<?=$config_url?>/ajax/description.php?id=<?=$products[$i-1]['id']?>" class="ajax_data" title="<?=$products[$i-1]['ten_'.$lang]?>"><img src="http://<?=$config_url.'/'._upload_product_l.$products[$i-1]['thumb']?>" /></a></p>
					<h3 class="sp-name-linear"><a href="http://<?=$config_url.'/san-pham/'.$products[$i-1]['tenkodau']?>.html" class=" transitionAll"><?=$products[$i-1]['ten_'.$lang]?></a></h3>
					<p class="sp-des"><?=$products[$i-1]['cauhinh']?></p>
					<p class="sp-price row">
						<?php
							if($products[$i-1]['giaban'] !=0 && $products[$i-1]['giakm'] == 0){
								echo '<span class="s-price">'.number_format($products[$i-1]['giaban'],0,'','.').'</span>';
							}elseif($products[$i-1]['giakm'] != 0){
								$save_price = ($products[$i-1]['giaban']*$products[$i-1]['giakm'])/100;
								$special_price = $products[$i-1]['giaban']-$save_price;
								echo '<span class="o-price col-sm-6">'.number_format($products[$i-1]['giaban'],0,'','.').'</span><span class="s-price col-sm-6">'.number_format($special_price,0,'','.').'</span>';	
							}else{echo '<span class="s-price">'._contact.'</span>';}
						?>
					</p>
				</div>
				<?php if($i%4==0){echo '<div class="clearfix"></div>';} if($i%4==0 && $i<$count){echo '</div><div class="bg-product col-sm-12">';} } ?>
			</div>
			<div class="col-sm-12 paging"><?=$paging['paging']?></div>
			<?php } ?>
		</div>
	</div>
	
</div>
