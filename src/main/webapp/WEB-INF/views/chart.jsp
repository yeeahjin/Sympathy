<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공감-인기차트</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/font.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
	<script src="resources/js/all.js"></script>
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>

        form {
            width: 500px;
        }

      
       
        .off-screen {
            display: none;
        }

        #nav {
            width: 500px;
            text-align: center;
        }

        #nav a {
            display: inline-block;
            padding: 3px 5px;
            margin-right: 10px;
            font-family: Tahoma;
            background: #ccc;
            color: #000;
            text-decoration: none;
        }

        #nav a.active {
            background: #333;
            color: #fff;
        }

        #pagination a {
            display: inline-block;
            margin-right: 5px;
            cursor: pointer;
        }


      

        .list_wrap_track_rank {
    position: relative;
    margin: 0 -9px 0 -10px;

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

.go2:hover{
text-decoration: none;
color:#0a58ca;
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

  #0d6efd
    </style>
</head>

<body id="back">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>




    <div class="container eJEMVp" style="width: 606px;">

        <header class="header">
            <div class="header-logo">
               
            </div>
            <div class="header-title">
                 <a href="go" class="go2">공감</a>
            </div>
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
            </div>
        </header>

        <div class="container">
            <div class="row gy-5">
                <div class="col-6">
                    <div class="p-3"></div>
                </div>
            </div>

        </div>

        

            <h3 class=" text-center"> 🎤 이달의 인기차트 🎶 </h3>
            <div class="container">
                <div class="row gy-5">
                    <div class="col-6">
                        <div class="p-3">
                        
                        </div>
                    </div>
                </div>
    
            </div>
            <div class="input-form col-lg-12 mx-auto" id="ch">
            <div class="list_wrap_track_rank"  id="tbody">
      

            </div>
            
           
        </div>
        
       


            <div class="container">
                <div class="row gy-5">
                    <div class="col-6">
                        <div class="p-3">
                        
                        </div>
                    </div>
                </div>

            </div>

      
     


        <div class="container">
            <div class="row gy-5">
                <div class="col">
                    <div class="p-3">
                     <div class="ft2 text-center" id="btnss">
            <button  class="btn btn-light" onclick="page(1)">1</button>
            <button class="btn btn-light" onclick="page(8)">2</button>
            <button class="btn btn-light" onclick="page(16)">3</button>
            <button class="btn btn-light" onclick="page(24)">4</button>
            <button class="btn btn-light" onclick="page(32)">5</button>
            <button class="btn btn-light" onclick="page(40)">6</button>
            <button class="btn btn-light" onclick="page(48)">7</button>
            <button class="btn btn-light" onclick="page(56)">8</button>
            <button class="btn btn-light" onclick="page(64)">9</button>
            <button class="btn btn-light" onclick="page(72)">10</button>
            <button class="btn btn-light" onclick="page(80)">11</button>
            <button class="btn btn-light" onclick="page(88)">12</button>
            <button class="btn btn-light" onclick="page(96); ch();">13</button>
            </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="btnContent">



           
        </div>



   <!--      <div id="wrapper9">
            <div>

            </div>

        </div> -->

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
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src='https://unpkg.com/akar-icons-fonts'></script>
    <script src="resources/js/jquery-3.3.1.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
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


        $(document).ready(function () {
            $('#list').css({ display: 'none' });
        })

        function List() {
            $('#song').on('click', function () {
                $('#list').fadeIn();
            });


        }

        function hide() {
            $('#hide').on('click', function () {
                $('#list').fadeOut();
            });
        }

        $(document).ready(function(){
        	chartList();
        });
        
        
        function ch(){
         	console.log('이얏');
         	var btns = document.getElementById('tbody');
         	btns.style.height='586px !important';
         };
       
        
        
        function chartList(){
       	 $.ajax({
       		 url : 'ingichart',
       		 type:'get',
       		 dataType:'json',
       		 success:function(res){
       			
       			
       		 	
  			 $('#tbody').html(''); 

       			 for(var i = 0; i < 7; i++){
       				
       				 tr = `
       					<ul class="scroll_list" style="padding-left: 0px;">
                         <li class="list_item">
                             <ul style="padding-left: 0px;">
                                 <li class="list_track_row">
                                     <div class="thumb text-center" >
                                         <span id="song_number">`+res[i].song_se+`</span>
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
                                     
                                     <div class="col" id="lyrs">
                                         <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics2('`+res[i].song_se+`')"
                                             data-bs-placement="bottom" title="가사보기!"> <img
                                                 src="resources/img/baseline_lyrics_black_24dp.png"></button>
                                     </div>
                                     
                                     <div class="col popupModalVideo ratio ratio-16x9" >
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
                     
							
       				 `
       			 
       			 $('#tbody').append(tr);
       			
       		
       			 }
       			 
       			 
       		 }
       	 
       	 })
        };
        
        function page(num){
        	console.log(num)
       	 $.ajax({
       		 url : 'ingichart',
       		 type:'get',
       		 dataType:'json',
       		 success:function(res){
       			
       		 	
  			 $('#tbody').html(''); 

       			 for(var i = num; i < num+7; i++){
       				
       				 tr = `
       					<ul class="scroll_list" style="padding-left: 0px;">
                         <li class="list_item">
                             <ul style="padding-left: 0px;">
                                 <li class="list_track_row">
                                     <div class="thumb text-center" >
                                         <span id="song_number">`+res[i].song_se+`</span>
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
                                     
                                       
                                     <div class="col" id="lyrs">
                                         <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics2('`+res[i].song_se+`')" data-bs-placement="bottom" title="가사보기!"> 
                                         <img src="resources/img/baseline_lyrics_black_24dp.png"></button>
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
       				 `
                                                  $('#tbody').append(tr);
       			
       			 }
       			 
       			
        		
        		
       		 }
       	 

       	 })
        };
     
  	  //가사
		 function lyrics2(songnumber){
				
           for (var i=1; i<4; i++){
                  
                    if ($('ul.scroll_list:nth-child('+i+') span#song_se').text() == songnumber){
                      
                       break;
                  }
                  
              }
          
             
              $.ajax({
                          url : 'lyrics2',
                          type : 'get',
                          data : {
                              num : songnumber
                          },
                          dataType : 'text',
                          success : function(res){
                             
                              
                              var text = /@/g;
                              
                              var lyicss=res.replace(text,'\n')
                             
                              var j = 0;
                              
                              
                              
                              window.open("lyrics.do", "ly", "width=400, height=300, left=750, top=300");
                              	
                              
                                  if ($('ul.scroll_list:nth-child('+i+')  button.ly > span').text() == '가사') {
                                  
                 
                                  
                                  
                                  
                                          $('ul.scroll_list:nth-child('+i+')  button.ly > span').text('가사닫기')
                                          j = 1;
                              }
                              else if (j == 0
                                  && $('ul.scroll_list:nth-child('+i+')  button.ly > span').text() == '가사닫기') {
                                  $('ul.scroll_list:nth-child('+i+')  button.ly > span').text('가사')
                                  $('tbody > tr:nth-child(' + (i+1) + ')').remove(); // 여기서 활성화된 가사를 제거해야함
                              }
                              
                              
                              
                              
                              
                          },
                              error : function(e){
                                  
                                  }
                              
                          
                              });      
          } 
	
		 function video(aa){

			    $(".video_modal_popup").addClass("reveal"),
			        $(".video_modal_popup .video-wrapper").remove(),
			        $(".video_modal_popup").append("<div class='video-wrapper'><iframe src='https://youtube.com/embed/" + aa + "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")

			     $(".video_modal_popup-closer").click(function () {
			        $(".video_modal_popup .video-wrapper").remove(),
			            $(".video_modal_popup").removeClass("reveal")
			     }) 

			}

		 var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
		 var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
		   return new bootstrap.Tooltip(tooltipTriggerEl)
		 })
    </script>
  
</body>

</html>