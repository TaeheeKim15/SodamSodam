<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ҵ�Ҵ�</title>
</head>
<body>
<h1> ${store.sname }</h1>
<form id="store-update-form" action='/store/update' 
method='post' enctype="multipart/form-data" accept-charset="UTF-8">
<div class="form-group">
<img class="card-img-top" src="/filestorepath/${store.sphoto}" alt="Card image cap" height="150px">
</div>
��ȣ��: <input type='text' name='sname' value='${store.sname }'><br>
���ԼҰ�: <textarea name='sint' rows='10' cols='60' value='${store.sint }'></textarea><br>
��ȭ��ȣ: <input type='tel' name='stel' value='${store.stel }'><br>
�ּ�: <input type='text' name='saddr' value='${store.saddr }'><br>
���ּ�: <input type='text' name='s_det_addr' value='${store.s_det_addr }'><br>
<!--  ��ۿ���: <input type='radio' name='dyesno' value='1'>��
          + <input type='radio' name='dyesno' value='0'>�ƴϿ�<br>
           -->
�����ð�: <input type='time' name='sdt' value="${store.sdt }"> ~ <input type='time' name='edt' value="${store.edt }"><br>
�����: ${store.scdt }<br>
<a href='list'>���</a>
</form>
</body>
</html>