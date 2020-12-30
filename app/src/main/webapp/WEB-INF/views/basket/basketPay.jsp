<%@page import="java.util.List"%>
<%@page import="bitcamp.sodam.beans.Basket"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<link href="css/basket_pay.css" rel="stylesheet" type="text/css">
<style type="text/css">
@font-face {
	font-family: 'SDSamliphopangche_Outline';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'InfinitySans-BoldA1';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.box20 {
	font-family: 'InfinitySans-BoldA1';
}

.box4 {
	font-family: "SDSamliphopangche_Outline";
}

table {
	boarder-collapse: collapse;
}

tr {
	border-bottom: 1px solid gray;
}
</style>
</head>

<body>

	<jsp:include page="../include/header.jsp"></jsp:include>

	<figure class="container mt-5">
		<figcaption style="min-height: calc(5vh);" class="box4">
			<p class="h1">결제</p>
		</figcaption>
	</figure>

	<div class="container box20" style="min-height: calc(100vh - 200px)">
		<table class="container mb-5, text-center">
			<thead class="box7">
				<tr>
					<th class="p-1"><p class="h5 box8">상품 사진</p></th>
					<th class="p-1"><p class="h5 box8">상점명</p></th>
					<th class="p-1"><p class="h5 box8">상품명</p></th>
					<th class="p-1"><p class="h5 box8">개수</p></th>
					<th class="p-1"><p class="h5 box8">가격</p></th>
				</tr>
			</thead>

			<c:forEach var="post" items="${list}">
				<tbody>
					<tr>
						<td class="p-1"><img src="${post.photo}"
							class="rounded-circle" width="90" height="90"></td>
						<td><p class="h5">${post.sname}</p></td>
						<td><p class="h5">${post.pname}</p></td>
						<td><p class="h5">${post.bcnt}개</p></td>
						<td><p class="h5">${post.priceCommas}원</p></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>

		<div class="row">

			<div class="col-7 box3">

          <div class= "coupon_table mb-5 mx-auto">
          <table class="table table-hover">
            <thead class="box7">
              <tr class ="text-center">
                <th scope="col">쿠폰명</th>
                <th scope="col">쿠폰설명</th>
                <th scope="col">할인금액</th>
                <th scope="col">유효기간</th>
                <th scope="col"></th>             
              </tr>
        </thead>
            
             <c:forEach var="item" items="${cList}">
          <tr class = "text-center">
            <td>${item.cuname}</td>
            <td>${item.cuint}</td>
            <td>${item.cuprice} 원</td>
            <td>~ ${item.cuexp}</td>
            <td><button type="button" class="btn btn-primary">선택</button></td>
          </tr>
        </c:forEach>
          </table>
          </div>

			</div>




			<div style="min-height: calc(70vh - 550px)" class="box3 col-5">

				<table class="mb-4 d-flex justify-content-end">
					<tbody>
						<tr class="box19">
							<td colspan="2"><p class="box18">총 결제 금액</p></td>
							<td></td>
						</tr>

						<tr class="box13">
							<td><p class="box18">상품 가격</p></td>
							<td><p class="box2">${sum}원</p></td>
						</tr>

						<tr class="box13">
							<td class="box16"><i class="fas fa-plus box16"></i> 배송비</td>
							<td><p class="box17">2,500 원</p></td>
						</tr>

						<tr class="box13">
							<td class="box16"><i class="fas fa-minus box16"></i> 쿠폰</td>
							<td><p class="box17">xxx 원</p></td>
						</tr>

						<tr class="box13 box14">
							<td><p class="box18 box27">합계</p></td>
							<td><p class="box2 box27">${tsum}원</p></td>
						</tr>

					</tbody>
				</table>

				<div class="d-flex justify-content-end col-12">
					<a class="btn btn-primary box20 box12" role="button"
						onclick="pay()">결제 </a>
				</div>
			</div>
		</div>


	</div>



	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<script type="text/javascript">

var pay = function(){

    var stock = "${list.size()}"
    var name = "${list[0].pname}"
    var full_name = name + " 외 상품" + stock + "개"

    var result_price = "${tsum2}"

    var bno = "${list[0].bno}"
    var user_name = "권구현"

    IMP.init('imp59921616');

    IMP.request_pay({
        pg : 'inicis', // version 1.1.0부터 지원.
        pay_method : 'card',
        merchantuid : 'merchant' + new Date().getTime(),
        name : full_name, // 표시될 
        amount : result_price, //판매 가격
        buyer_email : 'test@test.com', //사용자 이메일
        buyer_name : user_name, // 사용자 이름
        buyer_tel : '010-1234-5678', // 연락처
        buyer_addr : '서울특별시 강남구 삼성동', // 배송 주소
        buyer_postcode : '123-456' // 우편번호
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;

            basketDelete(bno);

        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });
}



function basketDelete(bno){
  $.get("/delete?bno="+bno)
   .done(function(data){
     window.location.href='basketList'
   })
}

</script>

</html>