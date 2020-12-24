<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가게 등록</title>
</head>
<body>
<h1>가게 등록</h1>
<form action='/store/update' method='post' accept-charset="UTF-8">
상호명: <input type='text' name='sname'><br>
가게소개: <textarea name='sint' rows='10' cols='60'></textarea><br>
전화번호: <input type='tel' name='stel'><br>
주소: <input type='text' name='saddr'><br>
상세주소: <input type='text' name='s_det_addr'><br>
배송여부: <input type='radio' name='dyesno' value='1'>예
          + <input type='radio' name='dyesno' value='0'>아니오<br>
이미지: <input type='text' name='sphoto'><br>
영업시간: <input type='date' name='sdt'> ~ <input type='date' name='edt'><br>
등록일: <input type='date' name='scdt'><br>
<button>생성</button>
<a href='storeList'>목록</a>
</form>
</body>
</html>