<%@page import="com.smhrd.domain.InfoDTO"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공감-로그인</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <style>

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

    .find-btn{
        vertical-align:auto ;
    }
    .find-btn1{
        display: inline-block;
    }
    .find-btn2{
        display: inline-block;
        padding-left: 45%;
    }
      #kakao{
            
    display: inline-block;
    margin-right: 10px;

        }
  
    .bold{
            font-weight: bold;
        }

        .align{
          display: flex;
          align-items: center;
        }
          .dropdown_2 {
            position: relative;
            display: inline-block;
        }

        .dropdown_con {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 80px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            font-size: smaller;
        }

        .dropdown_con a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            
        }

        .dropdown_con a:hover {
            background-color: white;
        }

        .dropdown_2:hover .dropdown_con {
            display: block;
        }
          .size{
            font-size: smaller;
        }
        
  </style>
</head>

<body id="back">


    
  <div class="container eJEMVp">
    <header class="header">
      <div class="header-logo">
        <div>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div class="header-title">
        공감
      </div>
     <div class="header-buttons">

				<div class="dropdown_2">
				<button class="avatar dropbtn" >
					<img src="resources/img/baseline_menu_black_24dp.png"/>
				</button>
				<div class="dropdown_con">
					<!-- 로그인했을때 -->
					<%
						if (session.getAttribute("user_info") != null) {
						InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
					%>
					<a><%=user_info.getNick()%>님</a>
					
					<a href="mypage.do">마이페이지</a>
					<a href="logout.do">로그아웃</a>
					<%
						} else {
					%>
					<a href="goJoin.do">회원가입</a><br> 
					<a href="log.do">로그인</a>
					<%
						}
					%>
</div>
				</div>



				<span></span>
			</div>
    </header>
    
<main>


    <div class="input-form-backgroud"  >
        
      <div class="input-form col-lg-12 mx-auto  shadow-none ">
     
    <div class="container">
        <div class="mb-3">
        <h3 class="text-center bold" id="fontsss">로그인</h3>
    </div>
</div>
     
        <form class="validation-form" novalidate action="login.do" method="post" onsubmit="returnn()" >
            <div class="mb-3">
                <label for="id" id="fontsss">ID</label>
                <input type="text" class="form-control" id="id" placeholder="아이디를 입력해 주세요"  name="id">
                <div class="invalid-feedback">
                  
               
              </div>
              <div class="mb-3">
  
              </div>
              <div class="mb-3">
                <label for="password" >PW</label>
                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요" name="pw">
                <div class="invalid-feedback">
                
                </div>
              </div>
            </div>
         

   
          <div class="mb-3">

          </div>
          

         
          <div class="d-grid">
            <button type="submit"  class="btn  btn-block" id="login_s" style="background-color: #2ab3c0;" >로그인</button>
          </div>

          <div class="line">
            <hr>
          </div>


     <div class="d-grid">
            <button type="button" href="#" class="btn btn-primary btn-block border border-white"
                style="background-color: rgb(255, 232, 18); color: black;" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=8e7f238c509ff6d0f8008b629697d005&redirect_uri=http://localhost:8083/web/Login&response_type=code'">
                <img
                    src="resources/img/ico_kakao.png" id="kakao">카카오로 로그인</button>
        </div>

<div class="d-grid">
            <a href="goJoin.do"  class="btn btn-block"> <p class="size"> 회원가입</p></a>
          </div>

                    
                    
   
        </form>

        
      </div>
      
    </div>
   
  
</main>

<div id="wrapper4">
  <div></div>
</div>

<footer class="menu ft">

        <div class="menu-inner">
            <a href="go" class="menu-item active">
                <i class="ai-home"></i>
            </a>
            <a href="golocation.do" class="menu-item">
                <img src="resources/img/free-icon-location-535239.png" />
            </a>
            <a href="chart.do" class="menu-item">
               <img src="resources/img/free-icon-trending-8344976.png" />
            </a>
            
        </div>

    </footer>
</div>
  <script>
    window.addEventListener('load', function() {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src='https://unpkg.com/akar-icons-fonts'></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
    $(document).ready(function(){
        var body = document.getElementById('back');
        var body_width = getComputedStyle(body).width;

        body_width = parseInt(body_width.substring(0, body_width.length-2))
        console.log(body_width);
        if(body_width > 570){
            console.log('크기변경')
            $('.eJEMVp').width(576);
        }
    });


/* //   로그인 성공
$('#login_s').click(function(){
    //  만약에 성공하면
    Swal.fire({
  
  icon: 'success',
  title: '로그인 성공!',
  showConfirmButton: false,
  timer: 1500
});

// 만약에 실패하면


 }); */


 
function returnn(){
	if($("input[name=id]").val()!='' && $("input[name=pw]").val() != '')
	{ Swal.fire({
		  
		  icon: 'success',
		  title: '로그인 성공!',
		  showConfirmButton: false,
		  
		}); 
	
	setTimeout(function(){
		var link = "Main.jsp";
		location.href=link;
	}, 5000)

		return true;
}
	else{
		if($("input[name=id]").val()=='' && $("input[name=pw]").val() == ''){
			 alert('아이디와 비밀번호를 입력해주세요')
			 Swal.fire({
				  
				  icon: 'error',
				  title: '로그인 실패!',
				  titleText:'아이디와 비밀번호를 입력해주세요',
				  showConfirmButton: false,
				  timer: 5000
				}); 
	
		}
		else if($("input[name=id]").val()==''){
			alert('아이디를 입력해주세요')
			 Swal.fire({
				  
				  icon: 'error',
				  title: '로그인 실패!',
				  titleText:'아이디와 비밀번호를 입력해주세요',
				  showConfirmButton: false,
				  timer: 1500
				}); 
	
		}
		else if($("input[name=pw]").val()==''){
			alert('비밀번호를 입력해주세요') 
			 Swal.fire({
				  
				  icon: 'error',
				  title: '로그인 실패!',
				  titleText:'아이디와 비밀번호를 입력해주세요',
				  showConfirmButton: false,
				  timer: 1500
				}); 
		
		
		}
		
		return false;
		}
	} 


    
 /* function checksubmit(){
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
  */


</script>
</body>

</html>
