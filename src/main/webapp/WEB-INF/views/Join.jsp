<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공감-회원가입</title>

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

        .find-btn {
            vertical-align: auto;
        }

        .find-btn1 {
            display: inline-block;
        }

        .find-btn2 {
            display: inline-block;
            padding-left: 45%;
        }

        .bold{
            font-weight: bold;
        }

        .size{
            font-size: smaller;
        }

        #kakao{
            
    display: inline-block;
    margin-right: 10px;

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
        <div class="input-form-backgroud row">
            
            <div class="input-form col-md-12 mx-auto shadow-none ">
                
                <div class="container">
                <div class="row align-items-center"> 

                </div>
            </div>
                <h3 class="mb-3 text-center bold" >회원가입</h3>
            
                <form class="validation-form" novalidate action="join.do" method="post" >

                    
                    <div class="mb-3">
                        <label for="id" >ID</label>
                        <input type="text" class="form-control" id="id" placeholder="아이디를 입력해 주세요" value="" required name="id">
                    
                        <div class="invalid-feedback">


                        </div>
                        <div class="mb-3">

                        </div>
                        <div class="mb-3">
                            <label for="password" >PW</label>
                            <input type="password" class="form-control" id="pww" placeholder="비밀번호를 입력해 주세요"
                                value="" required name="pw">
                            <div class="invalid-feedback" >

                            </div>
                        </div>
                    </div>


                    <div class="mb-3">
                        <label for="nickname">별명</label>
                        <input type="text" class="form-control" id="nickname" name="nick" value="" required
                        		>
                        <div class="invalid-feedback" >
                            별명을 입력해주세요.
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="gender">성별</label>
                        
                            <div class="find-btn">
                                <div class="form-check find-btn1">
                                    <input type="radio" class="form-check-input" id="radio1" name="gender"
                                        value="남" checked>
                                    <label class="form-check-label" for="radio1" >남성</label>
                                </div>


                                <div class="form-check find-btn2">
                                    <input type="radio" class="form-check-input" id="radio2" name="gender"
                                        value="여">
                                    <label class="form-check-label" for="radio2" >여성</label>
                                </div>
                            </div>

                       
                    </div>


   	 <div class="mb-3">
                        <label for="nickname">나이</label>
                        <input type="text" class="form-control" id="agee" name="age" 
                        		>
                        <div class="invalid-feedback" >
                            별명을 입력해주세요.
                        </div>
                    </div>

             


                    <div class="d-grid">
                        <input type="submit" href="#" id="join" class="btn  btn-block" 
                            style="background-color: #2ab3c0;;" value="회원가입"></a>
                    </div>

                    <div class="line">
                        <hr>
                    </div>
                    <div class="d-grid">
                         <button type="button" href="#" class="btn btn-primary btn-block border border-white"
                style="background-color: rgb(255, 232, 18); color: black;" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=8e7f238c509ff6d0f8008b629697d005&redirect_uri=http://localhost:8087/Login&response_type=code'">
                            <img
                                src="resources/img/ico_kakao.png" id="kakao">카카오로 로그인</button>
                    </div>
                    <div class="mb-3">
                        <div class="d-grid">
                            <a href="log.do" class="btn btn-block" ><p class="size">로그인</p></a>
                        </div>
                    </div>

                  
                </form>


            </div>

        </div>
    </main>

    <div id="wrapper2">
        <div>

        </div>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        window.addEventListener('load', function() {
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
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
     
        $('#join').on('click', function(){
            Swal.fire({
          	  
          	  icon: 'success',
          	  title: '회원가입 성공!',
          	  showConfirmButton: false,
          	  timer: 1500
          	});
        })
        
        
        
 /* // 중복된 닉네임 선택했을 때 경고 뜨게
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
                    $('#join').on('click', function(){
                        Swal.fire({
                      	  
                      	  icon: 'success',
                      	  title: '회원가입 성공!',
                      	  showConfirmButton: false,
                      	  timer: 1500
                      	});
                    })
                
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    $('#id').val();
                    Swal.fire({
                    	  
                    	  icon: 'error',
                    	  title: '회원가입 실패!',
                    	  titleText : '이미 존재하는 아이디입니다.',
                    	  showConfirmButton: false,
                    	  timer: 1500
                    	});
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
        		  */
    </script>
</body>

</html>