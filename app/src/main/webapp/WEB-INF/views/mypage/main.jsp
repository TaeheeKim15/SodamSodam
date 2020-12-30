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
    <title>마이페이지</title>
</head>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="mt-5 mypage__main">
        <div class="container mb-5 mypage__title">
            <h2>마이페이지</h2>
        </div>
        <div class="container mb-4 mypage__title">
            <h5>어떤 도움이 필요하신가요?</h5>
        </div>
        <div class="container mypage__category">
            <div class="row">
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/user_detail">개인정보</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/qlist">문의내역</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/orderList">주문내역</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/coupon">쿠폰</a></h5>
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
