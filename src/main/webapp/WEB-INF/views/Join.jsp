<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입 페이지</h1>
<form action="join.do" method="post"> 
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	NICK :  <input type="text" name="nick"> <br>
	<!-- GENDER : <input type="text" name="gender"> <br> -->
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여
	<br>
	AGE : <input type="text" name="age"> <br>
	<button>회원가입</button>
</form>

</body>
</html>