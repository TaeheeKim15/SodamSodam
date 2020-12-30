<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product detail</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/product.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container mt-5" style="min-height: calc(100vh - 132px);">
		<div class="row">
			<div class="col-sm-6">
				<img
					src="${product.photo }"
					class="img-fluid" alt="...">
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col">
						<h5>${product.sname}</h5>
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<h3>${product.pname }</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<p class="text-left">판매가</p>
						<p class="text-left">재고여부</p>
						<p class="text-left">배송</p>
						<p class="text-left">구매수량</p>
					</div>
					<div class="col-sm-8">
						<p class="text-left">${product.price}</p>
						<c:choose>
							<c:when test="${product.dyesno == '0'}">
								<c:set var="dyesno" value="배송불가" />
							</c:when>
							<c:when test="${product.dyesno == '1'}">
								<c:set var="dyesno" value="배송가능" />
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${product.stock == '0'}">
								<c:set var="stock" value="재고없음" />
							</c:when>
							<c:when test="${product.stock == '1'}">
								<c:set var="stock" value="재고있음" />
							</c:when>
						</c:choose>
						<p class="text-left">${stock}</p>
						<p class="text-left">${dyesno}</p>
						<input type="number" class="form-control text-center" id="bcnt"
							name="bcnt" placeholder="수량" min="1" max="5" style="width: 66px">
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-end">
			<div>
				<button type="button" class="btn btn-outline-warning btn-lg" onclick="addBasket(${product.pno})">장바구니</button>
			</div>

		</div>
		<div class="row mt-5">
			<div class="col-sm-3">
				<img
					src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg"
					class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img
					src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg"
					class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img
					src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg"
					class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img
					src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg"
					class="img-thumbnail" alt="...">
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	
	const addBasket = (no) => {
		int bcnt = $("#bcnt").val();
		if (bcnt < 1){
			alert("수량은 1이상이어야합니다")
		}
		$.post("/basket/insert", {
			pno : no,
			bcnt : bcnt
		}).done((data) => {
			swal({
				  title: "감사합니다!",
				  text: "장바구니에 상품을 담았습니다.",
				  icon: "success",
				  button: "닫기",
				})
		})
	}
	</script>
</body>
</html>