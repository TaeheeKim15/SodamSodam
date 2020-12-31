<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2020-12-02(002)
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/faq.css">
<link rel="stylesheet" href="/css/summernote.css">

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">


<html>
<head>
<title>FAQ</title>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<div id="main-content" class="container">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row clearfix">
					<div class="col-md-6 col-sm-12">
						<h1>1:1문의 등록</h1>
					</div>
				</div>
			</div>

			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="">
						<div class="body">
							<div class="form-group">
								<label>제목</label> <input id="inquiry-title" type="text"
									class="form-control" value="" required="">
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">Example select</label> <select
									class="form-control" id="exampleFormControlSelect1">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<div id="summernote"></div>
							<div class="d-flex align-items-end justify-content-end pt-3 pb-3">
								<button type="button" class="btn btn-info mr-2"
									onclick="location.href='/admin/notice'">
									<i class="fa fa-trash-o"></i> <span>취소</span>
								</button>
								<button type="button" class="btn btn-success" onclick="edit()">
									<i class="fa fa-save"></i> <span>수정</span>
								</button>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script>
		var save = function() {
			var title = $('#inquiry-title').val();
			var markup = $('#summernote').summernote('code');

			console.log(markup);
			$.post("/inquiry_add", {
				title : title,
				content : markup
			})

			window.location.href = '/center';

		};

		$(document).ready(function() {
			$('#summernote').summernote({
				height : 600
			});
		});
	</script>
</body>
</html>
