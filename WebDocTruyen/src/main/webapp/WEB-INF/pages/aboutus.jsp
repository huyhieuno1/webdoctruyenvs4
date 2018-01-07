<!DOCTYPE html>
<html>

<head>
    <title>Home page</title>
    <meta charset="UTF-8">
    <link rel="icon" href="./images/icon.jpg">
    <link rel="stylesheet" href="./lib/bootstrap/bootstrap.min.css">
    <script src="./lib/bootstrap/jquery.min.js"></script>
    <script src="./lib/bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <!-- <script src="./lib/w3.js"></script> -->
</head>

<body>
    <div class="container">
        <!-- LoginForm ------>
        <div id="id01" class="modal row">
            <div class="col-md-4"></div>
            <form class="modal-content animate col-md-4" action="/action_page.php">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <img src="./images/img_avatar2.png" alt="Avatar" class="avatar">
                </div>

                <div class="containerr">
                    <label><b>Username</b></label>
                    <input class="form-control" type="text" placeholder="Enter Username" name="uname" required>
                    <br />
                    <label><b>Password</b></label>
                    <input class="form-control" type="password" placeholder="Enter Password" name="psw" required>

                    <br />
                    <input type="checkbox" checked="checked"> Remember me
                    <br /><br />
                    <button class="btn enterLogin" type="submit">Login</button>
                </div>
            </form>
            <div class="col-md-4"></div>
        </div>
        <!-- LoginForm ------>
        <div id="id02" class="modal row">
            <div class="col-md-4"></div>
            <form class="modal-content animate col-md-4" action="/action_page.php">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <img src="./images/img_avatar1.png" alt="Avatar" class="avatar">
                </div>

                <div class="containerr">
                    <label><b>Username</b></label>
                    <input class="form-control" type="text" placeholder="Enter Username" name="uname" required>
                    <br />
                    <label><b>Password</b></label>
                    <input class="form-control" type="password" placeholder="Enter Password" name="psw" required>
                    <br />
                    <label><b>Fullname</b></label>
                    <input class="form-control" type="text" placeholder="Enter Fullname" name="fname" required>
                    <br /><br />
                    <button class="btn enterLogin" type="submit">Login</button>
                </div>
            </form>
            <div class="col-md-4"></div>
        </div>
        <!-- menu bar dropdown -->
        <nav class="navbar-default wrapper navbar-fixed-top">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img class="background" src="./images/bac.png" alt="Home">
                </a>
            </div>
            <div id="navbar" class="collapse navbar-collapse top">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.html">
                            <span class="glyphicon glyphicon-home"></span>
                            Home
                        </a>
                    </li>
                    <li class="dropdown">

                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicon glyphicon-list"></span>
                            Thể loại <span class="caret "></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="category.html">Hài</a></li>
                            <li><a href="category.html">Bựa</a></li>
                            <li><a href="category.html">Đã hài lại còn bựa</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="aboutus.html">
                            <span class="glyphicon glyphicon-eye-open"></span> Giới thiệu
                        </a>
                    </li>
                    <li>
                        <a href="contact.html">
                            <span class="glyphicon glyphicon-envelope"></span> Liên hệ
                        </a>
                    </li>

                </ul>
                <ul class="nav navbar-nav navbar-right login">
                    <li>
                        <form id="search" style="margin-left: 15px;">
                            <input type="text" name="search" placeholder="Tìm kiếm truyện...">
                        </form>
                    </li>
                    <li>
                        <!-- <a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a> -->
                        <button class="btnSignup" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-user"></span> Đăng ký</button>
                    </li>
                    <li>
                        <button class="btnLogin" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</button>
                    </li>
                </ul>

        </nav>
        <!-- slide -->
        <div class="slideshow-container" style="top: 10%;">

            <a href="#" class="mySlides fade">
                <img src="./images/slide/1.jpg" style="width:100%">
                <div class="text">Caption Text</div>
            </a href="#">

            <a href="#" class="mySlides fade">
                <img src="./images/slide/2.jpg" style="width:100%">
                <div class="text">Caption Two</div>
            </a href="#">

            <a href="#" class="mySlides fade">
                <img src="./images/slide/3.jpg" style="width:100%">
                <div class="text">Caption Three</div>
            </a href="#">

        </div>
        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>
        <!-- js -->
        <!-- end slide -->

<div class="row">
    <!-- left-bar -->
    <div class="col-sm-2 adv">
        <a href="">
            <img width="100%" src="./images/adv1.gif">
        </a>
            <a href="">
            <img width="100%" src="./images/adv1.gif">
        </a>
        </div>
        <!-- main -------------------------------------------------------------------------->
        <div class="col-sm-6 main">

            <div class="col-md-12">
                <p  class="aboutme">
                    <a href="index.html">XaXiChet.com </a>là một website chuyên chia sẻ trực tuyến được cộng đồng yêu truyện Việt Nam cực kì yêu thích. Kho truyện trên trang vô cùng phong phú với đủ các thể loại từ ngôn tình Trung Quốc, truyện trinh thám, fanfic đến truyện hiện đại Việt Nam. Ngoài đọc online, Wattpad còn đưa đến cho người dùng một ứng dụng cực kì hữu dụng trên thiết bị di động, bạn có thể tải toàn bộ câu chuyện và đọc ngoại tuyến khi không có kết nối internet. Ngoài ra bạn cũng có thể tương tác với các tác giả và những người cùng sở thích, tự do viết những câu chuyện của riêng mình mà không bị gò bó về thể loại hay số chữ, chỉ cần bạn có một tài khoản trên trang web thì bạn có thể thực hiện tất cả những điều đó ở bất cứ nơi đâu. Ngoài ra Wattpad còn hỗ trợ nhiều ngôn ngữ khác nhau cho bạn thỏa sức học tập, rèn luyện khả năng ngoại ngữ của mình, Wattpad cũng là nơi chia sẻ những kiến thức xã hội, những bài học online hoàn toàn miễn phí. 
                </p>
            </div>

        </div>
        <!-- main -------------------------------------------------------------------------->

        <!-- right-bar -->
        <div class="col-sm-4 right">
            <div class="col-sm-12 top-rating">
                <h4>Top rating</h4>
                <ul>
                    <li>
                        <a class="col-sm-7" href="">Sò lông</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>

                        </p>
                    </li>
                    <li>
                        <a class="col-sm-7" href="">Hiệu hãm</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                        </p>
                    </li>
                    <li>
                        <a class="col-sm-7" href="">Huy hãm ***</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>

                        </p>
                    </li>
                </ul>
            </div>
            <div class="col-sm-12 last-cmt">
                <h4>Last comment</h4>
            </div>
        </div>
        </div>
    </div>
    <div class="navbar-default wrapper">
        <div class="end-text">
            <p class="col-sm-3" style="margin-top: 15px">
                Design by TEAM 4 © 2017
                <!-- a href="#" -->
            </p>
            <p class="col-sm-6">

            </p>
            <p class="col-sm-3 version" style="margin-top: 15px">Version 18.1</p>
        </div>
    </div>

</body>
<script>
    w3.includeHTML();
</script>
<script src="./lib/myJS/app.js"></script>

</html>
<!-- <div style="min-height: 30px;"></div> -->