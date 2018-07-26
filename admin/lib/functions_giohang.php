<?php
	function get_product_img($pid,$url,$config_url){
		global $d;
		$sql = "select thumb,alt from #_product where id=$pid";
		$d->query($sql);
		$row = $d->fetch_array();

		return '<img src="http://'.$config_url.'/'.$url.$row['thumb'].'" style="width: 70px; height: auto;" alt="'.$row['alt'].'" />';
	}
	
	function get_product_name($pid,$lang){
		global $d,$config_url;
		$sql = "select id,ten_$lang as ten,tenkodau from #_product where id=$pid";
		$d->query($sql);
		$row = $d->fetch_array();

		return '<a href="http://'.$config_url.'/san-pham/'.$row['tenkodau'].'.html" style="font-weight: bold;" class="transitionAll" >'.$row['ten'].'</a>';
	}
	
	function get_quick_basket($pid,$lang,$url,$config_url,$q){
		global $d, $row;
		$sql = "select id,ten_$lang as ten,thumb,alt from #_product where id=$pid";
		$d->query($sql);
		$row = $d->fetch_array();
		
		$hinhanh = $row['thumb'];

		$data='';
		$data.='<div class="box-basket">';
		$data.='<div class="box-basket-img"><img src="http://'.$config_url.'/'.$url.$hinhanh.'" alt="'.$row['alt_img'].'"></a></div>';
		$data.='<div class="box-basket-name"><h3>'.$row['ten'].'</h3></div>';
		$data.='<div class="box-basket-mota">Số lượng: '.$q.' | Giá bán: '.number_format(get_price($pid)*$q,0, ',', '.').' vnđ</div>';
		$data.='</div>';
		return $data;
	}
	
	
	function get_price($pid){
		global $d, $row,$price;
		$sql = "select price,sale from table_product where id=$pid";
		$d->query($sql);
		$row = $d->fetch_array();
		
		if($row['price'] !=0 && $row['sale'] == 0){
		  $price = $row['price'];
		}
        elseif($row['sale'] != 0){
		  $save_price = ($row['price']*$row['sale'])/100;
		  $special_price = $row['price']-$save_price;
		  $price =  $special_price;	
		}
		
		return $price;
	}
	function remove_product($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				unset($_SESSION['cart'][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
	}
	function get_order_total(){
	    // VAT 5%;
        $vat = 0.05;
		$max=count($_SESSION['cart']);
		$sum=0;
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=$_SESSION['cart'][$i]['qty'];
			$price=get_price($pid);
			$sum+=$price*$q;
		}
        if($vat != 0) {
            $sum = $sum + $sum*$vat;
        }
		return $sum;
	}
	
	function get_total(){
		$max= isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
		$sum=0;
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=$_SESSION['cart'][$i]['qty'];
			$sum+=$q;
		}
		return $sum;
	}
	
	function addtocart($pid,$q,$size,$color){
		if($pid<1 or $q<1) return;
		
		if(isset($_SESSION['cart']) && is_array($_SESSION['cart'])){
			if(product_exists($pid,$q,$size,$color)) return;
			$max=count($_SESSION['cart']);
			$_SESSION['cart'][$max]['productid']=$pid;
			$_SESSION['cart'][$max]['qty']=$q;
			
		}
		else{
			$_SESSION['cart']=array();
			$_SESSION['cart'][0]['productid']=$pid;
			$_SESSION['cart'][0]['qty']=$q;
		}
	}
	function product_exists($pid,$q,$size,$color){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				$_SESSION['cart'][$i]['qty'] +=$q;
				$flag=1;
				break;
			}
		}
		return $flag;
	}
?>
