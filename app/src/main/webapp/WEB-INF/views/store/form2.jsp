<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>가게등록</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/storeAdd.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>가게 등록</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container_1">
	<h1 class="title-name">가게 등록</h1>
	</div>
<form action='/store/add' method='post' accept-charset="UTF-8">
				<div class="row">
					<div class="col-sm-4">
						<p class="text-left">상호명</p>
						<p class="text-left">재고여부</p>
						<p class="text-left">배송</p>
						<p class="text-left">구매수량</p>
					</div>
										<div class="col-sm-8">
						<p class="text-left">4,800원</p>
						<p class="text-left">가능</p>
						<p class="text-left">배송가능</p>
<div class="inputbox_1">
						<input type="text" class="form-control text-center"
							id="exampleFormControlInput1" placeholder="상호명을 입력해주세요"
							style="width: 66px">
					</div>
</div>

가게소개: <textarea name='sint' rows='10' cols='60'></textarea><br>
전화번호: <input type='tel' name='stel'><br>
주소: <input type='text' name='saddr'><br>
상세주소: <input type='text' name='s_det_addr'><br>
배송여부: <input type='radio' name='dyesno' value='1'>예
          + <input type='radio' name='dyesno' value='0'>아니오<br>
이미지: <input type='text' name='sphoto'><br>
영업시간: <input type='date' name='sdt'> ~ <input type='date' name='edt'><br>
등록일: <input type='date' name='scdt'><br>
<button>생성</button>
<a href='storeList'>목록</a>
</form>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>