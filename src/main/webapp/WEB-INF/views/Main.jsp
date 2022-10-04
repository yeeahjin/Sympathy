<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<% session.getAttribute("id"); %>




	<h1>${user_info.nick }님환영합니다</h1>
	<input type="search" placeholder="검색하세요.">
	<br>
	<br>
	<br>
	<br>
	<br>
	<table border=1>
		<thead>
			<tr>
				<td>곡번호</td>
				<td>앨범사진</td>
				<td>가수</td>
				<td>제목</td>
				<td>가사아이콘</td>
				<td>좋아요 아이콘</td>
				<td>싫어요 아이콘</td>
				<td>1분 미리듣기 아이콘</td>
				<td>연습하기아이콘</td>
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<a href="logout.do">로그아웃</a>
	<a href="updatepage.do?id=" +${result.id }>회원정보수정</a>
	<a href='delete.do'>회원탈퇴</a>




	<script type="text/javascript">

	$(document).ready(function(){
		songList();
	})
	
	function songList(){
		
		$.ajax({
			url : 'songList',
			type : 'get',
			dataType : 'json',
			success : function(res){
				for(var i=0; i<res.length;i++){
				$('#tbody').append("<tr></tr>")
				$('tr').last().append("<td>"+res[i].song_seq+"</td>")
				$('tr').last().append("<td>"+res[i].img+"</td>")
				$('tr').last().append("<td>"+res[i].singer+"</td>")
				$('tr').last().append("<td>"+res[i].song_title+"</td>")
				$('tr').last().append("<td><button onclick='lyrics("+res[i].song_seq+")'>가사 보기</button></td>")
				$('tr').last().append("<td><button onclick='like("+res[i].song_seq+")'>좋아요아이콘</button></td>")
				$('tr').last().append("<td><button>싫어요아이콘</button></td>")
				$('tr').last().append("<td><button>1분미리듣기아이콘</button></td>")
				$('tr').last().append("<td><button>연습하기아이콘</button></td>")
				}
			},
			error : function(e) {
				alert('error!');
			}
		});
	}
	</script>	
	
	<script type="text/javascript">

	 function like(songnumber){


			$.ajax({
			url : 'songinsert',
			type : 'post',   // get post
			data : {id : id , songnumber : songnumber},
			dataType :'text',
			success : function(){
				alert("성공")
				
				
				$
			},
			error : function(e) {
				alert('배고팡!');
			}
		});
		}
		 
		 
		

		 
		 
		 
	function lyrics(idx){
		$.ajax({
			url : 'lyrics',
			type : 'get',
			data : {num : idx},
			dataType : 'text',
			success : function(res){
				var j = 0;
				for (var i=0; i<idx; i++){
					if($('tbody > tr:nth-child('+i+') > td:nth-child(5)').text() == '가사 닫기'){
						alert("다른 노래 가사를 닫아주세요");
						j = 1;
						break;
					}
					}
				
				if (j==0 && $('tbody > tr:nth-child('+idx+') > td:nth-child(5)').text() == '가사 보기'){
					$('tbody > tr:nth-child('+idx+')').after("<tr><td colspan='9'>"+res+"</td></tr>")
					$('tbody > tr:nth-child('+idx+') > td:nth-child(5) > button').text('가사 닫기')
				}else if(j==0 && $('tbody > tr:nth-child('+idx+') > td:nth-child(5)').text() == '가사 닫기'){
					$('tbody > tr:nth-child('+idx+') > td:nth-child(5) > button').text('가사 보기') 			
					$('tbody > tr:nth-child('+(idx+1)+')').remove();
				}
					
				
			},
			error : function(e) {
				alert('error!');
			}
		});
	}
	</script>






</body>
</html>