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
<link rel="stylesheet" href="css/product.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container mt-5" style="min-height: calc(100vh - 132px);">
		<div class="row">
			<div class="col-sm-6">
				<img
					src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg"
					class="img-fluid" alt="...">
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col">
						<h5>할미손칼국수</h5>
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<h3>쫄깃쫄깃 우리밀 칼국수(1+1 행사중) 사장님이 미쳤어요!</h3>
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
						<p class="text-left">4,800원</p>
						<p class="text-left">가능</p>
						<p class="text-left">배송가능</p>
						<input type="number" class="form-control text-center"
							id="exampleFormControlInput1" placeholder="수량" min="1" max="5"
							style="width: 66px">
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-end">
			<div>
				<button type="button" class="btn btn-outline-warning btn-lg">장바구니</button>
				<button type="button" class="btn btn-warning btn-lg">구입하기</button>
			</div>

		</div>
		<div class="row mt-5">
			<div class="col-sm-3">
				<img src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg" class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg" class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg" class="img-thumbnail" alt="...">
			</div>
			<div class="col-sm-3">
				<img src="https://www.chungjungone.com/knowhow/images/blog/recipe/r294_201804/1.jpg" class="img-thumbnail" alt="...">
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>