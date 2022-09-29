<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세 페이지</title>
</head>
<body>
<form action="update.do" method="post">
	<table border=1 width=600>
		<h1>회원정보상세 페이지</h1>
		<tr>
		
			<td  align=center>닉네임</td>
			<td> <input  type=text  name=nick  value= ${user_info.nick }></td>
		</tr>
		<tr>
			<td  align=center>비밀번호</td>
			<td><input  type=text  name=pw size=20 value= ${user_info.pw }></td>
		</tr>
		<tr>
			<td  align=center>성별 </td>
			<td><input  type=text  name=gender size=40 value= "${user_info.gender }"></td>
			
		</tr>
		<tr>
			<td  align=center>나이 </td>
			<td><input  type=text  name=age size=40 value= "${user_info.age }"></td>
		</tr>
		<tr>
			<td colspan=2  align=center>
				<input  type=submit  value="수정"> &emsp;
				<input type="hidden" name="id" value=${user_info.id }>
				<a href="first.do">돌아가기</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>