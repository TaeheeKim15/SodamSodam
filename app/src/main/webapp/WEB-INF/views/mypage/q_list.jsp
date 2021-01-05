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
	
<title>문의내역</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="mt-5 qlist_main mx-auto">
		<div class="container mb-5 coupon__title qlist_box2">
			<h5 style="color: gray;">마이페이지 > 문의내역</h5>
		</div>
		<div class="container mb-4 coupon__title qlist_box2">
			<h1>문의내역</h1>
		</div>

		
		<c:forEach var="item" items="${list}">
			<div class="card mb-5 qlist_box3">
				<div class="card-header text-right ">${item.col}</div>
				<div class="card-body">
					<c:choose>
						<c:when test="${item.qstatus == 0}">
					<span class="badge bg-success">답변대기</span> 
						</c:when>
						<c:otherwise>
					<h6><span class="badge bg-warning">답변완료</span></h6>
					</c:otherwise>
					</c:choose>
				<p class="card-text "> 문의유형: [ ${item.type} ]</p>
					<h4 class="card-title qlist_box1">${item.title}</h4>
					<p class="card-text">${item.content}</p>
					
				</div>
			</div>
			<div class="card mb-5 qlist_box3">
				<div class="card-body">
					<p class="card-text">${item.answer}</p>
				</div>
			</div>
		</c:forEach>

	</div>




	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>