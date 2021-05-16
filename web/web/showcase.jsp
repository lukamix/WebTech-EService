<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/showcasestyle.css"/>
<!--showcase-box------------->
<div class ="showcase">
    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(0))%>" class="showcase-box">
        <img src=<%=request.getAttribute("imagelink"+Integer.toString(0))%> alt="có chàng trai viết lên cây"/>
        <!-- button play -->
        <div class="play">
          <span class="material-icons">
            play_circle_outline
          </span>
        </div>
    </a>
    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(1))%>" class="showcase-box">
        <img src=<%=request.getAttribute("imagelink"+Integer.toString(1))%> alt="lời yêu thương cô gái ấy"/>
        <!-- button play -->
        <div class="play">
          <span class="material-icons">
            play_circle_outline
          </span>
        </div>
    </a>
    <a href="/Nhachayvjppro/mp3?songid=<%=request.getAttribute("songid"+Integer.toString(2))%>" class="showcase-box">
        <img src=<%=request.getAttribute("imagelink"+Integer.toString(2))%> alt="mối tinh như gió như mây"/>
        <!-- button play -->
        <div class="play">
          <span class="material-icons">
            play_circle_outline
          </span>
        </div>
    </a>
</div>

