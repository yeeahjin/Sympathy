<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공감-회원정보수정</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	
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
 <% InfoDTO user_info = (InfoDTO)session.getAttribute("user_info");  %>
 
    
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
						;
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
        <h3 class="text-center bold">회원탈퇴</h3>
    </div>
</div>
     
        <form class="validation-form" novalidate>
            <div class="mb-3">
             
              <div class="mb-3">
  
              </div>
              <div class="text-center">
                <h6>본인 확인을 위해 비밀번호를 입력해주세요</h6></div>
                <input  type="password" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요">
                <div class="invalid-feedback">
                
                </div>
              
            </div>
         

   
          <div class="mb-3">

          </div>
          

         
          <div class="d-grid">
            <button onclick="papa()" type="button" class="btn  btn-block" id="out" style="background-color: #2ab3c0;">탈퇴</button>
          </div>

       
        </form>

        
      </div>
      
    </div>
   
 
</main>

<div id="wrapper6">
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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
  <script>
  // 패스워드 세션 값 불러와서 일치 확인
<%--    var infopw = <%=user_info.getPw()%> --%>
  
  function papa(){
	alert($('#password').val());
	var uid = '<%=(InfoDTO)session.getAttribute("user_info")%>';
	var pw = '<%=user_info.getPw()%>';
	alert(uid);
	alert(pw)
 	  if(($('#password').val())==(pw)){
		  alert("일단 여기")
		  
	  $.ajax({
			url : 'delete',
			type : 'get',
			dataType : 'text',
			success : function(res){
				
			
				console.log("탈퇴성공")
				Swal.fire({
  title: '정말 탈퇴하시겠습니까?',
  
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: '네',
  cancelButtonText:'아니오'
})
			location.href="logout.do"
		  
		  
  } 
	  
  }) 
  
 	  }
  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
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
    
 
    

</script>
</body>

</html>
