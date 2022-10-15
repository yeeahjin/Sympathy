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
					<button class="avatar dropbtn">
						<img src="resources/img/baseline_menu_black_24dp.png" />
					</button>
					<div class="dropdown_con">
						<!-- 로그인했을때 -->
						<%
							if (session.getAttribute("user_info") != null) {
							InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
						%>
						<a><%=user_info.getNick()%>님</a> <a href="mypage.do">마이페이지</a> <a
							href="logout.do">로그아웃</a>
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

				<input type="text" id="userinput" class="search-input" placeholder="오늘어때"
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


		<div id='wrapper'>
			<div>
				<div class="container">
					<div class="row">


						<div class="input-form col-lg-12 mx-auto" id="list"
							style="padding-top: 20px;">

							<div class="list_wrap_track_rank" id="tbody"></div>

							<div class="d-grid">
								<div class="row">
									<div class="text-center">
										<button id="hide" type="button" style="padding: 0;"
											class="btn btn-default w-25 p-3" onclick="hide()">접기</button>
									</div>
								</div>
							</div>


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
			                //   imageUrl: 'https://placeholder.pics/slvg/300x1500',
			                imageHeight: 1500,
			                imageAlt: 'A tall image'
			            });
				}
				
		);
	</script>
	<script>
		var tooltipTriggerList = [].slice.call(document
				.querySelectorAll('[data-bs-toggle="tooltip"]'));
		var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
			return new bootstrap.Tooltip(tooltipTriggerEl)
		});
	</script>


</body>

</html>
