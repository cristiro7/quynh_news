<?php
	session_start();
	error_reporting(E_ALL & ~E_NOTICE & ~8192);
	@define ( '_lib' , '../admin/lib/');
	@define ( '_source' , '../sources/');
	include_once _lib."config.php";
	include_once _lib."constant.php";
	include_once _lib."functions.php";
	include_once _lib."class.database.php";
	$d = new database($config['database']);
	
	$email = $_POST['email'];

	//Kiem tra email dat mua hang nay da dang ky nhan tin chua
    $d->reset();
    $sql_kiemtra_mail = "select email,numberic from table_register_email where email='".$email."' limit 0,1";
    $d->query($sql_kiemtra_mail);
    $kiemtra_mail = $d->fetch_array();

    if($kiemtra_mail['email'] == '') {
        $data['email'] = $email;	
        $data['numberic'] = $kiemtra_mail['numberic']+1;
        $data['shows'] = 1;
        $data['date_create'] = time();
        $d->setTable('register_email');
        if($d->insert($data))
        {				
        	echo 1;
        }
        else {
        	echo -1;
        }
    } else {
        echo 0;
    }		
                     
?>