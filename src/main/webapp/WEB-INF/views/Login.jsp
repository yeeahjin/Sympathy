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

  
    .bold{
            font-weight: bold;
        }

        .align{
          display: flex;
          align-items: center;
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
        
        <button class="avatar">
  <img src="resources/img/baseline_menu_black_24dp.png" />
        </button>
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
     
        <form class="validation-form" novalidate>
            <div class="mb-3">
                <label for="id" id="fontsss">ID</label>
                <input type="text" class="form-control" id="id" placeholder="아이디를 입력해 주세요" value="" required>
                <div class="invalid-feedback">
                  
               
              </div>
              <div class="mb-3">
  
              </div>
              <div class="mb-3">
                <label for="password" >PW</label>
                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요" value="" required>
                <div class="invalid-feedback">
                
                </div>
              </div>
            </div>
         

   
          <div class="mb-3">

          </div>
          

         
          <div class="d-grid">
            <button type="button"  class="btn  btn-block" id="login_s" style="background-color: rgb(248, 223, 248);">로그인</button>
          </div>

          <div class="line">
            <hr>
          </div>


          <div class="d-grid">
            <button type="button" href="#" class="btn btn-primary btn-block border border-white"
                style="background-color: rgb(255, 232, 18); color: black;">
                <img
                    src="resources/img/ico_kakao.png" id="kakao">카카오로 로그인</button>
        </div>

    
        
        </form>

        
      </div>
      
    </div>
   
  
</main>

<div id="wrapper4">
  <div></div>
</div>

<footer class="menu footer1">

        <div class="menu-inner">
            <a href="index.html" class="menu-item active">
                <i class="ai-home"></i>
            </a>
            <a href="location.html" class="menu-item">
                <img src="resources/img/free-icon-location-535239.png" />
            </a>
            <a href="trend.html" class="menu-item">
               <img src="resources/img/free-icon-trending-8344976.png" />
            </a>
            
        </div>

    </footer>
</div>
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


//   로그인 성공
$('#login_s').click(function(){
    //  만약에 성공하면
    Swal.fire({
  
  icon: 'success',
  title: '로그인 성공!',
  showConfirmButton: false,
  timer: 1500
});

// 만약에 실패하면


 });
    

</script>
</body>

</html>
