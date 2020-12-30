<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가게목록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/storeList.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
	color: orange;
}
</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="mt-5 service__main">
		<div class="container mb-5 service__title"
			style="border-bottom: 3px solid orange; padding-bottom: 10px;">
			<button type="button" class="btn btn-outline-warning">별점순</button>
			<button type="button" class="btn btn-outline-rangking">랭킹순</button>
			<button type="button" class="btn btn-outline-new">최신순</button>
		</div>
		<div class="container service__category" style="margin-bottom: 20px;">
			<div class="row">
				<c:forEach var="item" items="${list}">
					<div class="col-sm mt-2" style="cursor: pointer;" onclick="location.href='detail?sno=${item.sno}';">
						<div class="card"
							style="width: 15rem; height: 320px; border: 1px solid light-gray; padding: 20px;">
							<img class="card-img-top" src="/filestorepath/${item.sphoto}"
								alt="Card image cap" height="150px">
							<div class="card-body mb-2"
								style="border-top: 1px solid orange; margin-top: 20px; ">
								<font class="card-title1">${item.sname }</font>
							</div>
							<div class="container-star">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							</div>
							<div>
								<font class="review-count">리뷰 12개</font>
							</div>
							<div>
								<c:forEach var="category" items="${item.category}">
									<c:choose>
										<c:when test="${category.ctno == '1'}">
											<button type="button" class="btn btn-success"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="fas fa-leaf"><font class="tag-font">&nbsp;야채</font></i>
											</button>
										</c:when>
										<c:when test="${category.ctno == '2'}">
											<button type="button" class="btn btn-warning"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="far fa-lemon" style="color: white;"><font
													class="tag-font">&nbsp;과일</font></i>
											</button>
										</c:when>
										<c:when test="${category.ctno == '3'}">
											<button type="button" class="btn btn-danger"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="fas fa-egg"></i></i><font class="tag-font">&nbsp;정육/계란</font></i>
											</button>
										</c:when>
										<c:when test="${category.ctno == '4'}">
											<button type="button" class="btn btn-primary"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="fas fa-fish"></i><font class="tag-font">&nbsp;해산물</font></i>
											</button>
										</c:when>
										<c:when test="${category.ctno == '5'}">
											<button type="button" class="btn btn-gold"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="fas fa-bread-slice"></i><font class="tag-font">&nbsp;빵/떡/간식</font></i>
											</button>
										</c:when>
										<c:when test="${category.ctno == '6'}">
											<button type="button" class="btn btn-khaki"
												style="padding-left: 5px; padding-right: 5px; padding-top: 0px; padding-bottom: 0px; margin-top: 5px;">
												<i class="fas fa-utensils"></i><font class="tag-font">&nbsp;국/반찬/메인요리</font></i>
											</button>
										</c:when>
									</c:choose>

                
								</c:forEach>
							</div>
						</div>
					</div>
					<a href='delete?sno=${item.sno}'>[삭제]</a>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
</html>