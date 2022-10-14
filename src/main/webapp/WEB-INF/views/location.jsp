<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공감-노래방위치</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">


<style>
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 350px;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}

.box {
	position: sticky;
	max-width: 50%;
	max-height: 50%;
}

.over {
	position: relative;
}

.over2 {
	position: absolute;
}

.mar {
	margin-left: 70px;
	margin-right: 70px;
}

.map {
	width: 100%;
	height: 56%;
}

#button-addon2{
    color: #2ab3c0;
    border-color: #2ab3c0;
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



	<div class="container eJEMVp" style="width: 606px;">

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
					<a href="mypage.do">마이페이지</a>
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
			</div>
		</header>

		<div class="container">
			<div class="row g-2">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
		</div>

		<div class="container">
			<h3 class=" text-center">🎤 내 주변 노래방 🎶</h3>
		</div>

		<div class="container">
			<div class="row g-2">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="input-group mb-3">

					<input type="text" id="positionSearch" class="form-control rounded"
						placeholder="현재 내 위치" aria-label="사용자위치"
						aria-describedby="button-addon2" name="location"
						onkeydown="moveFocus('button-addon2')">
						
					<button onfocus="enterkey()" class="btn btn-outline-primary rounded"
						id="button-addon2">검색</button>
					<!-- <button onfocus="enterkey()" id="submit" id="button-addon2" class="btn btn-outline-primary" >전송</button> -->

					<script>

				function moveFocus(next) {
					if(event.keyCode == 13){
						let btn_submit = document.getElementById(next).focus();
					}
				}
				
				function enterkey() {
					let search = document.getElementById("positionSearch").value;
					/* alert(search) */
					
			        // 주소-좌표 변환 객체를 생성합니다
			        var geocoder = new kakao.maps.services.Geocoder();
			
			        // 주소로 좌표를 검색합니다
			        geocoder.addressSearch(search, function (result, status) {
		
		            // 정상적으로 검색이 완료됐으면 
		            if (status === kakao.maps.services.Status.OK) {
		
		                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		               <%--  // 결과값으로 받은 위치를 마커로 표시합니다
		                var marker = new kakao.maps.Marker({
		                    map: map,
		                    position: coords
		                });
		
		                // 인포윈도우로 장소에 대한 설명을 표시합니다
		                var infowindow = new kakao.maps.InfoWindow({
		                    content: '<div style="width:150px;text-align:center;padding:6px 0;"><div style="font-weight: bold;"><%=store_name%></div><div>1등당첨횟수 : <%=win_cnt%></div></div>'
		                });
		                infowindow.open(map, marker); --%>
		
		                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                map.setCenter(coords);
		            }
		        });    
	        
					document.getElementById('button-addon2').blur();
				}
				
				
				</script>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="row g-2">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row g-2">
				<div class="col-6">
					<div class="p-3"></div>
				</div>
			</div>
		</div>

		<!-- 지도를 표시할 div 입니다 -->
		
		
		<div id="map" class="map border" style="width: 100%; height: 450px;">


			<!--주소-좌표 변환을 할수 있을 services 라이브러리 불러오기-->
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9bceb0a617b7975a4913ac59f7601656&libraries=services"></script>

			<!--실제 지도를 그리는 javascript API를 불러오기-->
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9bceb0a617b7975a4913ac59f7601656"></script>

			<script type="text/javascript">

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.16017229999956,
							126.84807380000012), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };

			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
 		
	        $(document).ready(locationList);

	        function locationList() {
				$.ajax({
					url : 'locationList.do',
					type : 'get',
					dataType : 'json',
					success : function(res){
						
						console.log(res[0].address);
						
 						for (var i=0; i<res.length; i++){ 
							
	             	  	 var coords = new kakao.maps.LatLng(res[i].y, res[i].x);
		
		  				// 결과값으로 받은 위치를 마커로 표시합니다
		                var marker = new kakao.maps.Marker({
		                    map: map,
		                    position: coords
		                });
		  				
		  				
				    // 마커에 표시할 인포윈도우를 생성합니다 
				    var infowindow = new kakao.maps.InfoWindow({
				        content: res[i].location_title // 인포윈도우에 표시할 내용
				    });
				    
				    
				    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
				    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
				    (function(marker, infowindow) {
				        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
				        kakao.maps.event.addListener(marker, 'mouseover', function() {
				            infowindow.open(map, marker);
				        });

				        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
				        kakao.maps.event.addListener(marker, 'mouseout', function() {
				            infowindow.close();
				        });
				    })(marker, infowindow);
				    
				    
 						}

				
					},
					error : function(e) {
						alert('error!');
					}
				});
				
			}

    </script>









































		</div>

		<div id="wrapper7">
			<div></div>
		</div>



		<footer class="menu ft">

			<div class="menu-inner">
				<a href="go" class="menu-item active"> <i class="ai-home"></i>
				</a> <a href="golocation.do" class="menu-item"> <img
					src="resources/img/free-icon-location-535239.png" />
				</a> <a href="chart.do" class="menu-item"> <img
					src="resources/img/free-icon-trending-8344976.png" />
				</a>

			</div>

		</footer>








	</div>



	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src='https://unpkg.com/akar-icons-fonts'></script>
	<script>
		/* 	$(document).ready(
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
					}); */

		/* 		$(document).ready(function() {
		 $('#list').css({
		 display : 'none'
		 });
		 }) */

		function List() {
			$('#song').on('click', function() {
				$('#list').fadeIn();
			});

		}

		function hide() {
			$('#hide').on('click', function() {
				$('#list').fadeOut();
			});
		}
	</script>


</body>

</html>