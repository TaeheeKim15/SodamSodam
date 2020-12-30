<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/login.css" rel="stylesheet" type="text/css">
<link href="css/dropify.min.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<form class="form-signin" id="user-form" method="post" action="/admin/user_add" enctype="multipart/form-data">
			<h2 class="form-signin-heading">소담소담 회원가입</h2>
			<input type="text" class="form-control" name="name" placeholder="이름" />
			<input type="text" class="form-control" name="email" placeholder="이메일" />
			<input type="password" class="form-control" name="pwd" placeholder="비밀번호" required="" />
			<input type="text" class="form-control" name="pst" placeholder="우편번호" />
			<input type="text" class="form-control" name="addr" placeholder="주소" />
			<input type="text" class="form-control" name="det_addr" placeholder="상세주소" />
			<input type="text" class="form-control" name="tel" placeholder="전화번호" />
			<input type="text" class="form-control" name="birth" placeholder="생년월일" />
			<input type="file" class="dropify" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">회원가입</button>
		</form>
	</div>
</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
<script src="/js/dropify.js"></script>
<script type="text/javascript">
$('.dropify').dropify();
</script>
</html>