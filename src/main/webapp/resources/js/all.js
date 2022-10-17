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
                           
                            break; 
                        
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
                     
                        break;
                   }
                   
               }
           
           
               $.ajax({
                           url : 'lyrics',
                           type : 'get',
                           data : {
                               num : songnumber
                           },
                           dataType : 'text',
                           success : function(res){
                               
                               
                               var text = /@/g;
                            
                               var lyicss=res.replace(text,'\n')
                         
                               var j = 0;
                               
                               window.open("lyrics.do", "ly", "width=400px, height=300px, left=750px, top=300px");
                               
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


// bad 페이지

	// 싫어요 리스트
	
   

// 좋아요페이지
	
