<?php  if(!defined('_source')) die("Error");

	$title = 'Sản phẩm - '.$setting['title_'.$lang];

    // Define class line for responsive
    $class_pc_line = array(
        '0' => 'first-in-line',
        '1' => '',
        '2' => 'last-in-line',
    );
    $class_tablet_line = array(
        '0' => 'first-item-of-tablet-line',
        '1' => 'last-item-of-tablet-line',
    );
    $class_mobile_line = array(
        '0' => 'first-item-of-mobile-line',
        '1' => 'last-item-of-mobile-line',
    );

	@$strList = trim($_GET['idl']);
	@$strDetail = trim($_GET['id']);

	$d->reset();
	if($strList){
		$urlList = $strList.'/';

		// Lấy id_list
		$d->reset();
		$sql = "select id,ten_$lang as ten,tenkodau, noidung_$lang as noidung, thumb, thumb1, alt,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_list where tenkodau ='".$strList."'";
		$d->query($sql);
		if($d->num_rows()>0){

			$product_list = $d->fetch_array();

			if($product_list['title']){$title = $product_list['title'];}
			if($product_list['description']){$description = $product_list['description'];}
			if($product_list['keywords']){$keywords = $product_list['keywords'];}

			$idl = $product_list['id'];
			$title_bar = $product_list['ten'];

			$d->reset();
			$sql ="select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 and id_list=$idl order by numberic asc,id desc";
			$d->query($sql);
			$products = $d->result_array();

            $total_product = count($products);

			$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
			$url = "http://$config_url/san-pham/$urlList";
			$maxR=12;
			$maxP=10;
			$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
			$products=$paging['source'];

		/*}else{

			// Lấy id_cat
			$d->reset();
			$sql = "select id,id_list,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_cat where tenkodau ='".$strList."'";
			$d->query($sql);
			if($d->num_rows()>0){

				$product_cat = $d->fetch_array();

				if($product_cat['title']){$title = $product_cat['title'];}
				if($product_cat['description']){$description = $product_cat['description'];}
				if($product_cat['keywords']){$keywords = $product_cat['keywords'];}

				$idc = $product_cat['id'];
				$title_bar = $product_cat['ten'];

				$d->reset();
				$sql = "select id,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_list where id =".$product_cat['id_list'];
				$d->query($sql);
				$product_list = $d->fetch_array();

				$d->reset();
				$sql ="select id,id_list,ten_$lang,tenkodau,thumb,photo,alt,chatlieu,giaban,giakm from #_product where shows=1 and id_cat=$idc order by numberic asc,id desc";
				$d->query($sql);
				$products = $d->result_array();
				$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
				$url = "http://$config_url/san-pham/$urlList";
				$maxR=24;
				$maxP=5;
				$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
				$products=$paging['source'];
			}else{
				// Lấy id_item
				$d->reset();
				$sql = "select id,id_list,id_cat,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_item where tenkodau ='".$strList."'";
				$d->query($sql);
				if($d->num_rows()>0){

					$product_item = $d->fetch_array();

					if($product_item['title']){$title = $product_item['title'];}
					if($product_item['description']){$description = $product_item['description'];}
					if($product_item['keywords']){$keywords = $product_item['keywords'];}

					$idi = $product_item['id'];
					$title_bar = $product_item['ten'];

					$d->reset();
					$sql = "select id,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_list where id =".$product_item['id_list'];
					$d->query($sql);
					$product_list = $d->fetch_array();

					$d->reset();
					$sql = "select id,id_list,ten_$lang as ten,tenkodau,title_$lang as title,description_$lang as description,keywords_$lang as keywords from #_product_cat where id =".$product_item['id_cat'];
					$d->query($sql);
					$product_cat = $d->fetch_array();

					$d->reset();
					$sql ="select id,id_list,ten_$lang as ten,tenkodau,thumb,photo,alt,chatlieu,giaban,giakm from #_product where shows=1 and id_item=$idi order by numberic asc,id desc";
					$d->query($sql);
					$products = $d->result_array();
					$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
					$url = "http://$config_url/san-pham/$urlList";
					$maxR=24;
					$maxP=5;
					$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
					$products=$paging['source'];
				}
			}*/
		}

	}elseif($strDetail){
		$sql_detail = "select id,id_list,id_cat,id_item,ten_$lang as ten,tenkodau, thumb1, thumb2, alt, price, sale, unit, shows_new, shows_sale, video_link, type_format, mota_$lang as mota, noidung_$lang as noidung, title_$lang as title, description_$lang as description, keywords_$lang as keywords, viewed, date_create from #_product where tenkodau='".$strDetail."'";
		$d->query($sql_detail);
		$product_detail = $d->fetch_array();

		if(!empty($_POST)){

			$data['hoten'] = $_POST['name'];
			$data['email'] = $_POST['email'];
			$data['dienthoai'] = $_POST['phone'];
			$data['id_product'] = $_POST['id_product'];

			$data['numberic'] = 1;
			$data['shows'] = 0;
			$data['date_create'] = time();

			$d->setTable('advisory');

			if($d->insert($data))
				transfer("Thông tin của bạn đã được gửi đi", "http://$config_url/san-pham/".$product_detail['tenkodau'].".html");
			else
				 transfer("Xin lỗi quý khách.<br>Hệ thống bị lỗi, xin quý khách thử lại.", "http://$config_url/san-pham/".$product_detail['tenkodau'].".html");

		}

		$title_bar = 'Chi tiết sản phẩm';

		$viewed = $product_detail['viewed']+1;
		$sql_update = "update #_product SET viewed=$viewed where id=".$product_detail['id'];
		$d->query($sql_update);

		$sharefb='<meta property="og:image" content="http://'.$config_url.'/'._upload_product_l.$product_detail['thumb1'].'"/>
		<meta property="og:title" content="'.$product_detail['ten'].'"/>
		<meta property="og:site_name" content="'.$setting['title_'.$lang].'"/>
		<meta property="og:url" content="http://'.$config_url.'/san-pham/'.$product_detail['tenkodau'].'.html"/>
		<meta property="og:description" content="'.strip_tags($product_detail['mota']).'" />';

		if($product_detail['title']){$title = $product_detail['title'];}
		if($product_detail['description']){$description = $product_detail['description'];}
		if($product_detail['keywords']){$keywords = $product_detail['keywords'];}

		$d->reset();
		$sql = "select id,thumb,thumb1,thumb2,photo,alt from #_product_photo where shows=1 and id_product=".$product_detail['id']." order by numberic asc, id desc";
		$d->query($sql);
		$products_photo = $d->result_array();

		$d->reset();
		if($product_detail['id_list'] !=0 && $product_detail['id_cat'] == 0 && $product_detail['id_item'] == 0){

			$sql_khac = "select id, id_list, ten_$lang as ten, tenkodau, thumb, thumb1, thumb2, alt, price, sale, unit from #_product where shows=1 and id!=".$product_detail['id']." and id_list=".$product_detail['id_list'];

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_list where id=".$product_detail['id_list'];
			$d->query($sql);
			$product_list = $d->fetch_array();

			//$navigation = '<a href="http://'.$config_url.'/">'._home.'</a> <i class="fa fa-angle-left"></i> <a href="http://'.$config_url.'/san-pham/'.$product_list['tenkodau'].'/">'.$product_list['ten'].'</a>';
		 /*
		}elseif($product_detail['id_cat'] != 0 && $product_detail['id_item'] == 0){

			$sql_khac = "select id,id_list,id_cat,ten_$lang as ten,tenkodau,photo,thumb,alt,chatlieu,giaban,giakm from #_product where shows=1 and id!=".$product_detail['id']." and id_cat=".$product_detail['id_cat'];

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_list where id=".$product_detail['id_list'];
			$d->query($sql);
			$product_list = $d->fetch_array();

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_cat where id=".$product_detail['id_cat'];
			$d->query($sql);
			$product_cat = $d->fetch_array();

			$navigation = '<a href="http://'.$config_url.'/">'._home.'</a> <i class="fa fa-angle-left"></i> <a href="http://'.$config_url.'/san-pham/'.$product_list['tenkodau'].'/">'.$product_list['ten'].'</a>  <i class="fa fa-angle-left"></i> <a href="http://'.$config_url.'/san-pham/'.$product_cat['tenkodau'].'/">'.$product_cat['ten'].'</a>';
		}elseif($product_detail['id_item'] != 0){
			$sql_khac = "select id,id_list,id_cat,ten_$lang as ten,tenkodau,photo,thumb,alt,chatlieu,giaban,giakm from #_product where shows=1 and id!=".$product_detail['id']." and id_cat=".$product_detail['id_cat'];

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_list where id=".$product_detail['id_list'];
			$d->query($sql);
			$product_list = $d->fetch_array();

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_cat where id=".$product_detail['id_cat'];
			$d->query($sql);
			$product_cat = $d->fetch_array();

			$d->reset();
			$sql = "select id,ten_$lang as ten,tenkodau from #_product_item where id=".$product_detail['id_item'];
			$d->query($sql);
			$product_item = $d->fetch_array();

			$navigation = '<a href="http://'.$config_url.'/">'._home.'</a>';
			$navigation .='<i class="fa fa-angle-left"></i>';
			$navigation .='<a href="http://'.$config_url.'/san-pham/'.$product_list['tenkodau'].'/">'.$product_list['ten'].'</a>';
			$navigation .='<i class="fa fa-angle-left"></i>';
			$navigation .='<a href="http://'.$config_url.'/san-pham/'.$product_cat['tenkodau'].'/">'.$product_cat['ten'].'</a>';
			$navigation .='<i class="fa fa-angle-left"></i>';
			$navigation .='<a href="http://'.$config_url.'/san-pham/'.$product_item['tenkodau'].'/">'.$product_item['ten'].'</a>';
		*/
		}else{
			$sql_khac = "select id, ten_$lang as ten, tenkodau, price, sale, unit, mota_$lang as mota, thumb2, alt from #_product where shows=1 and id!=".$product_detail['id'];
		}
		$sql_khac .=" order by numberic asc,id desc limit 0,6";
		$d->query($sql_khac);
		$products = $d->result_array();

	}else{
		$title_bar = 'Sản phẩm';
		$sql ="select id, ten_$lang as ten, tenkodau, price, sale, unit, shows_new, shows_sale, mota_$lang as mota, thumb2, alt from #_product where shows=1 order by numberic asc,id desc";
		$d->query($sql);
		$products = $d->result_array();

        $total_product = count($products);

		$curPage = isset($_GET['p']) ? $_GET['p'] : '1';
		$url = "http://$config_url/san-pham/";
		$maxR=12;
		$maxP=10;
		$paging=paging_home($products, $url, $curPage, $maxR, $maxP);
		$products=$paging['source'];
	}
?>
