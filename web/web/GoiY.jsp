<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/GoiY.css"/>
<div class="GoiY">
    <div class="top">
    <a href="#" class = "new">Gợi Ý</a>
    <a class = "xemtatca">
        <span>AUTOPLAY</span>
        <label class="switch">
            <input type="checkbox" id="check-box">
            <span class="slider round"></span>
        </label>
    </a>
    </div>
    <div class="new-Music">
        <div class="newmusic-container">
            <div class = "newmusic-track" id ="newmusic-track">
                <%
                    for (int i=0;i<10;i++){
                %>
                    <!--container-->
                    <%if(request.getAttribute("songid"+Integer.toString(i+1))!=null){%>
                    <div class="newmusic-card">
                        <div class="image-card">
                            <input value="<%=request.getAttribute("songid"+Integer.toString(i+1))%>" name="song-id" type="hidden" id="song-id"/>
                            <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i+1))%>">
                                <img src=<%=request.getAttribute("imagelink"+Integer.toString(i+1))%> alt=""></img>
                            </a>
                        </div>
                        <div class="newmusic-info">
                            <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i+1))%>" class="name"><%=request.getAttribute("songname"+Integer.toString(i+1))%></a> - <a href="artist?artistid=<%=request.getAttribute("artist1id"+Integer.toString(i+1))%>&songpage=1&videopage=1" class="artist"><%=request.getAttribute("artistname"+Integer.toString(i+1))%></a>
                            <%if(request.getAttribute("Quality"+Integer.toString(i+1))!=null){%>
                                <div class="quality"><%=request.getAttribute("Quality"+Integer.toString(i+1))%></div>
                            <%}%>
                        </div>
                        <div class="right-corner">
                            <div class="time"><%=request.getAttribute("publishday"+Integer.toString(i+1))%></div>
                            <div class="views"><%=request.getAttribute("viewcount"+Integer.toString(i+1))%></div>
                        </div>
                    </div>
                    <%}%>
                <%}%>
            </div>
        </div>
    </div>
</div>