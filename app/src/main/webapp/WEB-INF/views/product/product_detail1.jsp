<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>소담소담</title>
</head>
<body>
<h1> ${product.sname }</h1>
<form id="product-update-form" action='/product/update' 
method='post' enctype="multipart/form-data" accept-charset="UTF-8">
<div class="form-group">
<img class="card-img-top" src="/filestorepath/${product.photo}" alt="Card image cap" height="150px">
</div>
상품명: <input type='text' name='pname'><br>
가격: <input type='text' name='price'><br>
재고여부: <input type='radio' name='stock' value='1'>예
          + <input type='radio' name=''stock'' value='0'>아니오<br>
사진: <input type='text' name='photo'><br>
상품소개: <textarea name='pint' rows='10' cols='60'></textarea><br>
생성일: <input type='date' name='pcdt'><br>
<a href='list'>목록</a>
</form>
</body>
</html>