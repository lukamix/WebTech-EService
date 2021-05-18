<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/newestalbumstyle.css"/>
<div class ="newestalbum">
    <a href="#" class = "albummoi">Video mới nhất 2021</a>
    <a href="#" class = "xemtatca">Xem tất cả</a>
    <div class="album">
        <div class="album-container">
            <div class = "album-track" id ="album-track">
                <%
                    for(int i=0;i<4;i++){
                %>
                <div class = "album-card-container">
                  <div class= "album-card">
                      <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>">
                        <img src=<%=request.getAttribute("videothumbnail"+Integer.toString(i))%> alt=""></img>
                      </a>
                    <!-- button play -->
                    <div class="album-play">
                        <!-- button play -->
                        <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>" class="album-play">
                            <input type="hidden" name ="videoid" value = <%=request.getAttribute("videoid"+Integer.toString(i))%>>
                            <span class="material-icons">
                                play_circle_outline
                            </span>
                        </a>
                    </div>
                    <div class="album-info">
                        <a href="#"><%=request.getAttribute("videoname"+Integer.toString(i))%></a>
                    </div>
                  </div>
                </div>
                <%}%>
            </div>
            <div class = "album-track" id ="album-track">
                <%
                    for(int i=4;i<8;i++){
                %>
                <div class = "album-card-container">
                    
                    <div class= "album-card">
                        <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>">
                        <img src=<%=request.getAttribute("videothumbnail"+Integer.toString(i))%> alt=""></img>
                        </a>
                      <!-- button play -->
                        <a href="/Nhachayvjppro/mp4?videoid=<%=request.getAttribute("videoid"+Integer.toString(i))%>" class="album-play">
                          <input type="hidden" name ="videoid" value = <%=request.getAttribute("videoid"+Integer.toString(i))%>>
                          <span class="material-icons">
                              play_circle_outline
                          </span>
                        </a>
                      <div class="album-info">
                          <a href="#"><%=request.getAttribute("videoname"+Integer.toString(i))%></a>
                      </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
