<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
	<table>
		<caption>장바구니</caption>
		<tr>
			<th>상품명</th>
			<th>가격</th>
			<th>개수</th>
		</tr>
		<c:forEach var="post" items="${list}">
			<tr>
				<td>${post.pname}</td>
				<td>${post.price}</td>
				<td>${post.bcnt}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>