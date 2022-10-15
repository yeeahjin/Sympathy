/**
 * 
 */

// 메인
// 검색 버튼/엔터 
        
function moveFocus(next) {
    if(event.keyCode == 13){
        let btn_submit = document.getElementById(next).focus();
    }
}

function enterkey() {
    kb_songList(document.getElementById("userinput").value);
     $('#list').fadeIn();
    document.getElementById('search2').blur();
}

// 모델
	
function kb_songList(userinput){
    /* alert(userinput);  */
   
   $.ajax({
       url : 'http://b085-35-229-22-2.ngrok.io',
       type:'get',
       data : {
           input : userinput
       },
       headers : {
          "ngrok-skip-browser-warning" : "12345",
      },
       dataType:'text',
       success:function(res){
          /* alert(res) */

          $.ajax({
              url : 'kbsongList.do',
              type : 'get', 
              dataType:"json",
              data: {
                  result : res
              },
              success : function(res) {
                   console.log(res)
                   console.log(res[0])
                   console.log(res[0].img) 
                   
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
                      
                   `
               
               $('#tbody').append(tr);
               } 
                   
							td = `
							<div class="text-center">
					            <button  class="btn btn-link" onclick="mainPage(0)">1</button>
					            <button class="btn btn-link" onclick="mainPage(4)">2</button>
					            <button class="btn btn-link" onclick="mainPage(8)">3</button></div>`
	        			 $('#tbody').append(td);
                  
                  
                  
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

// list 닫기
         
         
function hide() {
            
    $('#list').fadeOut();

}

// 미리듣기 버튼 클릭시
function video(aa){

    $(".video_modal_popup").addClass("reveal"),
        $(".video_modal_popup .video-wrapper").remove(),
        $(".video_modal_popup").append("<div class='video-wrapper'><iframe src='https://youtube.com/embed/" + aa + "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")

     $(".video_modal_popup-closer").click(function () {
        $(".video_modal_popup .video-wrapper").remove(),
            $(".video_modal_popup").removeClass("reveal")
     }) 

}

// 좋아요 버튼 클릭
	 
function like(songnumber) {
				
    for (var i=1; i<4; i++){
           
             if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){ 
               console.log(songnumber)
               console.log(i)
                break; 
               
           } 
           
       }
       if ($('ul.scroll_list:nth-child('+i+')  button.like > span').text() == '좋아요')  {
                $('ul.scroll_list:nth-child('+i+')  button.like > span').text('dislike')
                                                                       // 싫어요를 비활성화 시킴
               $('ul.scroll_list:nth-child('+i+')  button.bad').prop("disabled", true); 
                                                                       // 좋아요 추가
               $.ajax({
                   url : 'songinsert',
                   type : 'get', // get post
                   data : {
                       songnumber : songnumber
                   },
                   dataType : 'text',
                   success : function(res) {
                       
                       Swal.fire({
                           icon : 'success',
                           title : '저장되었습니다!',
                           text : '마이페이지에서 확인가능해용',
                           showConfirmButton : false,
                           timer : 1500
                       });
                   },
                   error : function(e) {
                       Swal.fire({
                           icon : 'error',
                           title : '저장 실패!',
                           text : '로그인이 필요합니다!',
                           showConfirmButton : false,
                           timer : 1500
                       });
                       console.log(songnumber);
                   }
               });
           } 
                                                                     // 아이디 값이 like가 아닐 때 즉 dislike일 때 실행
                                                                     // dislike를 like로 바꿔주고 삭제
       else {
           $('ul.scroll_list:nth-child('+i+')  button.like > span').text('좋아요')
           $('ul.scroll_list:nth-child('+i+')  button.bad').prop("disabled", false); 						
           $.ajax({
                   url : 'songdelete',
                   type : 'get', // get post
                   data : {
                       songnumber : songnumber
                   },
                   dataType : 'text',
                   success : function(res) {
                       alert("좋아요성공22222");
                   },
                   error : function(e) {
                       Swal.fire({
                           icon : 'error',
                           title : '저장 실패!',
                           text : '로그인이 필요합니다!',
                           showConfirmButton : false,
                           timer : 1500
                       });
                   }
               });

           }
       }

       	// 싫어요
			 function hate(songnumber) {
				
                for (var i=1; i<4; i++){
                       
                         if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){ 
                           console.log(songnumber)
                           console.log(i)
                            break; 
                           /* document.getElementById('song_number').innerHTML */		
                       } 
                       
                   }
                   
                
                
                                                                                    // 아이디 값이 like일 때 dislike로 변경
                   if ($('ul.scroll_list:nth-child('+i+')  button.bad > span').text() == '싫어요')  {
                       
                       
                            $('ul.scroll_list:nth-child('+i+')  button.bad > span').text('시러요취소')
                                                                                   // 싫어요를 비활성화 시킴
                           $('ul.scroll_list:nth-child('+i+')  button.like').prop("disabled", true); 
                                                                                   
                           
                                                                                   // 좋아요 추가
                           $.ajax({
                               url : 'hateinsert',
                               type : 'get', // get post
                               data : {
                                   songnumber : songnumber
                               },
                               dataType : 'text',
                               success : function(res) {
                                   Swal.fire({
                                       icon : 'success',
                                       title : '저장되었습니다!',
                                       text : '마이페이지에서 확인가능해용',
                                       showConfirmButton : false,
                                       timer : 1500
                                   });
                               },
                               error : function(e) {
                                   Swal.fire({
                                       icon : 'error',
                                       title : '저장 실패!',
                                       text : '로그인이 필요합니다!',
                                       showConfirmButton : false,
                                       timer : 1500
                                   });
                                   console.log(songnumber);
                               }
                           });
                       } 
                                                                                 // 아이디 값이 like가 아닐 때 즉 dislike일 때 실행
                                                                                 // dislike를 like로 바꿔주고 삭제
                   else {
                       $('ul.scroll_list:nth-child('+i+')  button.bad>span').text('싫어요')
                       $('ul.scroll_list:nth-child('+i+')  button.like').prop("disabled", false); 						
                       $.ajax({
                               url : 'hatedelete',
                               type : 'get', // get post
                               data : {
                                   songnumber : songnumber
                               },
                               dataType : 'text',
                               success : function(res) {
                                   alert("성공22222");
                               },
                               error : function(e) {
                                   Swal.fire({
                                       icon : 'error',
                                       title : '저장 실패!',
                                       text : '로그인이 필요합니다!',
                                       showConfirmButton : false,
                                       timer : 1500
                                   });
                               }
                           });
   
                       }
                   }
                   
		
		
		  //가사
		 function lyrics(songnumber){
				
            for (var i=1; i<4; i++){
                   
                     if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){
                       console.log(songnumber)
                       console.log(i)
                        break;
                   }
                   
               }
           
               console.log("번호")
               console.log(i)
               $.ajax({
                           url : 'lyrics',
                           type : 'get',
                           data : {
                               num : songnumber
                           },
                           dataType : 'text',
                           success : function(res){
                               console.log(res) // 가사
                               console.log(songnumber+ "songnumber") //
                               
                               var text = /@/g;
                               console.log(text);
                               var lyicss=res.replace(text,'\n')
                               console.log(lyicss)
                               var j = 0;
                               
                               Swal.fire(lyicss)				
                               
                                   if ($('ul.scroll_list:nth-child('+i+')  button.ly > span').text() == '가사') {
                                   
                       
                                           /*  $('div#lyrs').append("<ul class='scroll_list' style='padding-left: 0px;'><div ='col'>" + res + "</div></ul>") 
                                             $('div#lyrs').append("<ul class='scroll_list' style='padding-left: 0px;'><div ='col'>" + res + "</div></ul>") 
                                            $('#tbody').append("<div></>")
                                       $('tr').last().append(
                                       "<td>" + res + "</td>")  */
                                   
                                   
                                   
                                   
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
                                   alert('error');
                                   }
                               
                           
                               });      
           } 


// bad 페이지

	// 싫어요 리스트
	
   

// 좋아요페이지
	
