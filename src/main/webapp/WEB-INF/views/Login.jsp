<%@page import="com.smhrd.domain.InfoDTO"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>로그인</h1>
	<form action="login.do" method="post" onsubmit="return formSub();">
		ID : <input type="text" id="id" name="id" placeholder="아이디를 입력해주세요"> <br>
		PW : <input type="password" id="id" name="pw" placeholder="비밀번호를 입력해주세요">
		<br>
		<button onclick="checksubmit()">로그인</button>
		<p>
			만약 아이디가 없다면 <a href="goJoin.do">회원가입</a>
		</p>




		<script type="text/javascript">
	// 아이디와 비밀번호가 일치하지 않을 때 경고문 출력해줄 수 있게
	 function formSub(){
		if($("input[name=id]").val()!='' && $("input[name=pw]").val() != '')
		{
			return true;
	}
		else{
			if($("input[name=id]").val()=='' && $("input[name=pw]").val() == ''){
				 alert('아이디와 비밀번호를 입력해주세요') 	
		
			}
			else if($("input[name=id]").val()==''){
				alert('아이디를 입력해주세요') 
		
			}
			else if($("input[name=pw]").val()==''){
				alert('비밀번호를 입력해주세요') 
			
			
			}
			
			return false;
			}
		} 
	

	

 
         function checksubmit(){
            var id = $('#id').val();//id값이 "id"인 입력란의 값을 저장
            $.ajax({
                url:'./idCheck', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                data:{id:id},
                success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                    if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    	alert("로그인에 실패하였습니다.");
                    }else{
	
                    }
                    
                },
                error:function(){
                	
                }
            });
            };   
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	</script>

	</form>
</body>
</html>