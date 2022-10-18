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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">
<script src="resources/js/all.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
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

.bold {
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

.ft {
	position: absolute;
	left: 0;
	bottom: 5px;
	width: 100%;
}


 .go2{
text-decoration: none;
color:black;}

.dropdown-toggle::after {
    display: none !important;
    margin-left: 0.255em;
    vertical-align: 0.255em;
    content: "";
    border-top: 0.3em solid;
    border-right: 0.3em solid transparent;
    border-bottom: 0;
    border-left: 0.3em solid transparent;
}
</style>
</head>

<body id="back">



	<div class="container eJEMVp fixed-top">
		<header class="header">
			<div class="header-logo">
				
			</div>
			<div class="header-title"> <a href="go" class="go2">공감</a></div>
			<div class="header-buttons">

			<div class="dropdown text-end">
					<button type="button" class="avatar dropbtn dropdown-toggle" data-bs-toggle="dropdown" >
						<img src="resources/img/baseline_menu_black_24dp.png" />
					</button>
					  <ul class="dropdown-menu">
						<!-- 로그인했을때 -->
						<%
							if (session.getAttribute("user_info") != null) {
							InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
						%>
						 <li><a class="dropdown-item" href="#"><%=user_info.getNick()%>님</a></li>
						<li><a class="dropdown-item" href="mypage.do">마이페이지</a></li> 
						<li><a class="dropdown-item"href="logout.do">로그아웃</a></li>
						<%
							} else {
						%>
						<li><a class="dropdown-item"  href="goJoin.do">회원가입</a></li>
						<li> <a class="dropdown-item"  href="log.do">로그인</a></li>
						<%
							}
						%>
					    </ul>
				
 </div>


				<span></span>
			</div>
		</header>



		<div class="container">
			<div class="row gy-5">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
			<div class="row gy-5">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
		</div>

		<div class="container">
			<h3 class=" text-center">🎤 좋아요 🎶</h3>
		</div>

		<div class="input-form-background row">
			<div class="input-form col-lg-12 mx-auto shadow-none" id="list"
				style="padding-top: 0px;margin-top: 0px;">
				<div class="list_wrap_track_rank" id="tbody"></div>
			</div>
		</div>
		<div id="wrapper8">
			<div></div>

		</div>

				<footer class="menu ft">

			<div class="menu-inner">
				<a href="go" class="menu-item active" data-bs-toggle="tooltip"
					data-bs-placement="top" title="홈"> <i class="ai-home"></i>
				</a> <a href="golocation.do" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="내 주변 노래방 !"> <img
					src="resources/img/free-icon-location-535239.png" />
				</a> <a href="chart.do" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="이달의 인기차트!"> <img
					src="resources/img/free-icon-trending-8344976.png" />
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script src='https://unpkg.com/akar-icons-fonts'></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script>
    $(document).ready(function () {
      var body = document.getElementById('back');
      var body_width = getComputedStyle(body).width;

      body_width = parseInt(body_width.substring(0, body_width.length - 2))
      
      if (body_width > 570) {
        
        $('.eJEMVp').width(576);
      }
      
      goodsong();
     
      
    });

    function goodsong(){
          $.ajax({
               url : 'goodList',
               type:'get',
              dataType:'json',
               success:function(res){
                 
                  
                      $('#tbody').html('');
                      for(var i=0; i<res.length;i++){
                      tr2=`
                          
                          <ul class="scroll_list" style="padding-left: 0px;">
                              <li class="list_item">
                                  <ul style="padding-left: 0px;">
                                  <li class="list_track_row">
                                    <div class="thumb text-center" id="song_number">
                                  <span>`+res[i].song_num+`</span>
                                  </div>
                                      <div class="thumb">
                                          <div class="inner">
                                        <img src='`+res[i].img+`'>
                                          </div>
                                      </div>

                                      
                                      <div class="song_area col-6">
                                      <div class="song">
                                      <a href="#" class="title fs-5 " style="margin-top: 0;" data-bs-toggle="tooltip" data-bs-placement="bottom" title="`+res[i].song_title+`">
                                          `+res[i].song_title+`
                                      
                                      </a>
                                  </div>
                                          <div class="artist">
                                        <span >
                                      `+res[i].singer+`
                                   </span>
                                          </div>
                                      </div>
                                      
                           

                                  <div class="song_area col-9">
                                      <div class="row gx-1">
                                          <div class="col">
                                              <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics('`+res[i].song_num+`')"
                                                  data-bs-placement="bottom" title="가사보기!"> <img
                                                      src="resources/img/baseline_lyrics_black_24dp.png" class="imgss"></button>
                                                     
                                          </div>
                                          <div class="col popupModalVideo ratio ratio-16x9">
                                          <a class="btn video-btn play" data-toggle="modal" onclick="video('`+res[i].preview+`')"
                                              data-bs-toggle="tooltip" data-video="`+res[i].preview+`"
                                              data-bs-placement="bottom" title="미리듣기!"><img
                                                  src="resources/img/baseline_play_circle_black_24dp.png"></a>
                                      </div>
                                          <div class="video_modal_popup">
                                              <div class="video_modal_popup-closer"></div>
                                            </div>
                                          <div class="col">
                                              <a class="btn" id="link" data-bs-toggle="tooltip" href="`+res[i].link+`"
                                                  data-bs-placement="bottom" title="연습하기!"> <img
                                                      src="resources/img/baseline_mic_black_24dp.png"></a>
                                          </div>
                                          <div class="col">
                                          <button class="btn"data-bs-toggle="tooltip" 
                                              data-bs-placement="bottom" title="취소" onclick="likecancel('`+res[i].song_num+`')"> <img
                                                  src="resources/img/baseline_cancel_black_24dp.png"></button>
                                      </div>
                                      </div>
                                  </div>
                                  </li>
                                
                              
                              </ul>

                              
                              </li>
                          </ul>
                          `
                                      $('#tbody').append(tr2); 
                      }
                      
               
        },
        error : function(e) {
            
        }
    });
    }
    
    function likecancel(songnumber){
        $.ajax({
            url : 'songdelete',
            type : 'get', // get post
            data : {
                songnumber : songnumber
            },
            dataType : 'text',
            success : function(res) {
            	 // 새로고침 해주는 코드
					window.location.reload();

            },
            error : function(e) {
                Swal.fire({
                    icon : 'error',
                    title : '좋아요 취소 실패!',
                    text : '오류입니다. 관리자에게 요청하세요.',
                    showConfirmButton : false,
                    timer : 1500
                });
            }
    	})
    }

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
    })
			
		
  </script>
</body>

</html>