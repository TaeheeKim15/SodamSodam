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
<link rel="stylesheet" href="css/service.css">

<html>
<head>
    <title>FAQ</title>
</head>
<body>
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="mt-5 service__main">
        <div class="container mb-5 service__title">
            <h4>소담소담 고객 센터에 오신 것을 환영합니다.</h5>
        </div>
        <div class="container mb-4 service__title">
            <h5>어떤 도움이 필요하신가요?</h5>
        </div>
        <div class="container service__category">
            <div class="row">
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/faq?type=0">구입문의</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/faq?type=1">판매문의</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"><a href="/inquiry">1:1 문의</a></h5>
                    </div>
                  </div>
              </div>
              <div class="col-sm">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="img/photo1.svg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">공지사항</h5>
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
