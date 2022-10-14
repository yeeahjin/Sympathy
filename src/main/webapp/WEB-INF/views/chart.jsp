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
   
    </style>
</head>

<body id="back">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>




    <div class="container eJEMVp" style="width: 606px;">

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
            </div>
        </header>

        <div class="container">
            <div class="row gy-5">
                <div class="col-6">
                    <div class="p-3"></div>
                </div>
            </div>

        </div>

        

            <h3 class=" text-center"> 🎤 9월 인기차트 🎶 </h3>
            <div class="container">
                <div class="row gy-5">
                    <div class="col-6">
                        <div class="p-3"></div>
                    </div>
                </div>
    
            </div>
            <div class="input-form col-lg-12 mx-auto">
            <div class="list_wrap_track_rank"  id="tbody">
      

            </div>
        </div>
        
        <div id="pagination"></div>


            <div class="container">
                <div class="row gy-5">
                    <div class="col-6">
                        <div class="p-3"></div>
                    </div>
                </div>

            </div>

      
     


        <div class="container">
            <div class="row gy-5">
                <div class="col-6">
                    <div class="p-3"></div>
                </div>
            </div>

        </div>
        <div class="btnContent">



           
        </div>



        <div id="wrapper9">
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
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
 	<script src="resources/js/jquery.twbsPagination2.js"></script> -
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
        
        
        
        function chartList(){
       	 	
                	
       	 $.ajax({
       		 url : 'ingichart',
       		 type:'get',
       		 dataType:'json',
       		 success:function(res){
       			
       			console.log("성공")
       		 	
  			 $('#tbody').html(''); 

       			 for(var i = 0; i < res.length; i++){
       				
       				 tr = `
       						<ul class="scroll_list"  style="padding-left: 0px;" >
								<li class="list_item">
									<ul style="padding-left: 0px;" >
										<li class="list_track_row " >
											<div class="thumb text-center">
												<span>`+res[i].song_se+`</span>
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
     
        
      /*   window.pagObj = $('#pagination').twbsPagination({
            totalPages: [[${dataListPage.totalPages}]], // 전체 페이지
            startPage: parseInt([[${dataListPage.number}]] + 1), // 시작(현재) 페이지
            visiblePages: 10, // 최대로 보여줄 페이지
            prev: "‹", // Previous Button Label
            next: "›", // Next Button Label
            first: '«', // First Button Label
            last: '»', // Last Button Label
            onPageClick: function (event, page) { // Page Click event
                console.info("current page : " + page);
            }
        }).on('page', function (event, page) {
            searchDataList(page);
        }); */


    </script>
  
</body>

</html>