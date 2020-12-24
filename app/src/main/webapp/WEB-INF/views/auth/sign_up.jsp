<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/login.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<form class="form-signin" action="/signUpPost" method="post">
			<h2 class="form-signin-heading">소담소담 회원가입 샘플</h2>
			<input type="text" class="form-control" name="name" placeholder="이름" />
			<input type="text" class="form-control" name="email" placeholder="이메일" />
			<input type="password" class="form-control" name="pwd" placeholder="비밀번호" required="" />
			<input type="text" class="form-control" name="pst" placeholder="우편번호" />
			<input type="text" class="form-control" name="addr" placeholder="주소" />
			<input type="text" class="form-control" name="det_addr" placeholder="상세주소" />
			<input type="text" class="form-control" name="tel" placeholder="전화번호" />
			<input type="text" class="form-control" name="birth" placeholder="생년월일" />
			<input type="file" id="thumImg" class="form-control" name="uphoto" placeholder="사진" />
			<div class="select_img">
				<img src="" />
				<script type="text/javascript">
					$("#thumImg").change(function() {
						if(this.files && this.files[0]){
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(300);
							}
							reader.readAsDataURL(this.files[0]);
						}
					})
				</script>
				<%=request.getRealPath("/") %>
			</div>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>
	</div>
</body>
</html>