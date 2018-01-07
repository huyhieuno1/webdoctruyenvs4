<!DOCTYPE html>
<html>

<head>
    <title>Contact Page</title>
    <meta charset="UTF-8">
    <link rel="icon" href="./images/icon.jpg">
    <link rel="stylesheet" href="./lib/bootstrap/bootstrap.min.css">
    <script src="./lib/bootstrap/jquery.min.js"></script>
    <script src="./lib/bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <!-- <script src="./lib/w3.js"></script> -->
</head>

<body>
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
                    <li>
                        <a href="aboutus.html">
                            <span class="glyphicon glyphicon-eye-open"></span> Giới thiệu
                        </a>
                    </li>
                    <li class="active">
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
        <div style="min-height: 65px;"></div>
    <div class="container">
		<div class="col-md-12">
			<img src="./images/lienhe.PNG">
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