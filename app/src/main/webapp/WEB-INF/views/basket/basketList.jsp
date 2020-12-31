<%@page import="java.util.List"%>
<%@page import="bitcamp.sodam.beans.Basket"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link href="css/basket.css" rel="stylesheet" type="text/css">
<style type="text/css">
@font-face {
	font-family: 'SDSamliphopangche_Outline';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'InfinitySans-BoldA1';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.box20 {
	font-family: 'InfinitySans-BoldA1';
}

.box4 {
	font-family: "SDSamliphopangche_Outline";
}

table {
	boarder-collapse: collapse;
}

tr {
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>

	<figure class="container mt-5">
		<figcaption style="min-height: calc(5vh);" class="box4">
			<p class="h1">장바구니</p>
		</figcaption>

		<div class="d-flex justify-content-end">
			<a class="btn btn-primary box20" href='deleteAll?uno=${list[0].uno}'
				role="button">장바구니 비우기 </a>
		</div>

	</figure>

	<div class="container box20" style="min-height: calc(100vh - 200px)">
		<table class="container mb-5, text-center">
			<thead class="box7">
				<tr>
					<th class="p-1"><p class="h5 box8">상품 사진</p></th>
					<th class="p-1"><p class="h5 box8">상점명</p></th>
					<th class="p-1"><p class="h5 box8">상품명</p></th>
					<th class="p-1"><p class="h5 box8">개수</p></th>
					<th class="p-1"><p class="h5 box8">가격</p></th>
					<th class="p-1"><p class="h5 box8"></p></th>
				</tr>
			</thead>

			<c:forEach var="post" items="${list}">
				<tbody>
					<tr>
						<td class="p-2"><img src="${post.photo}" width="110"
							height="110"></td>
						<td><p class="h5">${post.sname}</p></td>
						<td><p class="h5">${post.pname}</p></td>
						<td><p class="h5">${post.bcnt}개</p></td>
						<td><p class="h5">${post.priceCommas}원</p></td>
						<td><button type="button" class="btn btn-primary"
								onclick="basketDelete(${post.bno})">삭제</button></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>

		<div style="min-height: calc(70vh - 600px)" class="box3">
			<table class="container mb-4, text-center">
				<thead>
					<tr>
						<th scope="col" class="box1"><p class="h3">총 상품 금액</p></th>
						<th></th>
						<th scope="col" class="box1"><p class="h3">배송비</p></th>
						<th></th>
						<th scope="col" class="box1"><p class="h3">총 주문금액</p></th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td><p class="box2">${sum}원</p></td>
						<td><i class="fas fa-plus"></i></td>
						<td><p class="box2">2,500 원</p></td>
						<td><i class="fas fa-equals"></i></td>
						<td><p class="box2">${tsum}원</p></td>
					</tr>

				</tbody>
			</table>
		</div>

		<div class="d-flex justify-content-end mb-5">
			<a class="btn btn-primary container box20 box12" role="button"
			href="/basketPay">주문 </a>
		</div>


	</div>


	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script type="text/javascript">




function basketDelete(bno){
	$.get("/delete?bno="+bno)
	 .done(function(data){
		 window.location.href='basketList'
	 })
}

</script>

</html>








