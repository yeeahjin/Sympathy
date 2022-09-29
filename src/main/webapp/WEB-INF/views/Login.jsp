<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="login.do" method="post">
	ID : <input type="text" name="id">
	<br>
	PW : <input type="password" name="pw">
	<br>
	<button>로그인</button>  
	<p>만약 아이디가 없다면 <a href="goJoin.do">회원가입</a></p>
	
	</form>
</body>
</html>