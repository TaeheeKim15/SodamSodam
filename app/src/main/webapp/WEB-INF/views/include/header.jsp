<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar nav-header navbar-expand-xl">
	<a href="#" class="navbar-title"><i class="fa fa-cube"></i>소담<b>소담</b></a>
</nav>

<nav class="navbar navbar-expand-xl">
	<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>소담<b>소담</b></a>
	<button type="button" class="navbar-toggler" data-toggle="collapse"
		data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse"
		class="collapse navbar-collapse justify-content-start">
		<form class="navbar-form form-inline">
			<div class="input-group search-box">
				<input type="text" id="search" class="form-control"
					placeholder="검색어를 입력하세요"> <span class="input-group-addon"><i
					class="material-icons">&#xE8B6;</i></span>
			</div>
		</form>

		<c:choose>
			<c:when test="${empty sessionScope.loginUser }">
				<div class="navbar-nav ml-auto">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="/login">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
					</ul>
				</div>
			</c:when>
			<c:otherwise>
				<div class="navbar-nav ml-auto">
					<div class="nav-item dropdown">
						<a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action">
							<img src="${sessionScope.loginUser.uphoto }" class="avatar" alt="Avatar"> ${sessionScope.loginUser.name } <b class="caret"></b>
						</a>
						<div class="dropdown-menu">
							<a href="/mypage" class="dropdown-item">
								<i class="fa fa-user-o"></i>마이페이지
							</a>
							<a href="/login" class="dropdown-item">
								<i class="fa fa-calendar-o"></i> 로그인
							</a>
							<a href="/center" class="dropdown-item">
								<i class="fa fa-sliders"></i> 고객센터
							</a>
							<div class="divider dropdown-divider"></div>
							<a href="/logout" class="dropdown-item">
								<i class="material-icons">&#xE8AC;</i> 로그아웃
							</a>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</nav>