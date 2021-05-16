<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/NewListen.css"/>
<div class="NewListen">
    <a href="#" class = "new">Nghe mới nhất</a>
    <a href="#" class = "xemtatca">Xem tất cả</a>
    <div class="newListen">
        <div class="newlisten-container">
            <div class = "newlisten-track" id ="newlisten-track">
                <!--container-->
                <%
                    for(int i=0;i<10;i++){
                %>
                <div class="newlisten-card">
                <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>">
                    <img src=<%=request.getAttribute("imagelink"+Integer.toString(i))%> alt=""></img>
                </a>
                <div class="newlisten-info">
                    <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("songname"+Integer.toString(i))%></a> - <a href="#" class="artist"><%=request.getAttribute("artistname"+Integer.toString(i))%></a>
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

