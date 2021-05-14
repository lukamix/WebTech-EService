<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/HotMusic.css"/>
<div class="bxh">
    <div class="description">
        <h1>Bảng xếp hạng âm nhạc hàng đầu</h1>
        <p>Bảng xếp hạng nhachayvjpprono1 cập nhật hàng ngày dựa trên số liệu thống kê thực tế trên hệ thống website nhachayvjpprono1, dựa vào lượt nghe !</p>
    </div>
    <div class="table-display">
        <div class="table-name">
            <button id="baihat-button">Bài Hát</button>
            <button id="video-button">Video</button>
        </div>
        <div class="listen-all">
            <button>
                <p>Nghe tất cả</p>
                <span class="material-icons">
                    play_circle
                </span>
            </button>
        </div>
    </div>
    <div class="top-song">
        <%
            for(int i=0;i<20;i++){
        %>
        <div class="song-in-top">
            <%if(i<9){%>
                <div class="rank" id=<%="rank0"+Integer.toString(i+1)%>><%="0"+Integer.toString(i+1)%></div>
            <%} else {%>
                <div class="rank" id=<%="rank"+Integer.toString(i+1)%>><%=Integer.toString(i+1)%></div>
            <%}%>
            <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songidtop"+Integer.toString(i))%>">
                <span class="material-icons">
                    play_circle_outline
                </span>
                <img src=<%=request.getAttribute("songimagelinktop"+Integer.toString(i))%> alt="alt">
            </a>
            <div class="song-info">
                <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songidtop"+Integer.toString(i))%>"><div class="song-name"><%=request.getAttribute("songnametop"+Integer.toString(i))%></div></a>
                <a href="#"><div class="artist"><%=request.getAttribute("artistnametop"+Integer.toString(i))%></div></a>
                <%if(request.getAttribute("songqualitytop"+Integer.toString(i))!=null){%>
                    <div class="quality"><%=request.getAttribute("songqualitytop"+Integer.toString(i))%></div>
                <%}%>
            </div>
            <div class="view">
                <span class="material-icons">
                    play_arrow
                </span>
                <p><%=request.getAttribute("songviewcounttop"+Integer.toString(i))%></p>
            </div>
        </div>
         <%}%>
    </div>
    <div class="top-video">
        <%
            for(int i=0;i<20;i++){
        %>
        <div class="video-in-top">
            <%if(i<9){%>
                <div class="rank" id=<%="rank0"+Integer.toString(i+1)%>><%="0"+Integer.toString(i+1)%></div>
            <%} else {%>
                <div class="rank" id=<%="rank"+Integer.toString(i+1)%>><%=Integer.toString(i+1)%></div>
            <%}%>
            <a href="/Nhachayvjppro/VideoServlet?videoid=<%=request.getAttribute("videoidtop"+Integer.toString(i))%>">
                <span class="material-icons">
                    play_circle_outline
                </span>
                <img src=<%=request.getAttribute("videoimagelinktop"+Integer.toString(i))%> alt="alt">
            </a>
            <div class="video-info">
                <a href="/Nhachayvjppro/VideoServlet?videoid=<%=request.getAttribute("videoidtop"+Integer.toString(i))%>"><div class="video-name"><%=request.getAttribute("videonametop"+Integer.toString(i))%></div></a>
                <a href="#"><div class="artist"><%=request.getAttribute("videoartistnametop"+Integer.toString(i))%></div></a>
                <%if(request.getAttribute("videoqualitytop"+Integer.toString(i))!=null){%>
                    <div class="quality"><%=request.getAttribute("videoqualitytop"+Integer.toString(i))%></div>
                <%}%>
            </div>
            <div class="view">
                <span class="material-icons">
                    play_arrow
                </span>
                <p><%=request.getAttribute("videoviewcounttop"+Integer.toString(i))%></p>
            </div>
        </div>
        <%}%>
    </div>
</div>
<script type ="text/javascript" src ="JS/BXH.js"/></script>