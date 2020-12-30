<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/mypage.css">
<meta charset="UTF-8">

	<style type="text/css">
		@font-face {
			font-family: 'SDSamliphopangche_Outline';
			src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');
			font-weight: normal;
			font-style: normal;
		}

	@font-face {
		font-family: 'InfinitySans-BoldA1';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff') format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	@font-face {
    font-family: 'IBMPlexSansKR-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


	.qlist_box1{
		font-family:"InfinitySans-BoldA1";
	}
	
	.qlist_box2{
		font-family:"SDSamliphopangche_Outline";
	}
	
	.qlist_box3{
		 font-family: 'IBMPlexSansKR-Regular';
	}
	
	</style>
	
<title>주문내역</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="mt-5 qlist_main mx-auto">
		<div class="container mb-5 coupon__title qlist_box2">
			<h5 style="color: gray;">마이페이지 > 주문내역</h5>
		</div>
		<div class="container mb-4 coupon__title qlist_box2">
			<h1>주문내역</h1>
		</div>
		
		<div class= "coupon_table mb-5 mx-auto">
        	<table class="table table-hover">
        		<thead class="coupon_th">
        			<tr class ="text-center">
        				<th scope="col">가게명</th>
        				<th scope="col">상품명</th>
        				<th scope="col">수량</th>
        				<th scope="col">결제금액</th>
        				<th scope="col">주소</th>
        				<th scope="col">주문일</th>     				
        			</tr>
				</thead>
				
				<c:forEach var="item" items="${list}">
					<tr class = "text-center">
						<td>${item.sname}</td>
						<td>${item.pname}</td>
						<td>${item.op_cnt} </td>
						<td>${item.price}</td>
						<td>${item.addr}</td>
						<td>${item.odt}</td>
					</tr>
				</c:forEach>
			</table>
     		
		
	</div>




	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>