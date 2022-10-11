<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">
<script type="text/javascript"
	src="resources/js/jquery-3.3.1.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style type="text/css">

.dropdown_2 {
  position: relative;
  display: inline-block;
}
.dropdown_con {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
 
  z-index: 1;
}
.dropdown_con a {
  color: black;
  padding: 12px 14px;
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

	<div class="container eJEMVp " style="width: 606px;">
		<header class="header">
			<div class="header-logo">

				<div>
					<span></span> <span></span> <span></span> <span></span>
				</div>
			</div>
			<div class="header-title">공감</div>

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
					<h1><%=user_info.getNick()%>님환영합니다
					</h1>
					<a href="logout.do">로그아웃</a>
					<%
						} else {
					%>
					<a href="goJoin.do">회원가입</a><br> <a href="log.do">로그인</a>
					<%
						}
					%>
</div>
				</div>



				<span></span>
			</div>
		</header>

		<div class="container">
			<div class="row justify-content-center">

				<!-- partial:index.partial.html -->
				<div class='music' style='width: 300px'>
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
		<section class="search">
			<div class="search-inner">
				<button class="search-button">
					<img src="resources/img/baseline_search_black_24dp.png">
				</button>
				<input type="text" class="search-input" placeholder="오늘어때"
					name="input" onkeyup="if(window.event.keyCode==13){test()}" />
			</div>
		</section>

		<div class="d-grid">
			<div class="row">
				<div class="text-center">
					 <button type="button" class="btn btn-default w-25 p-3" id="song"
						onclick="List()"></button> 
				</div>
			</div>
		</div>


		<div id='wrapper'>
			<div>
				<div class="container">
					<div class="row">


						<div class="input-form col-lg-12 mx-auto" id="list">

							<div class="list_wrap_track_rank" id="tbody">
							

							</div>



							<div class="d-grid">
								<div class="row">
									<div class="text-center">
										<button id="hide" type="button" style="padding:0;"
											class="btn btn-default w-25 p-3" onclick="hide()">접기</button>
									</div>
								</div>
							</div>


						</div>

					</div>
				</div>

			</div>
		</div>

		<footer class="menu footer1">

			<div class="menu-inner">
				<a href="Main.jsp" class="menu-item active" data-bs-toggle="tooltip"
					data-bs-placement="top" title="홈"> <i class="ai-home"></i>
				</a> <a href="location.jsp" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="내 주변 노래방 !"> <img
					src="resources/img/free-icon-location-535239.png" />
				</a> <a href="chart.jsp" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="9월의 인기차트!"> <img
					src="resources/img/free-icon-trending-8344976.png" />
				</a>

			</div>

		</footer>




	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src='https://unpkg.com/akar-icons-fonts'></script>
	<!-- <script src="./script.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script src="//code.jquery.com/jquery-1.12.4.min.js"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(
				function() {
					var body = document.getElementById('back');
					var body_width = getComputedStyle(body).width;

					body_width = parseInt(body_width.substring(0,
							body_width.length - 2))
					console.log(body_width);
					if (body_width > 570) {
						console.log('크기변경')
						$('.eJEMVp').width(576);
					}
				});
		
	    $(document).ready(function () {
            $('#list').css({ display: 'none' });
        });

        function List() {
            $('#song').on('click', function () {
            
                songList();  
            	
            	$('#list').fadeIn();  
            });

        };
        
	
         function songList(){
        	 
        	 $.ajax({
        		 url : 'songList',
        		 type:'get',
        		 dataType:'json',
        		 success:function(res){
        			
        		 console.log(res[0].song_seq) 
        		 console.log(res[0].img)
        		 
   			 $('#tbody').html(''); 

        			 for(var i = 0; i < 4; i++){
        				
        				 tr = `
        						<ul class="scroll_list" style="padding-left: 0px;">
								<li class="list_item">
									<ul style="padding-left: 0px;">
										<li class="list_track_row">
											<div class="thumb text-center">
												<span>`+res[i].song_seq+`</span>
											</div>
											
											<div class="thumb">
                                            <div class="inner">
                                                 <img src='`+res[i].img+`'>
                                            </div>
                                        </div>
											
									        <div class="song_area col-6">
                                            <div class="song">
                                                <a href="#" class="title fs-5" style="margin-top: 0;">
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
                                                    <button class="btn good "  onclick="good()"
                                                        data-bs-toggle="tooltip" data-bs-placement="bottom"
                                                        title="좋아요!"> <img
                                                            src="resources/img/baseline_sentiment_satisfied_alt_black_24dp.png" id="img1"></button>
                                                </div>
                                                <div class="col">
                                                    <button class="btn bad"  onclick="bad()"
                                                        data-bs-toggle="tooltip" data-bs-placement="bottom"
                                                        title="싫어요!"><img
                                                            src="resources/img/baseline_sentiment_very_dissatisfied_black_24dp.png"></button>
                                                </div>
                                            <div class="col">
                                                <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                                    data-bs-placement="bottom" title="가사보기!"> <img
                                                        src="resources/img/baseline_lyrics_black_24dp.png"></button>
                                                       
                                            </div>
                                            <div class="col popupModalVideo ratio ratio-16x9">
                                                <a class="btn video-btn" id="play"  data-toggle="modal" data-bs-toggle="tooltip"  data-video="Xqk8wgvOgW4"
                                                    data-bs-placement="bottom" title="미리듣기!" ><img
                                                        src="resources/img/baseline_play_circle_black_24dp.png"></a>
                                            </div>
                                            <div class="video_modal_popup" >
                                                <div class="video_modal_popup-closer"></div>
                                              </div>
                                          
                                            
                                            <div class="col">
                                                <button class="btn" id="link" data-bs-toggle="tooltip"
                                                    data-bs-placement="bottom" title="연습하기!"> <img
                                                        src="resources/img/baseline_mic_black_24dp.png"></button>
                                            </div>
                                        </div>
                                    </div>
                                        
										</li>
									</ul>
								</li>
							</ul>
							
        				 `
        			 
        			 $('#tbody').append(tr);
        			
        		
        			 }
        		 }
        	 
        	 })
         };
      

	    
	    
	    
        function hide() {
            $('#hide').on('click', function () {
                $('#list').fadeOut();
            });
        }

		
		
		

		// 좋아요 버튼누르면 좋아요 테이블에 아이디랑 노래 정보 넘기기

		function good() {
			console.log()
			$('.good').on('click', function() {
				Swal.fire({

					icon : 'success',
					title : '저장되었습니다!',
					text : '마이페이지에서 확인가능해용',
					showConfirmButton : false,
					timer : 1500
				});
				$('#img1').css({
					'filter' : 'opacity(0.5) drop-shadow(0 0 0 yellow)'
				})

			});

		};

		document.getElementById('good').onclick = function() {
			good()
		};

		document.getElementById('bad').onclick = function(){
			bad()
		};
		
		function bad(){
			$('.bad').click(function() {
				Swal.fire({

					icon : 'success',
					title : '저장되었습니다!',
					text : '마이페이지에서 확인가능해용',
					showConfirmButton : false,
					timer : 1500
				});
				$('#img2').css({
					'filter' : 'opacity(0.5) drop-shadow(0 0 0 blue)'
				})
			});
		};
		
		
		
	

		$(document).ready(function() {
			Swal.fire({
				// 설명서 넣기
				//   imageUrl: 'https://placeholder.pics/svg/300x1500',
				imageHeight : 1500,
				imageAlt : 'A tall image'
			});

		});

		var color = document.getElementById('img1')
		var color_1 = getComputedStyle(color).color
		console.log(color_1)

		$('#play').click(function() {

		});
		
		function test(){
			console.log('성공');
			 songList();  
         	
         	$('#list').fadeIn();  
		};
		
	</script>
	<script>
		var tooltipTriggerList = [].slice.call(document
				.querySelectorAll('[data-bs-toggle="tooltip"]'));
		var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
			return new bootstrap.Tooltip(tooltipTriggerEl)
		});
	</script>
	<script>
		$(".popupModalVideo a")
						.click(
								function() {
											$(".video_modal_popup").addClass(
													"reveal"),
											$(
													".video_modal_popup .video-wrapper")
													.remove(),
											$(".video_modal_popup")
													.append(
															"<div class='video-wrapper'><iframe src='https://youtube.com/embed/"
																	+ $(this)
																			.data(
																					"video")
																	+ "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")
								}), $(".video_modal_popup-closer").click(
						function() {
							$(".video_modal_popup .video-wrapper").remove(), $(
									".video_modal_popup").removeClass("reveal")
						});
	</script>

</body>

</html>
