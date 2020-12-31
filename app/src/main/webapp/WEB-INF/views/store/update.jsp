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
<title>���� ���� ����</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container_1">
		<h1 class="title-name">���� ���� ����</h1>
	</div>
	<div class="container mb-5">
		<form id="store-update-form" action='/store/update' method='post'
			enctype="multipart/form-data" accept-charset="UTF-8">
			<div class="form-group row">
				<label for="sname" class="col-sm-2 col-form-label">* ��ȣ��</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="sname" name="sname"
						placeholder="��ȭ��ȣ" value="${store.sname }">
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">* ��ȭ��ȣ</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="stel" name="stel"
						placeholder="��ȭ��ȣ">
				</div>
			</div>
			<div class="form-group row">
				<label for="sample6_postcode" class="col-sm-2 col-form-label">* �ּ�</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="sample6_postcode"
						name="stel" placeholder="�ּ�">
				</div>
				<button type="button" class="btn btn-primary mb-2"
					onclick="sample6_execDaumPostcode()" value="ã��">ã��</button>
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
				<label for="s_det_addr" class="col-sm-2 col-form-label">* ����</label>
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
				<label for="saddr" class="col-sm-2 col-form-label">�����ð�</label>
				<div class="col-sm-10">
					<input type="time" name="sdt" value="${store.sdt }"
						style="width: 250px"> ~ <input type="time" name="edt"
						value="${store.edt }" style="width: 250px">
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">���Ի���</label>
				<div class="col-sm-10">
					<input type="file" class="dropify" />
				</div>
			</div>
			<div class="form-group row">
				<label for="stel" class="col-sm-2 col-form-label">���ԼҰ�</label>
				<div class="col-sm-10">
					<textarea name="sint" value="${store.sint }"></textarea>
				</div>
			</div>
			<button type="submit" class="btn btn-primary" form="store-form">���� ���</button>
			<button type="submit" class="btn btn-primary">�������</button>
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
						// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

						// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
						// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
						var addr = ''; // �ּ� ����
						var extraAddr = ''; // �����׸� ����

						//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
						if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
							addr = data.roadAddress;
						} else { // ����ڰ� ���� �ּҸ� �������� ���(J)
							addr = data.jibunAddress;
						}

						// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
						if (data.userSelectedType === 'R') {
							// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
							// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
							if (data.bname !== ''
									&& /[��|��|��]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</html>