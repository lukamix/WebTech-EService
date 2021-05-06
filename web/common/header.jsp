<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--navigation------------>
<nav>
    <!--logo c?a web (hi?n ? ??u trang)   -->
    <link rel="stylesheet" href = "css/headerstyle.css"/>
    <a href="/Nhachayvjppro/GetSongServlet" class="logo">
        <img src="images/logo.jpg" alt="alt"/>
    </a>
    <!--menu--->
    <ul class="menu">
        <li><a href="#">Xếp Hạng</a>
        </li>
        <li><a href="#">Video</a>
        </li>
        <li><a href="#">Việt Nam</a>
        </li>
        <li><a href="#">US-UK</a>
        </li>
        <li><a href="#">Khác</a>
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
        System.out.println(username);
        if (username == (String)null) {
        %>
        <a href="signin_signup.jsp">Đăng Nhập</a><a>/</a><a href="signin_signup.jsp">Đăng Ký</a>
        <% } else {
         %>
        <p><b>Welcome, </b><%= session.getAttribute("username")%></p>
        <a href="LogOutServlet">Đăng Xuất</a>
        <% }%>
    </div>
    <script type="text/javascript" src="JS/LiveSearch.js"></script>
</nav>
