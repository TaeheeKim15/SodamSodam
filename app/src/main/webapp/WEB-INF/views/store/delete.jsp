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
<link rel="stylesheet" href="/css/storeDelete.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container_1">
		<h1 id="title-name1">가게 삭제</h1>
	</div>
	<div class="d-flex justify-content-center">
		<hr>
		<div class="container">알림</div>
		<div>가게 삭제시 관련 데이터가 모두 삭제됩니다. 삭제된 데이터는 복구가 불가합니다.</div>
		<div>삭제를 진행하려면 아래 입력 박스에 비밀번호를 입력해주세요.</div>
		<div>
			<input type="password" name="pwd" class="form-control text-center"
				id="exampleFormControlInput1" placeholder="비밀번호를 입력해주세요."
				style="width: 500px">
		</div>
	</div>
	<button type="submit" class="btn btn-warning">삭제</button>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
</html>