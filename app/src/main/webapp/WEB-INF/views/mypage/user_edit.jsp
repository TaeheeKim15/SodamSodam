<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<table>
		<caption>로그인 유저 상세정보</caption>
		<tr>
			<td>이메일</td>
			<td>${userInfo.email}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${userInfo.name}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${userInfo.addr}</td>
		</tr>
		<tr>
			<td>상세주소</td>
			<td>${userInfo.det_addr}</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${userInfo.tel}</td>
		</tr>
		<tr>
			<td>가입일</td>
			<td>${userInfo.rdt}</td>
		</tr>
	</table>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	
</body>
</html>
