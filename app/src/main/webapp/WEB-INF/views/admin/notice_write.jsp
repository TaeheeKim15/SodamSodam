<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<title>Oculux | Form Drag & Drop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description"
	content="Oculux Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/animate-css/vivify.min.css">

<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/dropify/css/dropify.min.css">

<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/jquery-datatable/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/jquery-datatable/fixedeader/dataTables.fixedcolumns.bootstrap4.min.css">
<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/jquery-datatable/fixedeader/dataTables.fixedheader.bootstrap4.min.css">

<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/sweetalert/sweetalert.css" />

<link rel="stylesheet"
	href="/oculux/assets_vendor/vendor/summernote/dist/summernote.css" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="/oculux/assets/css/site.min.css">

</head>
<body class="theme-cyan font-montserrat light_version theme-orange">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="bar1"></div>
			<div class="bar2"></div>
			<div class="bar3"></div>
			<div class="bar4"></div>
			<div class="bar5"></div>
		</div>
	</div>

	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<div id="wrapper">

		<jsp:include page="../include/admin_nav.jsp"></jsp:include>

		<div id="main-content">
			<div class="container-fluid">
				<div class="block-header">
					<div class="row clearfix">
						<div class="col-md-6 col-sm-12">
							<h1>공지사항 등록</h1>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">소담소담</a></li>
									<li class="breadcrumb-item active" aria-current="page">공지사항</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<c:choose>
									<c:when test="${empty post}">
										<div class="form-group">
											<label>제목</label> <input id="notice-title" type="text"
												class="form-control" required="">
										</div>
										<div class="summernote"></div>
										<div
											class="d-flex align-items-end justify-content-end pt-3 pb-3">
											<button type="button" class="btn btn-info mr-2"
												onclick="location.href='/admin/notice'">
												<i class="fa fa-trash-o"></i> <span>취소</span>
											</button>
											<button type="button" class="btn btn-success"
												onclick="save()">
												<i class="fa fa-save"></i> <span>저장</span>
											</button>
										</div>
									</c:when>
									<c:otherwise>
										<div class="form-group">
											<label>제목</label> <input id="notice-title" type="text"
												class="form-control" value="${post.ntitle}" required="">
										</div>
										<div class="summernote">${post.ncontent}</div>
										<div
											class="d-flex align-items-end justify-content-end pt-3 pb-3">
											<button type="button" class="btn btn-info mr-2"
												onclick="location.href='/admin/notice'">
												<i class="fa fa-trash-o"></i> <span>취소</span>
											</button>
											<button type="button" class="btn btn-success"
												onclick="edit(${post.nno})">
												<i class="fa fa-save"></i> <span>수정</span>
											</button>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script src="/oculux/assets/bundles/libscripts.bundle.js"></script>
	<script src="/oculux/assets/bundles/vendorscripts.bundle.js"></script>

	<script src="/oculux/assets_vendor/vendor/sweetalert/sweetalert.min.js"></script>
	<script src="/oculux/assets_vendor/vendor/dropify/js/dropify.js"></script>
	<script src="/oculux/assets/bundles/mainscripts.bundle.js"></script>
	<script src="/oculux/assets/js/pages/forms/dropify.js"></script>
	<script src="/oculux/assets/js/pages/tables/table-filter.js"></script>
	<script src="/oculux/assets/js/pages/ui/dialogs.js"></script>

	<script src="/oculux/assets/bundles/datatablescripts.bundle.js"></script>
	<script
		src="/oculux/assets_vendor/vendor/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
	<script
		src="/oculux/assets_vendor/vendor/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
	<script
		src="/oculux/assets_vendor/vendor/jquery-datatable/buttons/buttons.colVis.min.js"></script>
	<script
		src="/oculux/assets_vendor/vendor/jquery-datatable/buttons/buttons.html5.min.js"></script>
	<script
		src="/oculux/assets_vendor/vendor/jquery-datatable/buttons/buttons.print.min.js"></script>
	<script src="/oculux/assets/js/pages/tables/jquery-datatable.js"></script>

	<script
		src="/oculux/assets_vendor/vendor/summernote/dist/summernote.js"></script>

	<script type="text/javascript">
		
		$('.summernote').summernote({
		  height: 150,   //set editable area's height
		  codemirror: { // codemirror options
		    theme: '${post.ncontent}'
		  }
		});
	
		var save = function() {
			var title = $('#notice-title').val();
			var markup = $('.summernote').summernote('code');
			
			console.log(markup);
			$.post("/admin/notice_add",
					{
						ntitle:title,
						ncontent:markup
					})
			
					window.location.href = '/admin/notice';
			
		};
			
		var edit = function(nno) {
				var title = $('#notice-title').val();
				var markup = $('.summernote').summernote('code');
				
				console.log(markup);
				$.post("/admin/notice_edit",
						{	
							nno:nno,
							ntitle:title,
							ncontent:markup
						})
				
						window.location.href = '/admin/notice';
				
		};
		
	</script>

</body>
</html>


