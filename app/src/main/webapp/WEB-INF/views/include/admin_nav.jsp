<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar top-navbar">
	<div class="container-fluid">

		<div class="navbar-left">
			<div class="navbar-btn">
				<a href="index.html"><img
					src="/oculux/assets_vendor/images/icon.svg" alt="Oculux Logo"
					class="img-fluid logo"></a>
				<button type="button" class="btn-toggle-offcanvas">
					<i class="lnr lnr-menu fa fa-bars"></i>
				</button>
			</div>
		</div>

		<div class="navbar-right">
			<div id="navbar-menu">
				
			</div>
		</div>
	</div>
	<div class="progress-container">
		<div class="progress-bar" id="myBar"></div>
	</div>
</nav>
<div class="search_div">
	<div class="card">
		<div class="body">
			<form id="navbar-search" class="navbar-form search-form">
				<div class="input-group mb-0">
					<input type="text" class="form-control" placeholder="Search...">
					<div class="input-group-append">
						<span class="input-group-text"><i class="icon-magnifier"></i></span>
						<a href="javascript:void(0);" class="search_toggle btn btn-danger"><i
							class="icon-close"></i></a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<span>Search Result <small class="float-right text-muted">About
			90 results (0.47 seconds)</small></span>
	<div class="table-responsive">
		<table class="table table-hover table-custom spacing5">
			<tbody>
				<tr>
					<td class="w40"><span>01</span></td>
					<td>
						<div class="d-flex align-items-center">
							<div class="avtar-pic w35 bg-red" data-toggle="tooltip"
								data-placement="top" title="" data-original-title="Avatar Name">
								<span>SS</span>
							</div>
							<div class="ml-3">
								<a href="page-invoices-detail.html" title="">South Shyanne</a>
								<p class="mb-0">south.shyanne@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>02</span></td>
					<td>
						<div class="d-flex align-items-center">
							<img src="/oculux/assets_vendor/images/xs/avatar2.jpg"
								data-toggle="tooltip" data-placement="top" title="" alt="Avatar"
								class="w35 h35 rounded" data-original-title="Avatar Name">
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Zoe Baker</a>
								<p class="mb-0">zoe.baker@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>03</span></td>
					<td>
						<div class="d-flex align-items-center">
							<div class="avtar-pic w35 bg-indigo" data-toggle="tooltip"
								data-placement="top" title="" data-original-title="Avatar Name">
								<span>CB</span>
							</div>
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Colin Brown</a>
								<p class="mb-0">colinbrown@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>04</span></td>
					<td>
						<div class="d-flex align-items-center">
							<div class="avtar-pic w35 bg-green" data-toggle="tooltip"
								data-placement="top" title="" data-original-title="Avatar Name">
								<span>KG</span>
							</div>
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Kevin Gill</a>
								<p class="mb-0">kevin.gill@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>05</span></td>
					<td>
						<div class="d-flex align-items-center">
							<img src="/oculux/assets_vendor/images/xs/avatar5.jpg"
								data-toggle="tooltip" data-placement="top" title="" alt="Avatar"
								class="w35 h35 rounded" data-original-title="Avatar Name">
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Brandon Smith</a>
								<p class="mb-0">Maria.gill@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>06</span></td>
					<td>
						<div class="d-flex align-items-center">
							<img src="/oculux/assets_vendor/images/xs/avatar6.jpg"
								data-toggle="tooltip" data-placement="top" title="" alt="Avatar"
								class="w35 h35 rounded" data-original-title="Avatar Name">
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Kevin Baker</a>
								<p class="mb-0">kevin.baker@example.com</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><span>07</span></td>
					<td>
						<div class="d-flex align-items-center">
							<img src="/oculux/assets_vendor/images/xs/avatar2.jpg"
								data-toggle="tooltip" data-placement="top" title="" alt="Avatar"
								class="w35 h35 rounded" data-original-title="Avatar Name">
							<div class="ml-3">
								<a href="javascript:void(0);" title="">Zoe Baker</a>
								<p class="mb-0">zoe.baker@example.com</p>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div id="megamenu" class="megamenu particles_js">
	<a href="javascript:void(0);" class="megamenu_toggle btn btn-danger"><i
		class="icon-close"></i></a>
	<div class="container">
		<div class="row clearfix">
			<div class="col-12">
				<ul class="q_links">
					<li><a href="app-inbox.html"><i class="icon-envelope"></i><span>Inbox</span></a></li>
					<li><a href="app-chat.html"><i class="icon-bubbles"></i><span>Messenger</span></a></li>
					<li><a href="app-calendar.html"><i class="icon-calendar"></i><span>Event</span></a></li>
					<li><a href="page-profile.html"><i class="icon-user"></i><span>Profile</span></a></li>
					<li><a href="page-invoices.html"><i class="icon-printer"></i><span>Invoice</span></a></li>
					<li><a href="page-timeline.html"><i class="icon-list"></i><span>Timeline</span></a></li>
				</ul>
			</div>
			<div class="col-md-4 col-sm-12">
				<div class="card w_card3">
					<div class="body">
						<div class="text-center">
							<i class="icon-picture text-info"></i>
							<h4 class="m-t-25 mb-0">104 Picture</h4>
							<p>Your gallery download complete</p>
							<a href="javascript:void(0);" class="btn btn-info btn-round">Download
								now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<div class="card w_card3">
					<div class="body">
						<div class="text-center">
							<i class="icon-diamond text-success"></i>
							<h4 class="m-t-25 mb-0">813 Point</h4>
							<p>You are doing great job!</p>
							<a href="javascript:void(0);" class="btn btn-success btn-round">Read
								now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<div class="card w_card3">
					<div class="body">
						<div class="text-center">
							<i class="icon-social-twitter text-primary"></i>
							<h4 class="m-t-25 mb-0">3,756</h4>
							<p>New Followers on Twitter</p>
							<a href="javascript:void(0);" class="btn btn-primary btn-round">Find
								more</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<ul class="list-group">
					<li class="list-group-item">Anyone send me a message
						<div class="float-right">
							<label class="switch"> <input type="checkbox" checked="">
								<span class="slider round"></span>
							</label>
						</div>
					</li>
					<li class="list-group-item">Anyone seeing my profile page
						<div class="float-right">
							<label class="switch"> <input type="checkbox" checked="">
								<span class="slider round"></span>
							</label>
						</div>
					</li>
					<li class="list-group-item">Anyone posts a comment on my post
						<div class="float-right">
							<label class="switch"> <input type="checkbox"> <span
								class="slider round"></span>
							</label>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="particles-js"></div>
</div>
<div id="rightbar" class="rightbar">
	<div class="body">
		<ul class="nav nav-tabs2">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#Chat-one">Chat</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#Chat-list">List</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#Chat-groups">Groups</a></li>
		</ul>
		<hr>
		<div class="tab-content">
			<div class="tab-pane vivify fadeIn delay-100 active" id="Chat-one">
				<div class="chat_detail">
					<ul class="chat-widget clearfix">
						<li class="left float-left">
							<div class="avtar-pic w35 bg-pink">
								<span>KG</span>
							</div>
							<div class="chat-info">
								<span class="message">Hello, John<br>What is the
									update on Project X?
								</span>
							</div>
						</li>
						<li class="right"><img
							src="/oculux/assets_vendor/images/xs/avatar1.jpg" class="rounded"
							alt="">
							<div class="chat-info">
								<span class="message">Hi, Alizee<br> It is almost
									completed. I will send you an email later today.
								</span>
							</div></li>
						<li class="left float-left">
							<div class="avtar-pic w35 bg-pink">
								<span>KG</span>
							</div>
							<div class="chat-info">
								<span class="message">That's great. Will catch you in
									evening.</span>
							</div>
						</li>
						<li class="right"><img
							src="/oculux/assets_vendor/images/xs/avatar1.jpg" class="rounded"
							alt="">
							<div class="chat-info">
								<span class="message">Sure we'will have a blast today.</span>
							</div></li>
					</ul>
					<div class="input-group mb-0">
						<div class="input-group-prepend">
							<span class="input-group-text"> <a
								href="javascript:void(0);" class=""><i
									class="icon-camera text-warning"></i></a>
							</span>
						</div>
						<textarea type="text" row="" class="form-control"
							placeholder="Enter text here..."></textarea>
					</div>
				</div>
			</div>
			<div class="tab-pane vvivify fadeIn delay-100" id="Chat-list">
				<ul class="right_chat list-unstyled mb-0">
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-red">
									<span>FC</span>
								</div>
								<div class="media-body">
									<span class="name">Folisise Chosielie</span> <span
										class="message">offline</span> <span
										class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<img class="media-object "
									src="/oculux/assets_vendor/images/xs/avatar3.jpg" alt="">
								<div class="media-body">
									<span class="name">Marshall Nichols</span> <span
										class="message">online</span> <span
										class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-red">
									<span>FC</span>
								</div>
								<div class="media-body">
									<span class="name">Louis Henry</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-orange">
									<span>DS</span>
								</div>
								<div class="media-body">
									<span class="name">Debra Stewart</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-green">
									<span>SW</span>
								</div>
								<div class="media-body">
									<span class="name">Lisa Garett</span> <span class="message">offline
										since May 12</span> <span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<img class="media-object "
									src="/oculux/assets_vendor/images/xs/avatar5.jpg" alt="">
								<div class="media-body">
									<span class="name">Debra Stewart</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<img class="media-object "
									src="/oculux/assets_vendor/images/xs/avatar2.jpg" alt="">
								<div class="media-body">
									<span class="name">Lisa Garett</span> <span class="message">offline
										since Jan 18</span> <span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-indigo">
									<span>FC</span>
								</div>
								<div class="media-body">
									<span class="name">Louis Henry</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-pink">
									<span>DS</span>
								</div>
								<div class="media-body">
									<span class="name">Debra Stewart</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-info">
									<span>SW</span>
								</div>
								<div class="media-body">
									<span class="name">Lisa Garett</span> <span class="message">offline
										since May 12</span> <span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="tab-pane vivify fadeIn delay-100" id="Chat-groups">
				<ul class="right_chat list-unstyled mb-0">
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-cyan">
									<span>DT</span>
								</div>
								<div class="media-body">
									<span class="name">Designer Team</span> <span class="message">offline</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-azura">
									<span>SG</span>
								</div>
								<div class="media-body">
									<span class="name">Sale Groups</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="online"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-orange">
									<span>NF</span>
								</div>
								<div class="media-body">
									<span class="name">New Fresher</span> <span class="message">online</span>
									<span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
					<li class="offline"><a href="javascript:void(0);">
							<div class="media">
								<div class="avtar-pic w35 bg-indigo">
									<span>PL</span>
								</div>
								<div class="media-body">
									<span class="name">Project Lead</span> <span class="message">offline
										since May 12</span> <span class="badge badge-outline status"></span>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="left-sidebar" class="sidebar">
	<div class="navbar-brand">
		<a href="index.html"><img
			src="/oculux/assets_vendor/images/icon.svg" alt="Oculux Logo"
			class="img-fluid logo"><span>소담소담</span></a>
		<button type="button"
			class="btn-toggle-offcanvas btn btn-sm float-right">
			<i class="lnr lnr-menu icon-close"></i>
		</button>
	</div>
	<div class="sidebar-scroll">
		<div class="user-account">
			<div class="user_div">
				<img
					src="/filepath/${sessionScope.loginUser.uphoto }"
					class="user-photo" alt="User Profile Picture">
			</div>
			<div class="dropdown">
				<span>환영합니다,</span> <a href="javascript:void(0);"
					class="dropdown-toggle user-name" data-toggle="dropdown"><strong>${sessionScope.loginUser.name }</strong></a>
				<ul class="dropdown-menu dropdown-menu-right account vivify flipInY">
					<li><a href="page-profile.html"><i class="icon-user"></i>마이페이지</a></li>
					<li><a href="javascript:void(0);"><i class="icon-settings"></i>설정</a></li>
					<li class="divider"></li>
					<li><a href="/logout"><i class="icon-power"></i>Logout</a></li>
				</ul>
			</div>
		</div>
		<nav id="left-sidebar-nav" class="sidebar-nav">
			<ul id="main-menu" class="metismenu">
				<c:choose>
					<c:when test="${sessionScope.loginUser.auth eq '2' }">
						<li class="header">가게 관리</li>
						<li><a href="#"><i class="icon-diamond"></i><span>상품</span></a></li>
						<li><a href="#"><i class="icon-bubbles"></i><span>주문</span></a></li>
					</c:when>
					<c:otherwise>
						<li class="header">사이트 관리</li>
						<li class="active"><a href="/admin/category"><i
								class="icon-speedometer"></i><span>카테고리</span></a></li>
						<li><a href="/admin/notice"><i class="icon-diamond"></i><span>공지사항</span></a></li>
						<!-- <li><a href="#"><i class="icon-diamond"></i><span>가게</span></a></li>
						<li><a href="#"><i class="icon-diamond"></i><span>FAQ</span></a></li> -->
						<li><a href="#Contact" class="has-arrow"><i
								class="icon-book-open"></i><span>쿠폰</span></a>
							<ul>
								<li><a href="/admin/coupon_list">쿠폰 관리</a></li>
								<li><a href="/admin/coupon">사용자 쿠폰 관리</a></li>
							</ul></li>
						<li class="header">고객 관리</li>
						<li><a href="/admin/user"><i class="icon-bubbles"></i><span>사용자</span></a></li>
						<!-- <li><a href="#"><i class="icon-bubbles"></i><span>환불신청</span></a></li> -->
						<li><a href="/admin/inquiry"><i class="icon-bubbles"></i><span>문의사항</span></a></li>
						<!-- <li><a href="#"><i class="icon-bubbles"></i><span>주문</span></a></li> -->
					</c:otherwise>
				</c:choose>
				
			</ul>
		</nav>
	</div>
</div>