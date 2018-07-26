<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	function remove_product($pid){
			$pid=intval($pid);
			$max=count($_SESSION['compare']);
			for($i=0;$i<$max;$i++){
				if($pid==$_SESSION['compare'][$i]['productid']){
					unset($_SESSION['compare'][$i]);
					break;
				}
			}
			$_SESSION['compare']=array_values($_SESSION['compare']);
	}

	function product_exists($pid){
		$pid=intval($pid);
		$max=count($_SESSION['compare']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['compare'][$i]['productid']){
				$flag=1;
				break;
			}
		}
		return $flag;
	}
	
	
	if($_REQUEST['type']=='minus' && $_REQUEST['id']>0){
		$id=$_POST['id'];
		settype($id,"int");
		remove_product($id);
	}else if($_REQUEST['type']=='remove'){
		unset($_SESSION['compare']);
	}else if($_REQUEST['type']=='add' && $_REQUEST['id']>0){
				
				$id=$_POST['id'];
				settype($id,"int");
				if(is_array($_SESSION['compare'])){
					if(product_exists($id)) return;
					$max=count($_SESSION['compare']);
					if($max >= 3) {
						for($i=0;$i<$max-1;$i++){
							$_SESSION['compare'][$i]['productid'] = $_SESSION['compare'][$i+1]['productid'];	
						}
						$_SESSION['compare'][$max-1]['productid']=$id;
					}else $_SESSION['compare'][$max]['productid']=$id;
				}
				else{
					$_SESSION['compare']=array();
					$_SESSION['compare'][0]['productid']=$id;
				}
				
				
	}
	
	echo '1';
?>