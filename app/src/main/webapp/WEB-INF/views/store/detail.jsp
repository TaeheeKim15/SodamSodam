<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>소담소담</title>
</head>
<body>
<h1> ${store.sname }</h1>
<form id="store-update-form" action='/store/update' 
method='post' enctype="multipart/form-data" accept-charset="UTF-8">
<div class="form-group">
<img class="card-img-top" src="/filestorepath/${store.sphoto}" alt="Card image cap" height="150px">
</div>
상호명: <input type='text' name='sname' value='${store.sname }'><br>
가게소개: <textarea name='sint' rows='10' cols='60' value='${store.sint }'></textarea><br>
전화번호: <input type='tel' name='stel' value='${store.stel }'><br>
주소: <input type='text' name='saddr' value='${store.saddr }'><br>
상세주소: <input type='text' name='s_det_addr' value='${store.s_det_addr }'><br>
<!--  배송여부: <input type='radio' name='dyesno' value='1'>예
          + <input type='radio' name='dyesno' value='0'>아니오<br>
           -->
영업시간: <input type='time' name='sdt' value="${store.sdt }"> ~ <input type='time' name='edt' value="${store.edt }"><br>
등록일: ${store.scdt }<br>
<a href='list'>목록</a>
</form>
</body>
</html>