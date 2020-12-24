<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/user.css">


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
		
	<div class="container mt-5" style="min-height: calc(100vh - 132px);">
		<div class=“d-flex justify-content-center”>
	<div class="col ">
		<div class ="row-sm-2">	
			<div class="row">
				<div class="ml-5 text-secondary">
					<h2><b>개인정보수정</b></h2>
				</div>
			</div>
		</div>
		<div class="row-sm-3 d-flex justify-content-center">
			<img src='{userInfo.uphoto}'>
		</div>
		<div class = "row-sm-7 d-flex justify-content-center">
		
					<table>
					<form action='update' method='post'>
					<div class="btn-sm"> 
					<div class="row">
						<div class="col-sm-4">
						<p class="text-left">프로필사진</p>
						<p class="text-left">이름</p>
						<p class="text-left">이메일</p>
						<p class="text-left">주소</p>
						<p class="text-left">상세주소</p>
						<p class="text-left">전화</p>	
						</div>
						<div class="col-sm-8">
							<input type = "file" id="exampleFormControlInput1"name='uphoto' value='${userInfo.uphoto}' style='height:20px'><br>
							
							<input type ="text" id="exampleFormControlInput1" name="name" value='${userInfo.name}' style='height:32px'> <br>
							<input type='email' id="exampleFormControlInput1"name='email' value='${userInfo.email}' style='height:32px'> <br>
							<input type="text" id="exampleFormControlInput1"name='addr'value='${userInfo.addr}' style='height:32px'> <br>
							<input type="text"id="exampleFormControlInput1" name='det_addr'value='${userInfo.det_addr}' style='height:32px'> <br>
							<input type='tel' id="exampleFormControlInput1"name='tel' value='${userInfo.tel}' style='height:32px'> <br>
						</div>
					</div>
					</div>
					</form>
					</table>
				</div>	
		</div>
	<div class="row justify-content-center">
			<div>
				<button type="button" class="btn btn-outline-warning btn-lg" style="margin:10px;">  이전  </button>
				<button type="button" class="btn btn-warning btn-lg">  수정  </button>
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>