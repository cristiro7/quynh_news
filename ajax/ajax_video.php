<?php
    session_start();
    @define ( '_source' , '../sources/');
    @define ( '_lib' , '../admin/lib/');    
	
	$lang="vi";	//Lấy ngỗn ngữ

    require_once _source."lang_$lang.php";
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	@$id = $_GET['id'];
	settype($id,'int');
    $d->reset();
	$sql="select id,ten_$lang as ten,link from #_factory where id=".$id." and shows=1 order by numberic asc";
	$d->query($sql);
	$factory_about = $d->result_array();
?>
<iframe width="100%" height="162" src="//www.youtube.com/embed/<?=$factory_about[0]['link']?>?rel=0" frameborder="0" allowfullscreen></iframe>