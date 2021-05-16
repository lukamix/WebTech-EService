<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/NgheSiDisplay.css"/>
<style>
    .background  {
        background-image: url("<%=request.getAttribute("artistimage")%>");
        background-size: contain;
        background-repeat: no-repeat;
        background-position: center;
        background-color: Cornsilk;
    }
</style>
<div class="NgheSiDisplay">
    <div class="background">
        <div class="artist-name"><%=request.getAttribute("artistname")%></div>
        <div class="artist-description"><%=request.getAttribute("artistdescription")%></div>
    </div>
    <div class="button-zone">
        <button id="first-bt">BÀI HÁT</button>
        <button id="second-bt">VIDEO</button>
        <button id="third-bt">ALBUM</button>
        <button id="fourth-bt">PLAYLIST</button>
    </div>
    <div class="nghesi-song">
        <%for(int i=0;i<20;i++){%>
        <%if(Integer.parseInt(request.getAttribute("Nsongrecord").toString())>i){%>
        <div class="song-card">
            <div class="place">
                <div class="number"><%=i+1%></div>
            </div>
            <a href="mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>">
                <img src=<%=request.getAttribute("songimage"+Integer.toString(i))%> alt=""></img>
            </a>
            <div class="song-info">
                <a href="mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>" class="name"><%=request.getAttribute("songname"+Integer.toString(i))%></a>
                <a href="artist?artistid=<%=request.getAttribute("artist1id"+Integer.toString(i))%>&songpage=1&videopage=1" class="artist"><%=request.getAttribute("artistname")%></a>
                <div class="quality">lossless</div>
            </div>
            <div class="views">
                <span class="material-icons">
                    play_arrow
                </span>
                <p><%=request.getAttribute("songview"+Integer.toString(i))%></p>
            </div>
        </div>
        <%}%>
        <%}%>
        <div class="video-pagination">
            <%
            int currentsongpage = Integer.parseInt(request.getParameter("songpage").toString());
            int count = Integer.parseInt(request.getAttribute("countsong").toString());
            String link = "window.location.href='/Nhachayvjppro/artist?artistid="+request.getParameter("artistid").toString()
                    +"&songpage=";
        %>
        <%if(count>0){
            String link1=link+"1&videopage=1'";
        %>
        <button class="button-page1" <%if(currentsongpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
        <%}%>
        <%if(count>20){
            String link2=link+"2&videopage=1'";
        %>
        <button class="button-page2" <%if(currentsongpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
        <%}%>
        <%if(count>40){
            String link3=link+"3&videopage=1'";
        %>
        <button class="button-page3" <%if(currentsongpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
        <%}%>
        <%if(count>60){%>
        <button class="etc">...</button>
        <%}%>
        <%if(count>100){
            String link6=link+"6&videopage=1'";
            String link7=link+"7&videopage=1'";
        %>
        <button class="button-page4" <%if(currentsongpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
        <button class="button-page5" <%if(currentsongpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
        <%}%>
        </div>
    </div>
    <div class="nghesi-video">
        <%for(int i=0;i<4;i++){%>
        <div class="video-column">
            <%for(int j=0;j<5;j++){%>
            <%if(Integer.parseInt(request.getAttribute("Nvideorecord").toString())>4*i+j){%>
            <div class="video-card">
                <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(4*i+j))%>">
                    <div class="video-thumbnail">
                        <div class="video-duration">
                            <span class="material-icons">
                                schedule
                            </span>
                            02:00
                        </div>
                        <div class="play-button">
                            <span class="material-icons">
                                play_circle_outline
                            </span>
                        </div>
                        <div class="video-quality">HD 1080p</div>
                        <img src=<%=request.getAttribute("videothumbnail"+Integer.toString(4*i+j))%> alt="alt"/>
                    </div>
                </a>
                <div class="video-name"><a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(4*i+j))%>"><%=request.getAttribute("videoname"+Integer.toString(4*i+j))%></a></div>
                <div class="video-artist"><a href="#"><%=request.getAttribute("artistname")%></a></div>
            </div>
            <%}%>
            <%}%>
        </div>
        <%}%>
        <div class="video-pagination">
            <%
            int currentvideopage = Integer.parseInt(request.getParameter("videopage").toString());
            int countvideo = Integer.parseInt(request.getAttribute("countsong").toString());
            String vidlink = "window.location.href='/Nhachayvjppro/artist?artistid="+request.getParameter("artistid").toString()
                    +"&songpage=1&videopage=";
        %>
        <%if(countvideo>0){
            String link1=vidlink+"1'";
        %>
        <button class="button-page1" <%if(currentsongpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
        <%}%>
        <%if(countvideo>20){
            String link2=vidlink+"2'";
        %>
        <button class="button-page2" <%if(currentsongpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
        <%}%>
        <%if(countvideo>40){
            String link3=vidlink+"3'";
        %>
        <button class="button-page3" <%if(currentsongpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
        <%}%>
        <%if(countvideo>60){%>
        <button class="etc">...</button>
        <%}%>
        <%if(countvideo>100){
            String link6=vidlink+"6'";
            String link7=vidlink+"7'";
        %>
        <button class="button-page4" <%if(currentsongpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
        <button class="button-page5" <%if(currentsongpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
        <%}%>
        </div>
    </div>
    <div class="nghesi-album">
        <div class="album-card">
            No albums...
        </div>
    </div>
    <div class="nghesi-playlist">
        <div class="playlist-card">
            No playlist...
        </div>
    </div>
</div>
<script type ="text/javascript" src ="JS/NgheSi.js"/></script>