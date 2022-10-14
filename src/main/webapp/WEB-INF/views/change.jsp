<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공감-회원정보수정</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">

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

  
    .bold{
            font-weight: bold;
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
  </style>
</head>

<body id="back">


    
  <div class="container eJEMVp fixed-top">
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
        <h3 class="text-center bold">회원정보수정</h3>
    </div>
</div>
     
        <form class="validation-form" novalidate action="update.do" method="post" >
            <div class="mb-3">
                <label for="id">비밀번호 변경</label>
                <input type="password" class="form-control" id="password" placeholder="변경할 비밀번호를 입력해 주세요" name="pw" value="${user_info.pw }" required>
                <div class="invalid-feedback">
                  
               
              </div>
              <div class="mb-3">
  
              </div>
              <div class="mb-3">
                <label for="nickname" >닉네임 변경</label>
                <input type="text" class="form-control" id="nickname" name="nick" placeholder="변경할 닉네임을 입력해 주세요" value="${user_info.nick }" required>
                <div class="invalid-feedback">
                
                </div>
              </div>
              
                   <div class="mb-3">
                
               
                
				<input type="hidden" name="id" value=${user_info.id }>
				
                <div class="invalid-feedback">
                
                </div>
              </div>
            </div>
       
   
          <div class="mb-3">

          </div>
          

         
          <div class="d-grid">
            <input type="submit" class="btn  btn-block" id="change" value="수정" style="background-color: #2ab3c0;"></button>
          </div>

       

       
        </form>

        <hr>

        <div class="text-center">
            <button class="btn" onclick="location.href='outpage.do'">탈퇴하기</button>
        </div>
         <div class="text-center">
            <a href="Rerutn.do" class="btn">돌아가기</a>
        </div>
      </div>
      
    </div>
   

</main>

<div id="wrapper5">
  <div></div>
</div>

<footer class="menu footer1">

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
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
  <script src='https://unpkg.com/akar-icons-fonts'></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="js/jquery-3.3.1.min.js"></script>
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
    
  $('#change').click(function(){
    //  만약에 성공하면
    Swal.fire({
  
  icon: 'success',
  title: '회원정보수정 성공!',
  showConfirmButton: false,
  timer: 1500
});

// 만약에 실패하면
/* Swal.fire({
  
  icon: 'error',
  title: '회원정보수정 실패',
  showConfirmButton: false,
  timer: 1500
}); */

 });

    

</script>
</body>

</html>
