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
                <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("top10songid"+Integer.toString(0))%>">
                <img src=<%=request.getAttribute("top10imagelink"+Integer.toString(0))%> alt=""></img>
                </a>
                <div class="top1-info">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("top10songid"+Integer.toString(0))%>" class="name"><%=request.getAttribute("top10songname"+Integer.toString(0))%></a> - <a href="artist?artistid=<%=request.getAttribute("top10artist1id"+Integer.toString(0))%>&songpage=1&videopage=1" class="artist"><%=request.getAttribute("top10artistname"+Integer.toString(0))%></a>
                </div>
                <div class="views"><%=request.getAttribute("top10viewcount"+Integer.toString(0))%></div>
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
                <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("top10songid"+Integer.toString(i))%>">
                    <img src=<%=request.getAttribute("top10imagelink"+Integer.toString(i))%> alt=""></img>
                </a>
                <div class="top-info">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("top10songid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("top10songname"+Integer.toString(i))%></a> - <a href="artist?artistid=<%=request.getAttribute("top10artist1id"+Integer.toString(i))%>&songpage=1&videopage=1" class="artist"><%=request.getAttribute("top10artistname"+Integer.toString(i))%></a>
                </div>
                <div class="views"><%=request.getAttribute("top10viewcount"+Integer.toString(i))%></div>
            </div>
            <%}%>
        </div>
    </div>
</div>
