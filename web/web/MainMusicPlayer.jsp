<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/MainMusicPlayer.css"/>
<div id="main-music-player">
  <div class="main-inner">
   <div class="main-controls">
    <a class="main-previous" href="#">
        <span class="material-icons">
            skip_previous
        </span>
    </a>
    <a class="main-play" href="#">
        <span class="material-icons">
            play_circle
        </span>
    </a>
    <a class="main-pause" href="#" style="display:none;">
        <span class="material-icons">
            pause
        </span>
    </a>
    <a class="main-next" href="#">
        <span class="material-icons">
            skip_next
        </span>
    </a>
    <div class="volume">
        <div class="range-slider">
            <input type="range" id="range" min="0" max="10" step="0.1" value="10"
                   oninput="changeVolume(this.value)" 
                   onchange="changeVolume(this.value)"/>
        </div> 
        <a class="main-volume-up" href="#">
            <span class="material-icons">
                volume_up
            </span>
        </a>
        <a class="main-volume-down" href="#">
            <span class="material-icons">
                volume_down
            </span>
        </a>
        <a class="main-volume-mute" href="#">
            <span class="material-icons">
                volume_mute
            </span>
        </a>
    </div>
   </div>
   <div class="main-play-bar">
    <span id="main-time">00:00</span>
    <div class="main-bar-bg">
        <div class="main-progress">
            
        </div>
    </div>
    <span id="main-total-time">00:00</span>
   </div>
   <div class="main-song-content">
    <div class="main-user-info">
     <!-- The song cover -->
     <div class="main-img-wrapper">
      <img src=<%=request.getAttribute("imagelink")%>>
     </div>
     <div class="main-song-info">
      <span class="main-artist"><%=request.getAttribute("artistname")%></span>
      <span class="main-song"><%=request.getAttribute("songname")%></span>
     </div>
    </div>
    <div class="main-comment-icon">
     <a href="#">
        <span class="material-icons">
            comment
        </span>
        <span>10</span>
     </a>
    </div>
   </div>
  </div>
    <audio id ="songaudio" src=<%=request.getAttribute("songlink")%> controls autoplay></audio>
</div>
<div id="main-scroll" style="overflow:scroll;">
    <div class ="Container">
        <div class="song">
            <a href="mp3?songid=23">1. Cho mình em</a>
        </div>
        <div class="artist">
            <a href="artist?artistid=2">Binz</a>
            <span>,</span>
            <a href="artist?artistid=21">Đen Vâu</a>
        </div>
    </div>
    <div class ="Container">
        <div class="song">
            <a href="mp3?songid=48">2. Okeokeoke</a>
        </div>
        <div class="artist">
            <a href="artist?artistid=7">Low G</a>
        </div>
    </div>
    <div class ="Container">
        <div class="song">
            <a href="mp3?songid=49">3. Làm Ngay Hôm Nay (#LNHN)</a>
        </div>
        <div class="artist">
            <a href="#">RPT Orijinn</a>
            <span>,</span>
            <a href="#">RPT Duke</a>
            <span>,</span>
            <a href="artist?artistid=8">RPT MCK</a>
        </div>
    </div>
    <div class ="Container">
        <div class="song">
            <a href="mp3?songid=50">4. Đừng Quên Tên Anh</a>
        </div>
        <div class="artist">
            <a href="artist?artistid=23">Hoa Vinh</a>
        </div>
    </div>
    <div class ="Container">
        <div class="song">
            <a href="#">5. WALK ON DA STREET</a>
        </div>
        <div class="artist">
            <a href="#">16 Typh</a>
            <span>,</span>
            <a href="#">16 BrT</a>
        </div>
    </div>
</div>
