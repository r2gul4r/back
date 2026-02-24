<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="register" method="post">
		<div>
			<label for="userid">아이디: </label>
			<input type="text" name="userid" id="userid">
		</div>
		<div>
			<label for="userpw">비밀번호: </label>
			<input type="text" name="userpw" id="userpw">
		</div>
		<button type="submit">가입하기</button>
	</form>
</body>
</html>