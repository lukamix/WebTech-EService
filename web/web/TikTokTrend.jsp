<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/TikTokTrend.css"/>
<div class="Tiktok-Trend">
    <div class="heading">
        <h1>TikTok - Viral Video</h1>
    </div>
    <div class="Tiktok-video-display">
        <%for(int i=0;i<3;i++){%>
            <div class="row">
                <%for(int j=0;j<3;j++){%>
                <%if(request.getAttribute("html"+Integer.toString(3*i+j))!=null){%>
                <div class="Tik-tok-video-container">
                    <%=request.getAttribute("html"+Integer.toString(3*i+j))%>
                </div>
                <%}%>
                <%}%>
            </div>
        <%}%>
    </div>
    <div class="tiktok-pagination">
        <%
            int currentpage = Integer.parseInt(request.getParameter("page").toString());
            int count = Integer.parseInt(request.getAttribute("count").toString());
            String link = "window.location.href='/Nhachayvjppro/tiktok?page=";
        %>
        <%if(count>0){
            String link1=link+"1'";
        %>
        <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
        <%}%>
        <%if(count>9){
            String link2=link+"2'";
        %>
        <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
        <%}%>
        <%if(count>18){
            String link3=link+"3'";
        %>
        <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
        <%}%>
        <%if(count>27){%>
        <button id="etc">...</button>
        <%}%>
        <%if(count>45){
            String link6=link+"6'";
            String link7=link+"7'";
        %>
        <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
        <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
        <%}%>
    </div>
</div>
 <script async src="https://www.tiktok.com/embed.js"></script>