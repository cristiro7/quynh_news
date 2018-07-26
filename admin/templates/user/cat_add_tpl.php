<?php
function permission($array='')
	{
		$array_dv=explode(",", $array);
				
		$sql="select * from table_user_permission where id!=11 order by id asc";
		$query=mysql_query($sql);		
		$str.='<select id="permission" name="permission[]" multiple="multiple">';
			while ($result=@mysql_fetch_array($query)) {
				
				if(  in_array($result['com'],$array_dv))
					$selected='selected="selected"';
				else 
					$selected="";
				$str.='<option value="'.$result["com"].'" '.$selected.' /> '.$result["ten"].'</option>';					
			}
		$str.='</select>';
		
		
		return $str;
	}
?>

<form name="frm" method="post" action="index.php?com=user&act=save_cat" enctype="multipart/form-data" class="nhaplieu">
	<h3>Thêm nhóm</h3>
	<table style="width:98%; border: none;margin: 1%;" >
    	<tr>
        	<td align="left">
				<b>Tên</b> <input type="text" name="ten" value="<?=$item['ten']?>" class="input" /><br />   
				<b>Quyền hạn</b><?=permission($item['permissions'])?><br/>
				<b>Số thứ tự</b> <input type="text" name="stt" value="<?=isset($item['stt'])?$item['stt']:1?>" style="width:30px"><br>
				<b>Hiển thị</b> <input type="checkbox" name="hienthi" <?=(!isset($item['hienthi']) || $item['hienthi']==1)?'checked="checked"':''?>><br />
				
            </td>
            
        </tr>
    </table>
	<br />		
	
	
	<input type="hidden" name="id" id="id" value="<?=@$item['id']?>" />
	<input type="submit" value="Lưu" class="btn" />
	<input type="button" value="Thoát" onclick="javascript:window.location='index.php?com=user&act=man_cat'" class="btn" />
</form>