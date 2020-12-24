<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<title>Oculux | Form Drag & Drop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Oculux Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="/oculux/assets_vendor/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/oculux/assets_vendor/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/oculux/assets_vendor/vendor/animate-css/vivify.min.css">

<link rel="stylesheet" href="/oculux/assets_vendor/vendor/dropify/css/dropify.min.css">

<link rel="stylesheet" href="/oculux/assets_vendor/vendor/sweetalert/sweetalert.css"/>

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
							<h1>카테고리 관리</h1>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">소담소담</a></li>
									<li class="breadcrumb-item active" aria-current="page">카테고리</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right hidden-xs">
							<a href="javascript:void(0);" class="btn btn-sm btn-primary"
								title="" data-toggle="modal" data-target="#userAddModal">사용자 추가</a>
						</div>
						<!-- 유저 추가 Modal -->
						<div class="modal fade" id="userAddModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalCenterTitle">사용자
											추가</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form id="user-form" method="post" action="/admin/user_add" enctype="multipart/form-data" novalidate>
											<div class="form-group">
												<label>이름</label>
												<input type="text" class="form-control" name="name" required>
											</div>
											<div class="form-group">
												<label>이메일</label>
												<input type="email" class="form-control" name="email" required>
											</div>
											<div class="form-group">
												<label>비밀번호</label>
												<input type="password" class="form-control" name="pwd" required>
											</div>
											<div class="form-group">
												<label>우편번호</label>
												<input type="text" class="form-control" name="pst" required>
											</div>
											<div class="form-group">
												<label>기본주소</label>
												<input type="text" class="form-control" name="addr" required>
											</div>
											<div class="form-group">
												<label>상세주소</label>
												<textarea class="form-control" rows="5" cols="30" name="det_addr" required></textarea>
											</div>
											<div class="form-group">
												<label>전화번호</label>
												<input type="text" class="form-control" name="tel" required>
											</div>
											<div class="form-group">
												<label>생년월일</label>
												<input type="date" class="form-control" name="birth" required>
											</div>
											<div class="form-group">
												<div class="row clearfix">
													<div class="col-lg-12 col-md-12">
														<label>권한</label> <br />
														<label class="fancy-radio">
															<input type="radio" name="auth" value="1" required data-parsley-errors-container="#error-radio">
															<span><i></i>구매자</span>
														</label>
														<label class="fancy-radio">
															<input type="radio" name="auth" value="2">
															<span><i></i>판매자</span>
														</label>
														<label class="fancy-radio">
															<input type="radio" name="auth" value="6">
															<span><i></i>상담사</span>
														</label>
														<label class="fancy-radio">
															<input type="radio" name="auth" value="9">
															<span><i></i>관리자</span>
														</label>
														<p id="error-radio"></p>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label>프로필 사진</label>
												<div class="card">
													<div class="body">
														<input type="file" class="dropify" name="upload_image" accept="image/*">
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-round btn-default"
											data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-round btn-primary" form="user-form">저장</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 유저 수정 Modal -->
						<div class="modal fade" id="userEditModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalCenterTitle">사용자 수정</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form id="userEdit-form" method="post" action="/admin/user_edit" enctype="multipart/form-data" novalidate>
											<div class="form-group">
												<input type="hidden" class="form-control" name="uphoto" id="edit-default-photo" value="" required>
											</div>
											<div class="form-group">
												<input type="hidden" class="form-control" name="uno" id="edit-uno" value="" required>
											</div>
											<div class="form-group">
												<label>이름</label>
												<input type="text" class="form-control" name="name" id="edit-name" required>
											</div>
											<div class="form-group">
												<label>이메일</label>
												<input type="email" class="form-control" name="email" id="edit-email" required>
											</div>
											<div class="form-group">
												<label>비밀번호</label>
												<input type="password" class="form-control" name="pwd" id="edit-pwd" required>
											</div>
											<div class="form-group">
												<label>우편번호</label>
												<input type="text" class="form-control" name="pst" id="edit-pst" required>
											</div>
											<div class="form-group">
												<label>기본주소</label>
												<input type="text" class="form-control" name="addr" id="edit-addr" required>
											</div>
											<div class="form-group">
												<label>상세주소</label>
												<textarea class="form-control" rows="5" cols="30" name="det_addr" id="edit-det_addr" required></textarea>
											</div>
											<div class="form-group">
												<label>전화번호</label>
												<input type="text" class="form-control" name="tel" id="edit-tel" required>
											</div>
											<div class="form-group">
												<label>생년월일</label>
												<input type="date" class="form-control" name="birth" id="edit-birth" required>
											</div>
											<div class="form-group">
												<div class="row clearfix">
													<div class="col-lg-12 col-md-12">
														<label>권한</label> <br />
														<label class="fancy-radio">
															<input id="radio-1" type="radio" name="auth" value="1" required data-parsley-errors-container="#error-radio">
															<span><i></i>구매자</span>
														</label>
														<label class="fancy-radio">
															<input id="radio-2" type="radio" name="auth" value="2">
															<span><i></i>판매자</span>
														</label>
														<label class="fancy-radio">
															<input id="radio-6" type="radio" name="auth" value="6">
															<span><i></i>상담사</span>
														</label>
														<label class="fancy-radio">
															<input id="radio-9" type="radio" name="auth" value="9">
															<span><i></i>관리자</span>
														</label>
														<p id="error-radio"></p>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label>프로필 사진</label>
												<div class="card">
													<div class="body">
														<input id="edit-photo" type="file" class="dropify" name="upload_image" accept="image/*" data-default-file="">
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-round btn-default"
											data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-round btn-primary" form="userEdit-form">저장</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="text-left">
								<button type="button"
									class="btn btn-sm mb-1 btn-filter bg-default" data-target="all">전체</button>
								<button type="button"
									class="btn btn-sm mb-1 btn-filter bg-green"
									data-target="consumer">구매자</button>
								<button type="button"
									class="btn btn-sm mb-1 btn-filter bg-orange"
									data-target="seller">판매자</button>
								<button type="button"
									class="btn btn-sm mb-1 btn-filter bg-azura"
									data-target="counselor">상담사</button>
								<button type="button"
									class="btn btn-sm mb-1 btn-filter bg-blush" data-target="admin">관리자</button>
							</div>
							<table class="table table-hover table-custom spacing8 mb-0">
								<tbody>
									<c:forEach var="item" items="${list}">
										<c:choose>
											<c:when test="${item.auth == '1'}">
												<c:set var="authid" value="consumer" />
												<c:set var="authname" value="구매자" />
											</c:when>
											<c:when test="${item.auth == '2'}">
												<c:set var="authid" value="seller" />
												<c:set var="authname" value="판매자" />
											</c:when>
											<c:when test="${item.auth == '6'}">
												<c:set var="authid" value="counselor" />
												<c:set var="authname" value="상담사" />
											</c:when>
											<c:when test="${item.auth == '9'}">
												<c:set var="authid" value="admin" />
												<c:set var="authname" value="관리자" />
											</c:when>
										</c:choose>
										<tr data-status="${authid }">
											<td class="w60"><img src="/filepath/${item.uphoto }"
												data-toggle="tooltip" data-placement="top"
												title="Avatar Name" alt="Avatar" class="w35 rounded">
											</td>
											<td>
												<h6 class="mb-0">${authname }</h6> <span>${item.name }</span>
											</td>
											<td>${item.email }</td>
											<td>${item.addr }</td>
											<td>${item.tel }</td>
											<td><strong>${item.rdt }</strong></td>
											<td>
												<button onclick="userEdit(${item.uno });" type="button" class="btn btn-success mb-2" title="수정" data-toggle="modal" data-target="#userEditModal"><span class="sr-only">수정</span> <i class="fa fa-edit"></i></button>
												<button type="button" class="btn btn-danger mb-2 js-sweetalert" value="${item.uno }" data-type="userDelete" title="삭제"><span class="sr-only">삭제</span> <i class="fa fa-trash-o"></i></button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
<script type="text/javascript">
function userEdit(userId) {
    
    $.post("/user_edit_info",
    {
    	id:userId,
	}).done(function( data ) {
		switch (data.auth) {
		  case '1':
			$("#radio-1").prop("checked", true)
		    break;
		  case '2':
			$("#radio-2").prop("checked", true)
			break;
		  case '6':
			$("#radio-6").prop("checked", true)
		    break;
		  case '9':
			$("#radio-9").prop("checked", true)
			break;
		}
		
		$("#edit-default-photo").val(data.photo);
		$("#edit-uno").val(data.uno);
		$("#edit-name").val(data.name);
		$("#edit-email").val(data.email);
		$("#edit-pwd").val(data.pwd);
		$("#edit-pst").val(data.pst);
		$("#edit-addr").val(data.addr);
		$("#edit-det_addr").val(data.det_addr);
		$("#edit-tel").val(data.tel);
		$("#edit-birth").val(data.birth);
		
		var imagenUrl = "/filepath/" +data.photo;
		var drEvent = $('#edit-photo').dropify(
		{
		  defaultFile: imagenUrl
		});
		drEvent = drEvent.data('dropify');
		drEvent.resetPreview();
		drEvent.clearElement();
		drEvent.settings.defaultFile = imagenUrl;
		drEvent.destroy();
		drEvent.init();
	});
    
};
</script>
</body>
</html>


