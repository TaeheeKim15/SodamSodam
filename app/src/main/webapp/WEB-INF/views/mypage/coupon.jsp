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
	
	<style type="text/css">
      @font-face {
			    font-family: 'SDSamliphopangche_Outline';
			    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');
			    font-weight: normal;
			    font-style: normal;
			}
			
	@font-face {
    	font-family: 'InfinitySans-BoldA1';
    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff') format('woff');
    	font-weight: normal;
    	font-style: normal;
	}

 		.coupon_main{
			font-family: 'InfinitySans-BoldA1';
		}	
		
		.coupon_title{
		   font-family:"SDSamliphopangche_Outline";
		}
			
    </style>
	
	
<title>쿠폰</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="mt-5 coupon_main">
			<div class="container mb-5 coupon__title">
				<h5 style="color:gray;">마이페이지 > 쿠폰</h5>
			</div>
				<div class="container mb-4 coupon__title">
            <h2>쿠폰목록</h2>
        		</div>
        
        	<div class= "coupon_table mb-5 mx-auto">
        	<table class="table table-hover">
        		<thead class="coupon_th">
        			<tr class ="text-center">
        				<th scope="col">쿠폰명</th>
        				<th scope="col">쿠폰설명</th>
        				<th scope="col">할인금액</th>
        				<th scope="col">발급일</th>
        				<th scope="col">유효기간</th>
        				<th scope="col">사용여부</th>     				
        			</tr>
				</thead>
     				
       		   <c:forEach var="item" items="${list}">
					<tr class = "text-center">
						<td>${item.cuname}</td>
						<td>${item.cuint}</td>
						<td>${item.cuprice} 원</td>
						<td>${item.mcudt}</td>
						<td>${item.cuexp}</td>
						<td>${item.status}</td>
					</tr>
				</c:forEach>
        	</table>
        	</div>
        </div>
        
		
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>