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
</style>
</head>

<body id="back">



	<div class="container eJEMVp fixed-top">
		<header class="header">
			<div class="header-logo">
				<div>
					<span></span> <span></span> <span></span> <span></span>
				</div>
			</div>
			<div class="header-title">공감</div>
			<div class="header-buttons">

				<button class="avatar">
					<img src="resources/img/baseline_menu_black_24dp.png" />
				</button>
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

<div class="input-form col-lg-12 mx-auto " id="list">
		<div class="list_wrap_track_rank" id="tbody">
		</div>
</div>
		<div id="wrapper8">
			<div></div>

		</div>

		<footer class="menu footer1">

			<div class="menu-inner">
				<a href="index.html" class="menu-item active"> <i
					class="ai-home"></i>
				</a> <a href="location.html" class="menu-item"> <img
					src="resources/img/free-icon-location-535239.png" />
				</a> <a href="trend.html" class="menu-item"> <img
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
      console.log(body_width);
      if (body_width > 570) {
        console.log('크기변경')
        $('.eJEMVp').width(576);
      }
      
      song();
     
      
    });

/*     $('#change').click(function () {
      //  만약에 성공하면
      Swal.fire({

        icon: 'success',
        title: '회원정보수정 성공!',
        showConfirmButton: false,
        timer: 1500
      });

      // 만약에 실패하면


    }); */
	// 좋아요 리스트
	
	 function song(){
			$.ajax({
			url : 'songList',
			type : 'get',
			data : {
				
			},
			dataType : 'json',
			success : function(res) {
			console.log("들어옴");
		
			let songlist = res
			console.log(songlist);
			console.log(songlist[0].song_num);
			
	     	 $.ajax({
	      		 url : 'goodList',
	      		 type:'get',
	      		dataType:'json',
	      		 success:function(res){
	      			alert("성공송");
	      			console.log(res[0].song_num);
	      			console.log(res);
	      			console.log(songlist);
	      			console.log(res.length);
	      			if(songlist.song_num == res.song_num ){
	      				$('#tbody').html('');
	      				for(var i=0; i<res.length;i++){
	      				console.log(songlist[i].song_title);
	      				console.log(songlist[i].singer);
	      				console.log(songlist[i].img);
	      				console.log(songlist[i].link);
	      				console.log(songlist[i].preview);
	      				
	      				
	      				tr2=`
	          				
	        				  <ul class="scroll_list" style="padding-left: 0px;">
	        				      <li class="list_item">
	        				          <ul style="padding-left: 0px;">
	        				          <li class="list_track_row">
	        				            <div class="thumb text-center" id="song_number">
	        				          <span>`+songlist[i].song_num+`</span>
	        				          </div>
	        				              <div class="thumb">
	        				                  <div class="inner">
	        				                <img src='`+songlist[i].img+`'>
	        				                  </div>
	        				              </div>

	        				              
	        				              <div class="song_area col-6">
	        				                  <div class="song">
	        				                      <a href="#" class="title fs-5" style="margin-top: 0;">
	        				                    `+songlist[i].song_title+`
	        				                      
	        				                      </a>
	        				                  </div>
	        				                  <div class="artist">
	        				                <span >
	                                      `+songlist[i].singer+`
	                                   </span>
	        				                  </div>
	        				              </div>
	        				              
	        				   

	        				          <div class="song_area col-6">
	        				              <div class="row ">
	        				                  <div class="col">
	        				                      <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
	        				                          data-bs-placement="bottom" title="가사보기!"> <img
	        				                              src="resources/img/baseline_lyrics_black_24dp.png"></button>
	        				                             
	        				                  </div>
	        				                  <div class="col">
	        				                      <button class="btn" id="play" data-bs-toggle="tooltip"
	        				                          data-bs-placement="bottom" title="미리듣기!"><img
	        				                              src="resources/img/baseline_play_circle_black_24dp.png"></button>
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
	                                      $('#tbody').append(tr2); 
	      				}
	      				
	      			}
	      		 
			},
			error : function(e) {
				
			}
		});
	}
	
			}) 
    
};
			
			/* function goodList(){
   	 	
    	
 
      			
 			  $('#tbody').html('');
      		
      			for(var i = 1; i<5; i++){
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
      				              
      				   

      				          <div class="song_area col-6">
      				              <div class="row ">
      				                  <div class="col">
      				                      <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
      				                          data-bs-placement="bottom" title="가사보기!"> <img
      				                              src="resources/img/baseline_lyrics_black_24dp.png"></button>
      				                             
      				                  </div>
      				                  <div class="col">
      				                      <button class="btn" id="play" data-bs-toggle="tooltip"
      				                          data-bs-placement="bottom" title="미리듣기!"><img
      				                              src="resources/img/baseline_play_circle_black_24dp.png"></button>
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
      				$('#tbody').append(tr2); 
      			}
      		 
      		 },
 			 error:function(e){
      				alert("실패 good");
      				}
      		 }
    }*/
      
	
  </script>
</body>

</html>