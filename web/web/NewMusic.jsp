<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/NewMusic.css"/>
<div class="NewMusic">
    <a href="#" class = "new">Bài hát mới</a>
    <a href="#" class = "xemtatca">Xem tất cả</a>
    <div class="newMusic">
        <div class="newmusic-container">
            <div class = "newmusic-track" id ="newmusic-track">
                <%
                    for(int i=0;i<10;i++){
                %>
                <div class="newmusic-card">
                <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>">
                    <img src=<%=request.getAttribute("imagelink"+Integer.toString(i))%> alt=""></img>
                </a>
                <div class="newmusic-info">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("songname"+Integer.toString(i))%></a> - <a href="#" class="artist"><%=request.getAttribute("artistname"+Integer.toString(i))%></a>
                    <%if(request.getAttribute("Quality"+Integer.toString(i))!=null){%>
                    <div class="quality"><%=request.getAttribute("Quality"+Integer.toString(i))%></div>
                    <%}%>
                </div>
                    <div class="right-corner">
                        <div class="time">8 giờ trước</div>
                        <div class="views"><%=request.getAttribute("viewcount"+Integer.toString(i))%></div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>