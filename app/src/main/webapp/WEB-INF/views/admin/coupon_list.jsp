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

<!-- MAIN CSS -->
<link rel="stylesheet" href="/oculux/assets/css/site.min.css">
<style type="text/css">
.user-select-row:hover {
	background-color: blue !important;
}
</style>

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
							<h1>쿠폰 관리</h1>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">소담소담</a></li>
									<li class="breadcrumb-item active" aria-current="page">쿠폰</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<ul class="nav nav-tabs">
								<li class="nav-item"><a id="couponClick" class="nav-link active show"
									data-toggle="tab" href="#coupons">쿠폰</a></li>
								<li class="nav-item"><a id="couponAddClick" class="nav-link show"
									data-toggle="tab" href="#couponAdd">쿠폰추가</a></li>
								<li hidden class="nav-item"><a id="couponEditClick" class="nav-link" data-toggle="tab"
									href="#couponEdit">쿠폰수정</a></li>
								<li hidden class="nav-item"><a id="userClick" class="nav-link" data-toggle="tab"
									href="#users">사용자</a></li>
							</ul>
							<div class="tab-content mt-0">
								<div class="tab-pane active show" id="coupons">
									<div class="table-responsive">
										<table class="table table-hover table-custom spacing8">
											<thead>
												<tr>
													<th>쿠폰명</th>
													<th>쿠폰설명</th>
													<th>할인금액</th>
													<th>생성일</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${list}">
													<tr>
														<td><a href="javascript:userClick(${item.cuno })">${item.cuname}</a></td>
														<td>${item.cuint }</td>
														<td>${item.cuprice }</td>
														<td>${item.cuexp }</td>
														<td>
															<button type="button" class="btn btn-sm btn-default"
																title="Edit" onclick="couponEditClick(${item.cuno})">
																<i class="fa fa-edit"></i>
															</button>
															<button type="button"
																class="btn btn-sm btn-default js-sweetalert"
																title="Delete" data-type="confirm">
																<i class="fa fa-trash-o text-danger"></i>
															</button>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane" id="users">
									<div class="body mt-2">
										<div class="row clearfix">
											<div class="col-lg-12">
												<div class="card">
													<input id="addCouponNo" type="hidden" value="">
													<table
														class="table table-hover js-basic-example dataTable table-custom spacing5">
														<thead>
															<tr>
																<th class="">이름</th>
																<th class="">분류</th>
																<th class="">이메일</th>
																<th class="">주소</th>
																<th class="">연락처</th>
																<th class="">등록일</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="item" items="${userList}">
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
																<tr class="user-select-row" style="cursor: pointer;" onclick="add(${item.uno})">
																	<td><span>${item.name }</span></td>
																	<td><span>${authname }</span></td>
																	<td><span>${item.email }</span></td>
																	<td><span>${item.addr }</span></td>
																	<td><span>${item.tel }</span></td>
																	<td><span>${item.rdt }</span></td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
													<br>
													<div class="float-right">
														<button class="btn btn-info btn-block" onclick="couponClick()" type="button">취소</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="couponAdd">
									<div class="body mt-2">
	                                    <form action="/admin/coupon_add" method="post" class="row clearfix">
	                                        <div class="col-lg-6 col-md-6 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-name" name="cuname" type="text" class="form-control" placeholder="쿠폰명">
	                                            </div>
	                                        </div>
	                                        <div class="col-lg-6 col-md-6 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-int" name="cuint" type="text" class="form-control" placeholder="쿠폰설명">
	                                            </div>
	                                        </div>
	                                        <div class="col-lg-3 col-md-4 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-price" name="cuprice" type="text" class="form-control" placeholder="할인금액">
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-12">
	                                            <div class="form-group">
	                                                <button type="submit" class="btn btn-primary">추가</button>
                                            		<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="formReset()">리셋</button>
	                                            </div>
	                                        </div>
	                                    </form>
	                                </div>
								</div>
								<div class="tab-pane" id="couponEdit">
									<div class="body mt-2">
	                                    <form action="/admin/coupon_add" method="post" class="row clearfix">
	                                    	<div class="col-lg-6 col-md-6 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-no" name=cuno type="hidden" class="form-control" placeholder="쿠폰번호" value="">
	                                            </div>
	                                        </div>
	                                        <div class="col-lg-6 col-md-6 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-name" name="cuname" type="text" class="form-control" placeholder="쿠폰명">
	                                            </div>
	                                        </div>
	                                        <div class="col-lg-6 col-md-6 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-int" name="cuint" type="text" class="form-control" placeholder="쿠폰설명">
	                                            </div>
	                                        </div>
	                                        <div class="col-lg-3 col-md-4 col-sm-12">
	                                            <div class="form-group">
	                                                <input id="coupon-price" name="cuprice" type="text" class="form-control" placeholder="할인금액">
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-12">
	                                            <div class="form-group">
	                                                <button type="submit" class="btn btn-primary">추가</button>
                                            		<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="formReset()">리셋</button>
	                                            </div>
	                                        </div>
	                                    </form>
	                                </div>
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

		<script
			src="/oculux/assets_vendor/vendor/sweetalert/sweetalert.min.js"></script>
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

		<script type="text/javascript">
			const userClick = (no) => {
				$("#userClick").get(0).click();
				$("#addCouponNo").val(no);
			}
			
			const couponClick = () => {
				$("#couponClick").trigger("click");
			} 
			
			const couponEditClick = (no) => {
				$("#couponEditClick").trigger("click");
			} 
			
			const add = (uno) => {
				const couponNo = $("#addCouponNo").val();
				$.post("/admin/mycoupon_add", {
					cuno : couponNo,
					uno : uno
				}).done(function(data){
					window.location.href = '/admin/coupon_list';
				})
			} 
			
			const formReset = () => {
				$("#coupon-name").val("");
				$("#coupon-price").val("");
				$("#coupon-int").val("");
			}
		</script>
</body>
</html>


