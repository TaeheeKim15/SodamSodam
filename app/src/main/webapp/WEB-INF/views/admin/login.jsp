<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/css/admin_login.css">
</head>

<body>
  <div class="login__area">
    <fieldset>
      <legend>
        <strong>소담소담 관리 시스템</strong>
        소담소담 관리자를 위한 통합 관리 시스템
      </legend>
      <form id="admin_login" action="/admin/loginPost" method="post">
        <input type="email" name="email" id="" placeholder="이메일">
        <input type="pwd" name="pwd" id="" placeholder="비밀번호">
      </form>
      <button type="submit" id="loginBtn" form="admin_login">로그인</button>
      <i>시스템 장애 문의 &nbsp;:&nbsp; <a href="mailto:system@gocle.co.kr">test@123.co.kr</a>
				<br><br>
				일반 회원 회원가입 및 쇼핑몰 이용은<br> 소담소담 쇼핑몰 사이트에서 이용 가능합니다.
				<br><br>
				<a class="page__link" href="/" target="_new">[소담소담 홈페이지 바로가기]</a>
				</i>
    </fieldset>
  </div>
</body>
<script>
  (function(){
  $('#msbo').on('click', function(){
    $('body').toggleClass('msb-x');
  });
}());
</script>

</html>