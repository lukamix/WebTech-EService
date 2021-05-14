<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/SongDisplay.css"/>
<div class="SongDisplay">
    <div class="Heading">
        <h1>Bài Hát</h1>
    </div>
    <div class="song-display">
        <%for(int i=0;i<4;i++){%>
        <div class="song-column">
            <%for(int j=0;j<5;j++){%>
            <%if(Integer.parseInt(request.getAttribute("Nrecord").toString())>4*i+j){%>
            <div class="song-box">
                <a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(4*i+j))%>">
                    <div class="song-image-box">
                        <div class="play-button">
                            <span class="material-icons">
                                play_circle_outline
                            </span>
                        </div>
                        <img src=<%=request.getAttribute("thumbnail"+Integer.toString(4*i+j))%> alt="alt"/>
                    </div>
                </a>
                <div class="song-name"><a href="/Nhachayvjppro/MP3Servlet?songid=<%=request.getAttribute("songid"+Integer.toString(4*i+j))%>"><%=request.getAttribute("songname"+Integer.toString(4*i+j))%></a></div>
                <div class="song-artist"><a href="#"><%=request.getAttribute("artist"+Integer.toString(4*i+j))%></a></div>
            </div>
            <%}%>
            <%}%>
        </div>
        <%}%>
    </div>
    <div class="song-pagination">
        <%
            int currentpage = Integer.parseInt(request.getParameter("page").toString());
            int count = Integer.parseInt(request.getAttribute("count").toString());
            String link = "window.location.href='/Nhachayvjppro/SongServlet?page=";
        %>
        <%if(count>0){
            String link1=link+"1'";
        %>
        <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
        <%}%>
        <%if(count>20){
            String link2=link+"2'";
        %>
        <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
        <%}%>
        <%if(count>40){
            String link3=link+"3'";
        %>
        <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
        <%}%>
        <%if(count>60){%>
        <button id="etc">...</button>
        <%}%>
        <%if(count>100){
            String link6=link+"6'";
            String link7=link+"7'";
        %>
        <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
        <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
        <%}%>
    </div>
</div>