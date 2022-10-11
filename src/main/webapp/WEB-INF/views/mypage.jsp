<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공감-마이페이지</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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

        .but {
            display: block;
            width: 100%;
            height: 100%;
        }

        .over {
            position: relative;
        }

        .img {
            position: relative;
        }

        .con {
            position: absolute;
            top: 35%;
            
            
        }

        .fold {
            display: inline-flex;
        }
    </style>
</head>

<body id="back">



    <div class="container eJEMVp fixed-top">
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
            <div class="row justify-content-center">

                <!-- partial:index.partial.html -->
                <div class='music'>
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



        <main>
            <div class="input-form-background row">
                <div class="input-form col-lg-12 mx-auto  shadow-none ">
                    <div class="container con">
                        <div class="row row-cols-2 g-2 gy-5 fold">
                            <div class="col text-center">
                                <button class="btn btn-lg bold" onclick="location.href='change.html'">회원정보수정</button>
                                <div>
                                    <span>PW와 닉네임을 변경</span>
                                </div>
                            </div>



                            <div class="col text-center">

                                <button class="btn btn-lg bold" onclick="location.href='out.html'">회원탈퇴</button>
                                <div>
                                    <span>탈퇴</span>
                                </div>
                            </div>

                            <div class="col text-center">

                                <button class="btn btn-lg bold" onclick="location.href='good.html'">좋아요</button>
                                <div>
                                    <span>찜한노래</span>
                                </div>
                            </div>
                            <div class="col text-center">

                                <button class="btn btn-lg bold" onclick="location.href='bad.html'">싫어요</button>
                                <div>
                                    <span>추천안받고싶은노래</span>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>


            </div>
        </main>

        <div id="wrapper3">
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
    <script src='https://unpkg.com/akar-icons-fonts'></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
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

        //  페이지 로드 후 숨김 -> 버튼 클릭시 띄우기
        $(document).ready(function () {
            $('#info_c').hide();
        });

        function ic() {
            $('#cb').click(function () {
                $('#info_c').show();
            })
        }

        $('#change').click(function () {
            //  만약에 성공하면
            Swal.fire({

                icon: 'success',
                title: '회원정보수정 성공!',
                showConfirmButton: false,
                timer: 1500
            });



            // 만약에 실패하면


        });




    </script>
</body>

</html>