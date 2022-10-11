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


    <style>
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



        form {
            width: 500px;
        }

        table {
            border-collapse: collapse;
            margin-bottom: 10px;
        }

        th,
        td {
            padding: 3px 10px;
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


        ul,
        li {
            list-style-type: none;
        }

        .list_wrap_track_rank {
    position: relative;
    margin: 0 -9px 0 -10px;

}

#scrolly{
            width: auto;
             height: 500px; 
            overflow: scroll;
            
            overflow-y: hidden;
            margin: 0 auto;
            white-space: normal;
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

                <button class="avatar">
                    <img src="img/baseline_menu_black_24dp.png" />
                </button>
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
            <div class="input-form col-lg-12 mx-auto overflow-scroll " id="scrolly">
            <div class="list_wrap_track_rank">
                <ul class="scroll_list" style="
                padding-left: 0px;
            ">
                    <li class="list_item">
                        <ul>
                        <li class="list_track_row">
                            <!-- 노래방번호 -->
                            <div class="thumb text-center">
                                <span >111</span>
                            </div>
                            <!-- 이미지 -->
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <!-- 제목 -->
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <!-- 가수 -->
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                            <audio id="audio" src="https://www.youtube.com/watch?v=Xqk8wgvOgW4"></audio>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb text-center">
                                <span >111</span>
                            </div>
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb text-center">
                                <span >111</span>
                            </div>
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!" onclick="play()"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                            
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb text-center">
                                <span >111</span>
                            </div>
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>                           
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb text-center">
                                <span >111</span>
                            </div>
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                        <li class="list_track_row">
                            <div class="thumb">
                                <div class="inner">
                                    <img src="img/10043982_500.jpg" >
                                </div>
                            </div>

                            
                            <div class="song_area col-6">
                                <div class="song">
                                    <a href="#" class="title fs-5" style="margin-top: 0;">
                                        부담이 돼
                                    
                                    </a>
                                </div>
                                <div class="artist">
                                    <span >
                                        정키
                                    </span>
                                </div>
                            </div>
                            
                 

                        <div class="song_area col-6">
                            <div class="row ">
                                <div class="col">
                                    <button  class="btn" id="lyrics" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="가사보기!"> <img
                                            src="img/baseline_lyrics_black_24dp.png"></button>
                                           
                                </div>
                                <div class="col">
                                    <button class="btn" id="play" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="미리듣기!"><img
                                            src="img/baseline_play_circle_black_24dp.png"></button>
                                </div>
                                <div class="col">
                                    <button class="btn" id="link" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" title="연습하기!"> <img
                                            src="img/baseline_mic_black_24dp.png"></button>
                                </div>
                            </div>
                        </div>
                        </li>
                    </ul>

                    
                    </li>
                </ul>

            </div>
        </div>


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



            <!-- <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav> -->
        </div>



        <div id="wrapper9">
            <div>

            </div>

        </div>

        <footer class="menu footer1">

            <div class="menu-inner">
                <a href="index.html" class="menu-item active">
                    <i class="ai-home"></i>
                </a>
                <a href="location.html" class="menu-item">
                    <img src="img/free-icon-location-535239.png" />
                </a>
                <a href="trend.html" class="menu-item">
                    <img src="img/free-icon-trending-8344976.png" />
                </a>

            </div>

        </footer>

    </div>
</div>

    <script src='https://unpkg.com/akar-icons-fonts'></script>
    <script src="js/jquery-3.3.1.min.js"></script>
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

     

    </script>
   
</body>

</html>