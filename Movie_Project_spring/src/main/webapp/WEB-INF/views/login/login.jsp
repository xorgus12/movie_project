<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../include/header.jsp"></jsp:include>
<link rel="stylesheet" href="../resources/css/login_style.css">

<title>TeraMetal</title>
<script>
	function startLogin() {
		alert("회사에서 직원 코드를 받아서 회원가입을 해주세요");
	}
	window.onload = function() {
		const msg = '${msg}';
		if (msg)
			alert('아이디와 비밀번호를 정확히 입력해 주세요.');

		$(".find").click(function() {
			alert("관리자에게 문의하세요");
		});
	}
</script>
<style>
a {
	text-decoration: none;
	color: white;
}

a:hover {
	color: white
}
</style>
</head>

<body>


	<form method="post">
		<div>
			<div class="login">
				<input type="text" name="id" class="id_input" placeholder="아이디">
				<div class="id_icon">
					<img src="../resources/img/login/ID.jpg" alt="">
				</div>
			</div>
			<div class="login">
				<input type="password" name="passwd" class="id_input"
					placeholder="비밀번호">
				<div class="id_icon">
					<img src="../resources/img/login/password.jpg" alt="">
				</div>
			</div>
			<button class="login_button" onclick="loginCheck()">로그인</button>
			<!-- <input type="button" value="로그인" class="login_button"> -->
		</div>
	</form>
	<div class="bottom">
		<a href="signup/">회원 가입</a>
	</div>

	<jsp:include page="../include/body.jsp"></jsp:include>
</body>

</html>
