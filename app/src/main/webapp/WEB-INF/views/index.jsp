<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">

</head>
<body>

	<jsp:include page="./include/header.jsp"></jsp:include>
	
	<div class="category__box">
		
		<div class="container category__container">
			<a href="/store/list" class="nav-item nav-link active"><i class="fas fa-fish mr-2"></i><span>수산물</span></a> <a
				href="/store/list" class="nav-item nav-link"><i class="fas fa-carrot mr-2"></i><span>야채</span></a> <a href="/store/list"
				class="nav-item nav-link"><i class="fas fa-apple-alt mr-2"></i><span>청과물</span></a> <a href="/store/list"
				class="nav-item nav-link"><i class="fas fa-bread-slice mr-2"></i><span>빵/간식</span></a> <a href="/store/list"
				class="nav-item nav-link"><i class="fas fa-heartbeat mr-2"></i><span>건강식</span></a> <a href="/store/list"
				class="nav-item nav-link"><i class="fas fa-piggy-bank mr-2"></i><span>육류</span></a> <a href="/store/list"
				class="nav-item nav-link"><i class="fas fa-utensils mr-2"></i><span>반찬</span></a>
		</div>
	</div>


	<div class='main__contents'>
		<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      		<source src="/video/sample.mp4">
		</video>
		<div class="container main-title white-text">
			<div class="text-center">
				<h1>Stay Home</h1>
			</div>
			<h4 id="typed" class='text-center'></h4>
		</div>

	</div>


	<jsp:include page="./include/footer.jsp"></jsp:include>

</body>
<script src="https://kit.fontawesome.com/d1fe297f63.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
<script>
	var typed2 = new Typed('#typed',
			{
				strings : [ 'Delivery', 'Food', 'Daily necessity', 'Retail',
						'Travel' ],
				typeSpeed : 50,
				backSpeed : 30,
				fadeOut : false,
				smartBackspace : true,
				cursorChar : '_',
				loop : true
			});
</script>
</html>