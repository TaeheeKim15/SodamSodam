<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소담소담</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/storeDetail.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container_1">
		<h1 id="title-name">${store.sname }</h1>
	</div>
	<div>
		<img src="/filestorepath/${store.sphoto}" height="150px" width="150px">
		<div>
			<img src="/filestorepath/${store.sphoto}" height="75px" width="75px">
			<img src="/filestorepath/${store.sphoto}" height="75px" width="75px">
			<img src="/filestorepath/${store.sphoto}" height="75px" width="75px">
			<img src="/filestorepath/${store.sphoto}" height="75px" width="75px">
		</div>
	</div>
	<hr>
	   <h1>상품 리스트</h1>
	<form id="store-update-form" action='/store/update' method='post'
		enctype="multipart/form-data" accept-charset="UTF-8">
		<div class="form-group"></div>
		상호명: <input type='text' name='sname' value='${store.sname }'><br>
		가게소개:
		<textarea name='sint' rows='10' cols='60'>${store.sint }</textarea>
		<br> 전화번호: <input type='tel' name='stel' value='${store.stel }'><br>
		주소: <input type='text' name='saddr' value='${store.saddr }'><br>
		상세주소: <input type='text' name='s_det_addr'
			value='${store.s_det_addr }'><br>
		<!--  배송여부: <input type='radio' name='dyesno' value='1'>예
          + <input type='radio' name='dyesno' value='0'>아니오<br>
           -->
		영업시간: <input type='time' name='sdt' value="${store.sdt }"> ~ <input
			type='time' name='edt' value="${store.edt }"><br> 등록일:
		${store.scdt }<br> <a href='list'>목록</a>
		<div><input type='text' value="${plist.pname }"></div>
		
	</form>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
</html>