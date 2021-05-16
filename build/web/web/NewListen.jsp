<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/NewListen.css"/>
<div class="NewListen">
    <a href="#" class = "new">Thêm mới nhất</a>
    <a href="#" class = "xemtatca">Nghe tất cả</a>
    <div class="newListen">
        <div class="newlisten-container">
            <div class = "newlisten-track" id ="newlisten-track">
                <!--container-->
                <%
                    for(int i=0;i<10;i++){
                %>
                <div class="newlisten-card">
                <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("newaddsongid"+Integer.toString(i))%>">
                    <img src=<%=request.getAttribute("newaddimagelink"+Integer.toString(i))%> alt=""></img>
                </a>
                <div class="newlisten-info">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("newaddsongid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("newaddsongname"+Integer.toString(i))%></a> - <a href="artist?artistid=<%=request.getAttribute("newaddartist1id"+Integer.toString(i))%>&songpage=1&videopage=1" class="artist"><%=request.getAttribute("newaddartistname"+Integer.toString(i))%></a>
                    <%if(request.getAttribute("newaddQuality"+Integer.toString(i))!=null){%>
                    <div class="quality"><%=request.getAttribute("newaddQuality"+Integer.toString(i))%></div>
                    <%}%>
                </div>
                    <div class="right-corner">
                        <div class="time">8 giờ trước</div>
                        <div class="views"><%=request.getAttribute("newaddviewcount"+Integer.toString(i))%></div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>

