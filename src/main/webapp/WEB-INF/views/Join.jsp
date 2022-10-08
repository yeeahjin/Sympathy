<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}

.nick_ok{
color:#008000;
display: none;
}

.nick_already{
color:#6A82FB; 
display: none;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
<h1>회원가입 페이지</h1>
<form action="join.do" method="post" onsubmit="return formSub();">
	ID : <input type="text" placeholder="아이디를 입력해주세요" id="id" name="id"  oninput = "checkId()"><span class="id_ok">사용 가능한 아이디입니다.</span><span class="id_already">누군가 이 아이디를 사용하고 있어요.</span><br>
	PW : <input type="password" placeholder="비밀번호를 입력해주세요"id="pww" name="pw"><br>
	NICK :  <input type="text" placeholder="닉네임을 입력해주세요"id="nick" name="nick" oninput = "checknick()"> <span class="nick_ok">사용 가능한 닉네임 입니다.</span><span class="nick_already">누군가 이 닉네임을 사용하고 있어요.</span> <br>
	<!-- GENDER : <input type="text" name="gender"> <br> -->
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여
	<br>
	AGE : <input type="text" placeholder="나이를 입력해주세요"id="agee" name="age"> <br>
	<!-- <button>회원가입</button> -->
	<input type="submit"  id="button1" value="회원가입">
	

	
	
	
	
	<script type="text/javascript">
	// 중복된 닉네임 선택했을 때 경고 뜨게
	// 회원가입이 완료 됐을 때 알림 현재는 빈칸만 채우면 알림이 뜸
	
	
	// 중복된 아이디 
	function checkId(){
        var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:'./idCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{id:id},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    $('#id').val();
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
        };
	
   
     // 중복된 닉네임
	function checknick(){
        var nick = $('#nick').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:'./nickCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{nick:nick},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.nick_ok').css("display","inline-block"); 
                    $('.nick_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.nick_already').css("display","inline-block");
                    $('.nick_ok').css("display", "none");
                    $('#nick').val();
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
        }; 
	
	
	
	
	
	
	
	
	
	
	
	
	
	function formSub(){
		if($("input[name=id]").val()!='' && $("input[name=pw]").val() != ''&& $("input[name=nick]").val() != ''
			&& $("input[name=gender]").val()  != ''){	 
			alert('회원가입이 완료되었습니다.') 	
			return true;
	}
		else{
			
			alert('빈칸을 채워주세요')
		
			
			
			return false;
			}
		}
		 
		 
	
	
	
	
	</script>
	
	
	
	
	
	
	
	
</form>

</body>
</html>