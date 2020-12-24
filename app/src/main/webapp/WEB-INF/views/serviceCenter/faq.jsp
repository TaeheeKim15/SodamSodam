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
<link rel="stylesheet" href="css/faq.css">
<html>
<head>
    <title>FAQ</title>
</head>
<body>

    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="mt-5 service__main">
        <div class="container mb-5 service__title">
            <div class="title__text">
                <h4>구매 관련 문의</h5>
                <p>쇼핑, 결제 중 문제가 발생하였거나 구매에 대해 궁금한 점에 대한 정보를 확인하세요.</p>
            </div>
            <img src="img/photo1.svg" alt="">
        </div>
        <div class="container mb-3 mt-5 service__title">
            <h5>구매 관련 문의</h5>
        </div>
        <div class="container service__category">
            <div class="row justify-content-start">
            	<c:forEach var="obj" items="${post}">
                <div class="col-6 col-md-3 mt-2">
                	<div class="card" style="width: 15rem;">
                    <div class="card-body">
                      <h5 class="card-title">${obj.sctitle}</h5>
                      <p class="card-text">${obj.sccontent}</p>
                      <a href="/faq_detail?no=${obj.scno}" class="card-link">자세히 알아보기</a>
                    </div>
                 	</div>
              	</div>
              	</c:forEach>
            </div>
          </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    
    <script src=""></script>
</body>
</html>
