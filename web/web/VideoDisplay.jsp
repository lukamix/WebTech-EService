<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/VideoDisplay.css"/>
<div class="VideoDisplay">
    <div class="Heading">
        <h1>Video</h1>
    </div>
    <div class="video-display">
        <%for(int i=0;i<4;i++){%>
        <div class="video-column">
            <%for(int j=0;j<5;j++){%>
            <%if(Integer.parseInt(request.getAttribute("Nrecord").toString())>4*i+j){%>
            <div class="video-box">
                <a href="/Nhachayvjppro/VideoServlet?videoid=<%=request.getAttribute("videoid"+Integer.toString(4*i+j))%>">
                    <div class="video-thumbnail">
                        <div class="video-duration">
                            <span class="material-icons">
                                schedule
                            </span>
                            <%if(request.getAttribute("duration"+Integer.toString(4*i+j))!=null){%>
                                02:00
                            <%}%>
                        </div>
                        <div class="play-button">
                            <span class="material-icons">
                                play_circle_outline
                            </span>
                        </div>
                        <div class="video-quality">HD 1080p</div>
                        <img src=<%=request.getAttribute("thumbnail"+Integer.toString(4*i+j))%> alt="alt"/>
                    </div>
                </a>
                <div class="video-name"><a href="/Nhachayvjppro/VideoServlet?videoid=<%=request.getAttribute("videoid"+Integer.toString(4*i+j))%>"><%=request.getAttribute("videoname"+Integer.toString(4*i+j))%></a></div>
                <div class="video-artist"><a href="#"><%=request.getAttribute("artist"+Integer.toString(4*i+j))%></a></div>
            </div>
            <%}%>
            <%}%>
        </div>
        <%}%>
    </div>
    <div class="video-pagination">
        <%
            int currentpage = Integer.parseInt(request.getParameter("page").toString());
            int count = Integer.parseInt(request.getAttribute("count").toString());
            String link = "window.location.href='/Nhachayvjppro/VideoClipServlet?page=";
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
<script type ="text/javascript" src ="JS/VideoDisplay.js"/></script>