<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공감-마이페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/font.css">

    <style>
       
        .but {
            display: block;
            width: 100%;
            height: 100%;
        }

      

        .img {
            position: relative;
        }

        .con {
            position: absolute;
            top: 35%;
            
            
        }

        .fold {
            display: inline-flex;
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
        
         .go2{
text-decoration: none;
color:black;}
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
               <a href="go" class="go2">공감</a>
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

            </div>
        </header>

        <div class="container">
            <div class="row justify-content-center">

                <!-- partial:index.partial.html -->
                <div class='music'>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                    <div class='bar'></div>
                </div>
            </div>
            <!-- partial -->
        </div>



        <main>
            <div class="input-form-background row">
                <div class="input-form col-lg-12 mx-auto  shadow-none ">
                    <div class="container con">
                        <div class="row row-cols-2 g-2 gy-5 fold">
                            <div class="col text-center">
                                <a class="btn btn-lg fw-bold"" href="updatepage.do?id="+${result.id }>회원정보수정</a>
                                <div>
                                    <span>PW와 닉네임을 변경</span>
                                </div>
                            </div>



                            <div class="col text-center">
								
                                <a  class="btn btn-lg fw-bold"" onclick="location.href='outpage.do'">회원탈퇴</a>
                                <div>
                                    <span>탈퇴</span>
                                </div>
                            </div>

                            <div class="col text-center">
								<a  class="btn btn-lg fw-bold"" onclick="location.href='goodpage.do'">좋아요</a>
                                <div>
                                    <span>찜한노래</span>
                                </div>
                            </div>
                            <div class="col text-center">
							
                               <button  class="btn btn-lg fw-bold"" onclick="location.href='badpage.do'">싫어요</button>
                                <div>
                                    <span>추천안받고싶은노래</span>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>


            </div>
        </main>

    <div id="wrapper3">
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
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function () {
            var body = document.getElementById('back');
            var body_width = getComputedStyle(body).width;
		
            body_width = parseInt(body_width.substring(0, body_width.length - 2))
            console.log(body_width);
            if (body_width > 570) {
                console.log('크기변경')
                $('.eJEMVp').width(576);
            }
        });

        //  페이지 로드 후 숨김 -> 버튼 클릭시 띄우기
        $(document).ready(function () {
            $('#info_c').hide();
        });

        function ic() {
            $('#cb').click(function () {
                $('#info_c').show();
            })
        }

        




    </script>
</body>

</html>