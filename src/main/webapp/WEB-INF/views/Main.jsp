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
<link rel="stylesheet" href="resources/package/dist/sweetalert2.min.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="resources/package/dist/sweetalert2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	<script src="resources/js/all.js"></script>

<style type="text/css">
/* .dropdown_2 {
	position: relative;
	display: inline-block;
}
 */
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

.ft3{
 position: absolute;
         left: 0;

    bottom: 110px;
    width: 100%;
}

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



	<div class="container eJEMVp " style="width: 606px;">
	
	
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" id="car" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/img/001.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="resources/img/002.jpg"" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="resources/img/003.jpg"" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="resources/img/004.jpg"" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="resources/img/005.jpg"" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="video_modal_popup">
		                                          <div class="video_modal_popup-closer"></div>
		                                        </div>

		<header class="header">
			<div class="header-logo">

				
			</div>
			<div class="header-title"><a href="go" class="go2">  공감</a></div>

			<div class="header-buttons">
			
			<div id="cal">
			
			</div>
    	
 

				
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

				<input type="text" id="userinput" class="search-input" placeholder="감정 및 상황을 표현해주세요"
					name="input" onkeydown="moveFocus('search2')" />

				<button onfocus="enterkey()" class="search-button" id="search2">
					<img src="resources/img/baseline_search_black_24dp.png">
				</button>
			</div>
		</section>


		<div class="d-grid">
			<div class="row">
				<div class="text-center"></div>
			</div>
		</div>


		
			<div id="pageNum">
				<div class="container">
					<div class="row">


						<div class="input-form col-lg-12 mx-auto" id="list"
							style="padding-top: 20px;">

							<div class="list_wrap_track_rank" id="tbody">
							
							
							
							
					
							</div>

					


						</div>


					</div>
				</div>

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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src='https://unpkg.com/akar-icons-fonts'></script>
	<!-- <script src="./script.js"></script> -->
	-
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- <script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/bootstrap.bundle.js"></script> -->
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
					$('#list').css({ display: 'none' });
					  Swal.fire({
			                // 설명서 넣기
			              //  imageUrl: 'resources/img/001.jpg', 
			                //imageUrl2: 'resources/img/002.jpg',
			                imageHeight: 400,
			                imageAlt: 'A tall image'
			            });
					  
				}
				
			
				
				
				
		);
		
		var car2 = document.getElementById('car');
		car2.classList.add('className');
	</script>
	<script>
		var tooltipTriggerList = [].slice.call(document
				.querySelectorAll('[data-bs-toggle="tooltip"]'));
		var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
			return new bootstrap.Tooltip(tooltipTriggerEl)
		});
		
		// 모델
		
		function kb_songList(userinput){
		 
		   $.ajax({
		       url : 'http://4ccc-34-91-168-29.ngrok.io',
		       type:'get',
		       data : {
		           input : userinput
		       },
		       headers : {
		          "ngrok-skip-browser-warning" : "12345",
		      },
		       dataType:'text',
		       success:function(res){
		        

		          $.ajax({
		              url : 'kbsongList.do',
		              type : 'get', 
		              dataType:"json",
		              data: {
		                  result : res
		              },
		              success : function(res) {
		                   
		                   
		                   $('#tbody').html('');  
		                    
		                  for(var i = 0; i < 4; i++){
		                  
		                   tr = `
		                          <ul class="scroll_list" style="padding-left: 0px;">
		                          <li class="list_item">
		                              <ul style="padding-left: 0px;">
		                                  <li class="list_track_row">
		                                      <div class="thumb text-center" >
		                                          <span id="song_number">`+res[i].song_num+`</span>
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
		                                          
		                                              <button class="btn like" id = "idlike" onclick="like('`+ res[i].song_num +`')" 
		                                                  data-bs-toggle="tooltip" data-bs-placement="bottom" 
		                                                  title="좋아요!"><span style="display:none;">좋아요</span><img
		                                                      src="resources/img/baseline_sentiment_satisfied_alt_black_24dp.png" id="img1"></button>
		                                                      
		                                          </div>
		                                          <div class="col">
		                                              <button class="btn bad"  onclick="hate('`+ res[i].song_num +`')"
		                                                  data-bs-toggle="tooltip" data-bs-placement="bottom" 
		                                                  title="싫어요!"><span style="display:none;">싫어요</span><img
		                                                      src="resources/img/baseline_sentiment_very_dissatisfied_black_24dp.png"></button>
		                                                      
		                                          </div>
		                                      <div class="col" id="lyrs">
		                                          <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics('`+res[i].song_num+`')"
		                                              data-bs-placement="bottom" title="가사보기!"> <img
		                                                  src="resources/img/baseline_lyrics_black_24dp.png"></button>
		                                                 
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
		                                          <a class="btn" id="link" data-bs-toggle="tooltip" data-toggle="modal" 
		                                               href="`+res[i].link+`"
		                                              data-bs-placement="bottom" title="연습하기!"> <img
		                                                  src="resources/img/baseline_mic_black_24dp.png"></a>
		                                      </div>
		                                     
		                                  </div>
		                              </div>
		                                  
		                                  </li>
		                              </ul>
		                          </li>
		                      </ul>
		          			
				                     <div class="ft3 text-center" >
				            <button  class="btn btn-light" onclick="mainPage(0)">1</button>
				            <button class="btn btn-light" onclick="mainPage(4)">2</button>
				            <button class="btn btn-light"onclick="mainPage(8)">3</button>
				          
				           

				        </div>
		                   `
		               
		               $('#tbody').append(tr);
		               } 
		                   
		               
		                  
		                  
		              },error : function(e) {
		           alert("2차에서 실패")
		              }
		          });
		      
		       },
		       error : function(){
		           alert("1차에서 실패")
		       },
		   
		   });
		};
		
		
		// mainPage 페이지 바꾸면 노래 나오게 하기
        function mainPage(num){        	 
       	 let userinput = document.getElementById("userinput").value
       	 $.ajax({
       		 url : ' http://7fc0-34-87-44-123.ngrok.io',
       		 type:'get',
       		 data : {
					input : userinput
				},
				headers : {
					"ngrok-skip-browser-warning" : "12345",
				},
       		 dataType:'text',
       		 success:function(res){
					$.ajax({
						url : 'kbsongList.do',
						type : 'get', 
						dataType:"json",
						data: {
							result : res
						},
						success : function(res) {
			    			 $('#tbody').html('');  
			         		 
							for(var i = num; i < num+4; i++){
	        				 tr = `
	        						<ul class="scroll_list" style="padding-left: 0px;">
									<li class="list_item">
										<ul style="padding-left: 0px;">
											<li class="list_track_row">
												<div class="thumb text-center" >
													<span id="song_number">`+res[i].song_num+`</span>
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
	                                                
	                                                    <button class="btn like" id = "idlike" onclick="like('`+ res[i].song_num +`')" 
	                                                        data-bs-toggle="tooltip" data-bs-placement="bottom" 
	                                                        title="좋아요!"><span style="display:none;">좋아요</span><img
	                                                            src="resources/img/baseline_sentiment_satisfied_alt_black_24dp.png" id="img1"></button>
	                                                            
	                                                </div>
	                                                <div class="col">
	                                                    <button class="btn bad"  onclick="hate('`+ res[i].song_num +`')"
	                                                        data-bs-toggle="tooltip" data-bs-placement="bottom" 
	                                                        title="싫어요!"><span style="display:none;">싫어요</span><img
	                                                            src="resources/img/baseline_sentiment_very_dissatisfied_black_24dp.png"></button>
	                                                            
	                                                </div>
	                                            <div class="col" id="lyrs">
	                                                <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics('`+res[i].song_num+`')"
	                                                    data-bs-placement="bottom" title="가사보기!"> <img
	                                                        src="resources/img/baseline_lyrics_black_24dp.png"></button>
	                                                       
	                                            </div>
	                                            <div class="col popupModalVideo ratio ratio-16x9">
	                                            <a class="btn video-btn play" data-toggle="modal" onclick="video('`+res[i].preview+`')"
	                                                data-bs-toggle="tooltip" data-video="`+res[i].preview+`"
	                                                data-bs-placement="bottom" title="미리듣기!"><img
	                                                    src="resources/img/baseline_play_circle_black_24dp.png"></a>
	                                        </div>
	                                            <div class="video_modal_popup" >
	                                                <div class="video_modal_popup-closer"></div>
	                                              </div>
	                                          
	                                            
	                                            <div class="col">
	                                                <a class="btn" id="link" data-bs-toggle="tooltip" data-toggle="modal" 
	                                                	 href="`+res[i].link+`"
	                                                    data-bs-placement="bottom" title="연습하기!"> <img
	                                                        src="resources/img/baseline_mic_black_24dp.png"></a>
	                                            </div>
	                                           
	                                        </div>
	                                    </div>
	                                        
											</li>
										</ul>
									</li>
								</ul>
								
							
					                     <div class="ft3 text-center" >
					            <button  class="btn btn-light" onclick="mainPage(0)">1</button>
					            <button class="btn btn-light" onclick="mainPage(4)">2</button>
					            <button class="btn btn-light"onclick="mainPage(8)">3</button>
					          
					        </div>
	        				 `
	        			 
	        			 $('#tbody').append(tr);
	        			 } 
							

							
							
							
							
						},error : function(e) {
       			
						}
					});
       		
       		 },
       		 error : function(){
       			
       		 },
       	 
       	 });
        };
        
   
	</script>


</body>

</html>
