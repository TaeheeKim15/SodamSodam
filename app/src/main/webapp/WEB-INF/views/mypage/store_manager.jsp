<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2020-12-02(002)
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/mypage.css">

<html>
<head>
    <title>가게관리</title>
</head>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="mt-5 mypage__main">
        <div class="container mb-5 mypage__title">
            <h2>가게관리</h2>
        </div>
        <div class="container mb-4 mypage__title">
        </div>
        <div class="container mypage__category">
            <div class="row">
              <div class="col-sm">
                <div class="card" style="width: 20rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title"><a href="/store/update">가게정보수정</a></h4>
                      <h5 class="card-title">등록된 가게의 정보를 수정합니다.</h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 20rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title"><a href="/product_list1">상품 관리</a></h4>
                      <h5 class="card-title">가게에 등록되어있는 상품을 관리합니다.</h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 20rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title"><a href="/user_detail">가게 삭제</a></h4>
                      <h5 class="card-title"><a href="/user_detail">등록된 가게를 삭제합니다.</a></h5>
                    </div>
                  </div>
              </div>
            </div>
          </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
<script src="js/main.js"></script>
</html>
