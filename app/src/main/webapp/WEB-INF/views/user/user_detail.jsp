<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/mypage.css">
	<meta charset="UTF-8">
	
	<style type="text/css">
      @font-face {
			    font-family: 'SDSamliphopangche_Outline';
			    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');
			    font-weight: normal;
			    font-style: normal;
			}
			
	@font-face {
    	font-family: 'InfinitySans-BoldA1';
    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-BoldA1.woff') format('woff');
    	font-weight: normal;
    	font-style: normal;
	}
			
    </style>
	
	
<title>쿠폰</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="mt-5 coupon_main">
			<div class="container mb-5 coupon__title" style='font-family:SDSamliphopangche_Outline'>
				<h5 style="color:gray;">마이페이지 > 개인정보수정</h5>
			</div>
				<div class="container mb-4 coupon__title line" style='font-family:SDSamliphopangche_Outline'>
            <p class="bottommargin">개인정보수정</p>
        		</div>

					<div>
				<form id="user-update" action='/user_detail' method='post'
					enctype="multipart/form-data" accept-charset="UTF-8">
					<div class="container mt-5">

						<div class="row">
							<div class="col-sm-12">
								<div class="d-flex justify-content-center">
									<img src='{userInfo.uphoto}'>
									<div class="col-sm-2 text-right "style='font-family:InfinitySans-BoldA1; padding:7px;'>
										<p style="padding-bottom: 10px;">프로필사진</p>
										<p style="padding-bottom: 11px;">이름</p>
										<p style="padding-bottom: 11px;">전화번호</p>
										<p style="padding-bottom: 11px;">이메일</p>
										<p style="padding-bottom: 11px;">우편번호</p>
										<p style="padding-bottom: 77px; padding-top: 5px;">주소</p>
									</div>
									<div class="col-sm-6">
										<div style="margin-bottom: 20px;">
											<input type="file" name="upload_image" accept="image/*">
										</div>

										<p>
											<input type="text" name="name"
												class="form-control text-center border border-secondary rounded"
												value='${userInfo.name}' style="width: 500px">
										</p>
										<div style="margin-bottom: 15px;">
											<p>
												<input type="text" name="tel"
													class="form-control text-center border border-secondary rounded"
													value='${userInfo.tel}' style="width: 500px">
											</p>
											<div style="margin-bottom: 15px;">
												<p>
													<input type="email" name="email"
														class="form-control text-center border border-secondary rounded"
														value='${userInfo.email}' style="width: 500px">
												</p>

												<input type="text"
													class="text-center border border-secondary rounded"
													id="sample6_postcode" style="width: 380px; height: 36px;">
												<input type="button"
													class="text-center border border-secondary rounded udetail_btn"
													onclick="sample6_execDaumPostcode()" value='찾기'
													style="width: 100px; margin-left: 10px; height: 36px;"><br>
											</div>
											<div style="margin-bottom: 15px;">
												<input type="text" name="saddr"
													class="text-center border border-secondary rounded"
													value='${userInfo.addr}' id="sample6_address"
													style="width: 500px; margin-bottom: 15px; height: 36px;">
												<input type="text" name="s_det_addr"
													class="text-center border border-secondary rounded"
													value='${userInfo.det_addr}' id="sample6_detailAddress"
													style="height: 36px; width: 500px;">
											</div>
											<div style="margin-bottom: 15px;">
												<input type="text"
													class="text-center border border-secondary rounded"
													id="sample6_extraAddress" placeholder="참고주소"
													style="width: 500px; margin-bottom: 15px; height: 36px;">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
						<div class="container_1" style="padding: 0px;"></div>
						<div class="container mt-5">
							<div class="row">
								<div class="col-sm-12">
									<div class="d-flex justify-content-center"></div>
								</div>
							</div>
						</div>
						<div class="d-flex justify-content-center" style='font-family:InfinitySans-BoldA1'>
							<button type="submit" class="btn btn-outline-warning btn-lg"
								style="margin: 10px;" >목록으로</button>
							<button type="button" style="margin: 10px;" form="user-update" class="btn btn-warning btn-lg udetail_btn">수정하기</button>
						</div>
				</form>

			</div>
		</div>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>


<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</html>