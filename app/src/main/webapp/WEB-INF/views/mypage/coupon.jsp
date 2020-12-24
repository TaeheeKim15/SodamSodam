<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2020-12-02(002)
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/coupon.css">
	<meta charset="UTF-8">
<title>쿠폰</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="mt-5 coupon_main">
			<div class="container mb-5 coupon__title">
				<h5 style="color:gray;">마이페이지 > 쿠폰</h5>
			</div>
				<div class="container mb-4 mypage__title">
            <h2>쿠폰목록</h2>
        </div>
        
        
        	<table class="table coupon_table mx-auto text-center">
        		<thead class="thead-dark">
        			<tr>
        				<th scope="col">쿠폰명</th>
        				<th scope="col">수량</th>
        				<th scope="col">쿠폰설명</th>
        				<th scope="col">할인금액</th>
        				<th scope="col">발급일</th>
        			</tr>
        	
        	</table></div>
        
		
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>