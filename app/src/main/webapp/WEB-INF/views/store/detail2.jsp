<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ҵ�Ҵ�</title>
</head>
<body>
<h1> #{list.sname }</h1>
<form id="store-update-form" action='/store/update' 
method='post' enctype="multipart/form-data" accept-charset="UTF-8">
<div class="form-group">
<input type="hidden" class="form-control" name="sphoto" id="edit-default-photo" value="" required>
</div>
��ȣ��: <input type='text' name='sname' value='${list.sname }'><br>
���ԼҰ�: <textarea name='sint' rows='10' cols='60' value='${list.sint }'></textarea><br>
��ȭ��ȣ: <input type='tel' name='stel' value='${list.stel }'><br>
�ּ�: <input type='text' name='saddr' value='${list.saddr }'><br>
���ּ�: <input type='text' name='s_det_addr' value='${list.s_det_addr }'><br>
<!--  ��ۿ���: <input type='radio' name='dyesno' value='1'>��
          + <input type='radio' name='dyesno' value='0'>�ƴϿ�<br>
           -->
�����ð�: <input type='time' name='sdt' value="${list.sdt }"> ~ <input type='time' name='edt' value="${list.edt }"><br>
�����: <input type='date' name='scdt' ${list.scdt }><br>
<button>�����Ϸ� </button>
<a href='storeList'>���</a>
</form>
</body>
</html>