<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/leaderboardstyle.css"/>
<div class ="leaderboard">
    <div class="title">
    <a href="#" class = "bangxephang">Bảng xếp hạng</a>
    <a href="#" class = "nghetatca">Nghe tất cả</a>
    </div>
    <div class="menu">
        <a href="#" class = "vietnam">Việt Nam</a>
    </div>
    <div class ="top">
        <div class="top1-container">
            <div class= "top1-card">
                <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(0))%>">
                <img src=<%=request.getAttribute("imagelink"+Integer.toString(0))%> alt=""></img>
                </a>
                <div class="top1-info">
                    <a href="#" class="name"><%=request.getAttribute("songname"+Integer.toString(0))%></a> - <a href="#" class="artist"><%=request.getAttribute("artistname"+Integer.toString(0))%></a>
                </div>
                <div class="views"><%=request.getAttribute("viewcount"+Integer.toString(0))%></div>
            </div>
        </div>
        <div class="anothertop-container">
            <!--top2-->
            <%
                for(int i=1;i<10;i++){
            %>
            <div class="top-card">
                <div class="place">
                    <div class="number"><%=i+1%></div>
                    <span class="material-icons">
                        arrow_drop_up
                    </span>
                </div>
                <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>">
                    <img src=<%=request.getAttribute("imagelink"+Integer.toString(i))%> alt=""></img>
                </a>
                <div class="top-info">
                    <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("songname"+Integer.toString(i))%></a> - <a href="#" class="artist"><%=request.getAttribute("artistname"+Integer.toString(i))%></a>
                </div>
                <div class="views"><%=request.getAttribute("viewcount"+Integer.toString(i))%></div>
            </div>
            <%}%>
        </div>
    </div>
</div>
