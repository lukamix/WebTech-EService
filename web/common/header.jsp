<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--navigation------------>
<nav>
    <!--logo c?a web (hi?n ? ??u trang)   -->
    <link rel="stylesheet" href = "css/headerstyle.css"/>
    <a href="home" class="logo">
        <img src="images/logo.jpg" alt="alt"/>
    </a>
    <!--menu--->
    <ul class="menu">
        <li><a href="BXH">Xếp Hạng</a>
        </li>
        <li><a href="Video-Clip">Video</a>
        </li>
        <li><a href="Song?page=1">Bài Hát</a>
        </li>
        <li><a href="#">Nghệ Sĩ</a>
        </li>
        <li><a href="#">Anime</a>
        </li>
        <li><a href="#">Tiktok</a>
        </li>
    </ul>
    
    <!--search icon-->
    <!--search------->
    <div class="search-box">
        <div class="search">
            <span class="material-icons" id="searchicon">search</span>
            <form action="#" method="get">
            <input type="text" placeholder="nhập bài hát,video, tên nghệ sĩ" id = "searchinput" onkeydown="startSearch()"/>
            </form>
        </div>
        <div id="results">
            <ul id="list">
                <li><a href="">hi</a></li>
                <li><a href="">hi</a></li>
                <li><a href="">hi</a></li>
            </ul>
        </div>
    </div>
    <!-- Đăng nhập && Đăng kí -->
    <div class="Register" id="register">
        <%
        String username= (String) session.getAttribute("username");
        
        Cookie cookie = null;
        Cookie[] cookies = null;
        cookies = request.getCookies();
        boolean flag =false;
        
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if ((cookie.getName()).compareTo("lastname") == 0){
                    flag=true;
                    %>
                    <p>Welcome, <%=cookie.getValue()%></p>
                    <a href="LogOut">Đăng Xuất</a>
                    <%
                }
            }
        }
        if(session.getAttribute("username")!=null && !flag){
        %>
            <p>Welcome, <%= session.getAttribute("username")%></p>
                    <a href="LogOut">Đăng Xuất</a>
        <%}
            else if(!flag){
        %>
            <a href="signin_signup.jsp">Đăng Nhập</a><a>/</a><a href="signin_signup.jsp">Đăng Ký</a>
        <% }%>
    </div>
    <script type="text/javascript" src="JS/LiveSearch.js"></script>
</nav>
