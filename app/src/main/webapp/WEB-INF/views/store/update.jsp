<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/storeAdd.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/css/dropify.min.css" rel="stylesheet" type="text/css">
<title>가게 정보 수정</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container_1">
		<h1 class="title-name">가게 정보 수정</h1>
	</div>
	<div class="container mb-5">
		<form id="store-update-form" action='/store/update' method='post'
			enctype="multipart/form-data" accept-charset="UTF-8">
			<div class="form-group row">
				<label for="sname" class="col-sm-2 col-form-label">* 상호명</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="sname" name="sname"
						placeholder="전화번호" value="${store.sname }">
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">* 전화번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="stel" name="stel"
						placeholder="전화번호">
				</div>
			</div>
			<div class="form-group row">
				<label for="sample6_postcode" class="col-sm-2 col-form-label">* 주소</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="sample6_postcode"
						name="stel" placeholder="주소">
				</div>
				<button type="button" class="btn btn-primary mb-2"
					onclick="sample6_execDaumPostcode()" value="찾기">찾기</button>
			</div>
			<div class="form-group row">
				<label for="saddr" class="col-sm-2 col-form-label"></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="saddr" name="saddr"
						placeholder="" value="">
				</div>
			</div>
			<div class="form-group row">
				<label for="s_det_addr" class="col-sm-2 col-form-label"></label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="s_det_addr"
						name="s_det_addr" value="${store.s_det_addr}" placeholder="">
				</div>
			</div>
			<div class="form-group row">
				<label for="s_det_addr" class="col-sm-2 col-form-label">* 업종</label>
				<div class="col-sm-10">
					<c:forEach items="${clist}" var="c">
						<c:set var="roof" value="1" />
						<c:forEach items="${my_clist}" var="myc">
							<c:choose>
								<c:when test="${myc.ctno == c.ctno}">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											name="categoryName" id="categoryName${c.ctno }"
											value="${c.ctno }" checked> <label
											class="form-check-label" for="categoryName${c.ctno }">${c.ctname }</label>
									</div>
									<c:set var="roof" value="0" />
								</c:when>
							</c:choose>
						</c:forEach>
						<c:if test="${roof eq '1'}" var="nameHong" scope="session">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									name="categoryName" id="categoryName${c.ctno }"
									value="${c.ctno }"> <label class="form-check-label"
									for="categoryName${c.ctno }">${c.ctname }</label>
							</div>
						</c:if>

					</c:forEach>
				</div>
			</div>
			<div class="form-group row">
				<label for="saddr" class="col-sm-2 col-form-label">영업시간</label>
				<div class="col-sm-10">
					<input type="time" name="sdt" value="${store.sdt }"
						style="width: 250px"> ~ <input type="time" name="edt"
						value="${store.edt }" style="width: 250px">
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">가게사진</label>
				<div class="col-sm-10">
					<input type="file" class="dropify" />
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">가게소개</label>
				<div class="col-sm-10">
					<textarea name="sint" value="${store.sint }"></textarea>
				</div>
			</div>
			<button type="submit" class="btn btn-primary" form="store-form">가게 등록</button>
			<button type="submit" class="btn btn-primary">목록으로</button>
		</form>
	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="/js/dropify.js"></script>

<script>
	$('.dropify').dropify();

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