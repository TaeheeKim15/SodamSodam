<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/product.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container mt-5"
		style="min-height: calc(100vh - 132px); max-height: auto">
		<div class="container-fluid">
			<h3>김복순 하루야채</h3>
			<div class="row">
			<table>
			<h2>상품 목록</h2>
    <thead>
      <tr>
        <th>상품번호</th>
        <th>상호명</th>
        <th>상품명</th>
        <th>가격</th>
        <th>사진</th>
      </tr>
    </thead>

    <tbody>
				<c:forEach var="item" items="${list}">
					<td>${item.pno}</td>
					<td>${item.sname}</td>
					<td>${item.pname}</td>
					<td>${item.price}</td>
					<td>${item.photo}</td>
				</c:forEach>
			</div>
			</tbody>
			</table>
		</div>

	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>