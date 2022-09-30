<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">



<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<h1>${user_info.nick }님환영합니다</h1>
	<input type="search" placeholder="검색하세요.">
	<br><br><br><br><br>
	<table border=1>
		<tr>
			<td>곡번호</td>
			<td>앨범사진</td>
			<td>가수</td>
			<td>제목</td>
			<td><button onclick="">가사아이콘</button></td>
			<td><button id='like' onclick="like()">좋아요 아이콘</button></td>
			<td><button onclick="">싫어요 아이콘</button></td>
			<td><button onclick="">1분 미리듣기 아이콘</button></td>
			<td><button onclick="">연습하기아이콘</button></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<br><br><br><br><br><br>
	<a href="logout.do">로그아웃</a>
	<a href="updatepage.do?id=" +${result.id }>회원정보수정</a>
	<a href='delete.do'>회원탈퇴</a>

	<script type="text/javascript">

$(document).on('click', '#like', () => {
    $('span').text(1)
    $('#like').text('좋아요')
    $('#like').attr('id', 'dislike')
})

$(document).on('click', '#dislike', () => {
    $('span').text(0)
    $('#dislike').text('좋아요')
    $('#dislike').attr('id', 'like')
})

function like(){
	$.ajax({
		url : '',
		data : {},
		success : function(res){
			
		},
		error : function(e){
			aler
		}
		
		
		
		
		
	})
	
	
}


</script>

</body>
</html>