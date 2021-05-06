<%@page contentType="text/html" pageEncoding="UTF-8"%>

</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="common/dependent.jsp"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Sign in | up Form</title>

    <!-- add style css -->
    <link rel="stylesheet" type="text/css" href="css/signin_signup.css">
    
</head>
<body>
    <h2>Đăng nhập | Đăng ký</h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="SignUpServlet">
                <h1>Tạo tài khoản</h1>
                <div class="social-container">
                    <a href="#" class="social">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="#" class="social">
                        <i class="fa fa-youtube-play"></i>
                    </a>
                    <a href="#" class="social">
                        <i class="fa fa-linkedin"></i>
                    </a>
                </div>
                <span>hoặc sử dụng email để đăng ký</span>
                <input type="text" placeholder="Tên đăng nhập" name ="txtusername" />
                <input type="text" placeholder="Tên hiển thị" name ="txtlastname" />
                <input type="email" placeholder="Email" name ="txtemail" />
                <input type="password" placeholder="Mật khẩu" name ="txtpassword"/>
                <input type="password" placeholder="Xác nhận lại mật khẩu" name="txtrepassword"/>
                <button>Đăng Ký</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="LoginServlet">
                <h1>Đăng nhập</h1>
                <div class="social-container">
                    <a href="#" class="social">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="#" class="social">
                        <i class="fa fa-youtube-play"></i>
                    </a>
                    <a href="#" class="social">
                        <i class="fa fa-linkedin"></i>
                    </a>
                </div>
                <span>hoặc sử dụng tài khoản cá nhân</span>
                <input type="text" placeholder="Tên đăng nhập" name ="username" />
                <input type="password" placeholder="Mật khẩu" name = "userpassword"/>
                <a href="#">Quên mật khẩu?</a>
                <button>Đăng nhập</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Chào mừng bạn trở lại!</h1>
                    <p>Đăng nhập để tham gia cùng chúng tôi</p>
                    <button class="ghost" id="signIn">Đăng nhập</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Chào bạn!</h1>
                    <p>Đăng ký ngay tài khoản để tham gia vào cộng đồng nghe nhạc lớn nhất thế giới</p>
                    <button class="ghost" id="signUp">Đăng ký</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- add style js -->
    <script type="text/javascript" src="JS/signin_signup.js"></script>
    
</body>
</html>
