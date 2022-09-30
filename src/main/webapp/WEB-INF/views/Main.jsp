<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>${user_info.nick }님환영합니다</h1>
	<input type="search" placeholder="검색하세요.">
	<br><br><br><br><br>
	<table border=1>
	<thead>
		<tr>
			<td>곡번호</td>
			<td>앨범사진</td>
			<td>가수</td>
			<td>제목</td>
			<td><button onclick="">가사아이콘</button></td>
			<td><button onclick="like()" id='like'>좋아요 아이콘</button></td>
			<td><button onclick="">싫어요 아이콘</button></td>
			<td><button onclick="">1분 미리듣기 아이콘</button></td>
			<td><button onclick="">연습하기아이콘</button></td>
		</tr></thead>
		<tbody id="tbody">
		
		</tbody>
	</table>
	<br><br><br><br><br><br>
	
	
	<a href="logout.do">로그아웃</a>
	<a href="updatepage.do?id=" +${result.id }>회원정보수정</a>
	<a href='delete.do'>회원탈퇴</a>

<script type="text/javascript">
	$(document).ready(function(){
		songList();
	})
	
	function songList(){
		
		$.ajax({
			url : 'songList.do',
			type : 'get',
			dataType : 'json',
			success : function(res){
				for(var i=0; i<res.length;i++){
				$('#tbody').append("<tr></tr>")
				$('tr').last().append("<td>"+res[i].song_seq+"</td>")
				$('tr').last().append("<td>"+res[i].img+"</td>")
				$('tr').last().append("<td>"+res[i].singer+"</td>")
				$('tr').last().append("<td>"+res[i].song_title+"</td>")
				$('tr').last().append("<td>가사아이콘</td>")
				$('tr').last().append("<td>좋아요아이콘</td>")
				$('tr').last().append("<td>싫어요아이콘</td>")
				$('tr').last().append("<td>1분미리듣기아이콘</td>")
				$('tr').last().append("<td>연습하기아이콘</td>")
				}
			},
			error : function(e) {
				alert('error!');
			}
		});
	}
	</script>
	<script type="text/javascript">
	
	/* function like() {
		
		$.ajax({
			url : 'test',
			type : 'get',
			success : function(res){
				console.log(res);
			},
			error : function(e){
				alert(e);
			}
		
		})
		
		
	}
	 */
		
		
	function like() {
		// 숫자 하나를  data로 요청을 보내기

		$.ajax({
			url : 'square', // 어디로 요청할지
			type : 'get', // Get? Post?
			// dataType : 'json', // 응답내용이 무슨 형식인지
			data : { // 어떤 데이터를 보낼지}
				"num" : 5
			},
			success : function(res) {

				// 성공했을 때, 어떤코드가 실행이 될지
				// res --> 컨트롤러가 응답해준 내용이 담김 
				console.log(res);

			},
			error : function(e) {
				alert(e);
			}
		// 실패했을 때, 어떤코드가 실행이 될지

		});

	}
		
		
	
	
	
	
	
	
	
	
/* function like(){
	$.ajax({
		url : 'test',
		type : 'get',
		data : {
			""
			
		},
		success : function(res){
			console.log(res);
		},
		error : function(e){
			alert(e);
		}
		
		
		
		
		
	})
	
	
}
 */

</script>

</body>
</html>