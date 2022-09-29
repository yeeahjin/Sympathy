<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${user_info.nick }님 환영합니다</h1>
<a href="logout.do">로그아웃</a>
<a href="updatepage.do">회원정보수정</a>
<a href='delete.do'>회원탈퇴</a>
<!--?id="<%-- +${result.id } --%>  -->
</body>
</html>