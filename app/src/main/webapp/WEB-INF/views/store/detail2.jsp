<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>소담소담</title>
</head>
<body>
<h1> #{list.sname }</h1>
<form id="store-update-form" action='/store/update' 
method='post' enctype="multipart/form-data" accept-charset="UTF-8">
<div class="form-group">
<input type="hidden" class="form-control" name="sphoto" id="edit-default-photo" value="" required>
</div>
상호명: <input type='text' name='sname' value='${list.sname }'><br>
가게소개: <textarea name='sint' rows='10' cols='60' value='${list.sint }'></textarea><br>
전화번호: <input type='tel' name='stel' value='${list.stel }'><br>
주소: <input type='text' name='saddr' value='${list.saddr }'><br>
상세주소: <input type='text' name='s_det_addr' value='${list.s_det_addr }'><br>
<!--  배송여부: <input type='radio' name='dyesno' value='1'>예
          + <input type='radio' name='dyesno' value='0'>아니오<br>
           -->
영업시간: <input type='time' name='sdt' value="${list.sdt }"> ~ <input type='time' name='edt' value="${list.edt }"><br>
등록일: <input type='date' name='scdt' ${list.scdt }><br>
<button>수정완료 </button>
<a href='storeList'>목록</a>
</form>
</body>
</html>