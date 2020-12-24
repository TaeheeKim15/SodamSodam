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
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<form class="form-signin" action="/loginPost" method="post">
			<h2 class="form-signin-heading">소담소담</h2>
			<input type="text" class="form-control" name="email" value="${email}" placeholder="이메일" required="" autofocus="" />
			<input type="password" class="form-control" name="pwd" placeholder="비밀번호" required="" />
			<c:choose>
			    <c:when test="${email eq null}">
			    	<label class="checkbox">
			    	<input type="checkbox" value="true" id="rememberMe" name="rememberMe"> 이메일 기억하기
			    	</label>
			    </c:when>
			    <c:otherwise>
			    	<label class="checkbox">
			        <input type="checkbox" value="true" id="rememberMe" name="rememberMe" checked='checked'> 이메일 기억하기
			        </label>
			    </c:otherwise>
			</c:choose>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>
	</div>
</body>

</html>