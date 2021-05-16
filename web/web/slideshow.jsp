<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/slideshow.css"/>
<div class = "container" id ="container">
  <div class = "inner">
    <div class = "track" id ="track">
        <%
            for(int i=0;i<10;i++){
            %>
            <div class = "card-container">
              <div class= "card">
                  <%
                      String link = "window.location.href='/Nhachayvjppro/mp3?songid="+request.getAttribute("songid"+Integer.toString(i))+"'";
                  %>
                  <img src=<%=request.getAttribute("imagelink"+Integer.toString(i))%> alt="" onclick=<%=link%>></img>
                <!-- button play -->
                <div class="play">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>">
                      <span class="material-icons">
                        play_circle_outline
                      </span>
                    </a>
                </div>
                <input type="hidden" name="songnameslideshow" size="20" value="<%=request.getAttribute("songname"+Integer.toString(i))%>" />
                <input type="hidden" name="artistslideshow" size="20" value="<%=request.getAttribute("artistname"+Integer.toString(i))%>" />
                <div class="info">
                    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(i))%>"><%=request.getAttribute("songname"+Integer.toString(i))%></a> - <a href="#"><%=request.getAttribute("artistname"+Integer.toString(i))%></a>
                </div>
              </div>
            </div>
        <%}%>    
    </div>
    
  </div>
  <div class = "outer">
    <div class="navi">
      <button id ="prev" class="prev">
        <span class="material-icons">
        keyboard_arrow_left
        </span>
      </button>
      <button id ="next" class="next">
        <span class="material-icons">
        keyboard_arrow_right
        </span>
      </button>
    </div>
  </div>
</div>
