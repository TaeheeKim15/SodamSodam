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
<link rel="stylesheet" href="css/q_list.css">
<meta charset="UTF-8">
<title>문의내역</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="mt-5 qlist_main">
		<div class="container mb-5 coupon__title">
			<h5 style="color: gray;">마이페이지 > 문의내역</h5>
		</div>
		<div class="container mb-4 coupon__title">
			<h2>문의내역</h2>
		</div>

		<ul class="nav nav-pills mb-3 qlist_nav mx-auto" id="pills-tab" role="tablist">
			<li class="nav-item qlist_nav" role="presentation">
			<a class="nav-link active " id="pills-home-tab" data-bs-toggle="pill"
				href="#pills-home" role="tab" aria-controls="pills-home"
				aria-selected="true">전체</a></li>
			<li class="nav-item" role="presentation">
				<a class="nav-link"
				id="pills-profile-tab" data-bs-toggle="pill" href="#pills-profile"
				role="tab" aria-controls="pills-profile" aria-selected="false">답변대기</a>
			</li>
			<li class="nav-item" role="presentation">
				<a class="nav-link"
				id="pills-contact-tab" data-bs-toggle="pill" href="#pills-contact"
				role="tab" aria-controls="pills-contact" aria-selected="false">답변완료</a>
			</li>
		</ul>
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">...</div>
			<div class="tab-pane fade" id="pills-profile" role="tabpanel"
				aria-labelledby="pills-profile-tab">...</div>
			<div class="tab-pane fade" id="pills-contact" role="tabpanel"
				aria-labelledby="pills-contact-tab">...</div>
		</div>

	</div>




	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>