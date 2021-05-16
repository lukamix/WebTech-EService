<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/VideoGoiY.css"/>
<div class="GoiY">
    <div class="top">
    <a href="#" class = "new">Gợi Ý</a>
    <a class = "xemtatca">
        <span>AUTOPLAY</span>
        <label class="switch">
            <input type="checkbox">
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
                    <%if(request.getAttribute("videoid"+Integer.toString(i))!=null){%>
                        <div class="newmusic-card">
                            <div class="image-card">
                            <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>">
                                <img src=<%=request.getAttribute("imagelink"+Integer.toString(i))%> alt=""></img>
                            </a>
                            </div>
                            <div class="newmusic-info">
                                <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>" class="name">
                                    <%=request.getAttribute("videoname"+Integer.toString(i))%>
                                </a>
                            </div>
                            <div class="right-corner">
                            </div>
                        </div>
                    <%}%>
                <%}%>
            </div>
        </div>
    </div>
</div>