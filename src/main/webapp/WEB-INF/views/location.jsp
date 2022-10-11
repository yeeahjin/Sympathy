<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공감-노래방위치</title>
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

        .map {
    width: 100%;
    height: 56%;
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
        <img src="resources/img/baseline_menu_black_24dp.png" />
              </button>
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
            
                <!-- <div class="col-6">
                    <div class="p-3"> -->
                        <h3 class=" text-center"> 🎤 내 주변 노래방 🎶 </h3>
                    <!-- </div>
                
            </div> -->
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
            <input type="text" class="form-control" placeholder="현재 내 위치" aria-label="사용자위치" aria-describedby="button-addon2">
            <button class="btn btn-outline-primary" type="button" id="button-addon2">검색</button>
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

        <div class="map border">

        </div>

          <div id="wrapper7">
            <div></div>
          </div>
          
          

          <footer class="menu footer1">
          
            <div class="menu-inner">
                <a href="Main.jsp" class="menu-item active">
                    <i class="ai-home"></i>
                </a>
                <a href="location.jsp" class="menu-item">
                    <img src="resources/img/free-icon-location-535239.png" />
                </a>
                <a href="chart.jsp" class="menu-item">
                   <img src="resources/img/free-icon-trending-8344976.png" />
                </a>
                
            </div>
          
          </footer>


         





    </div>

    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src='https://unpkg.com/akar-icons-fonts'></script>
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


        $(document).ready(function(){
            $('#list').css({display: 'none'});
        })

        function List(){
            $('#song').on('click', function(){
                $('#list').fadeIn();
            });
          

        }
        
        function hide(){
            $('#hide').on('click', function(){
                $('#list').fadeOut();
            });
        }




    </script>

    
</body>

</html>