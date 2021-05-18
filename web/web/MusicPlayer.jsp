<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/audio-player.css"/>
<div id="music-player">
  <div class="inner">
    
   <div class="controls">
    <a class="previous" href="#">
        <span class="material-icons">
            skip_previous
        </span>
    </a>
    <a class="play" href="#">
        <span class="material-icons">
            play_circle
        </span>
    </a>
    <a class="pause" href="#" style="display:none;">
        <span class="material-icons">
            pause
        </span>
    </a>
    <a class="next" href="#">
        <span class="material-icons">
            skip_next
        </span>
    </a>
    <div class="volume1">
    <div class="range-slider">
        <input type="range" id="range1" min="0" max="10" step="0.1" value="10"
               oninput="changeVolume(this.value)" 
               onchange="changeVolume(this.value)"/>
    </div> 
    <a class="volume-up" href="#">
        <span class="material-icons">
            volume_up
        </span>
    </a>
    <a class="volume-down" href="#">
        <span class="material-icons">
            volume_down
        </span>
    </a>
    <a class="volume-mute" href="#">
        <span class="material-icons">
            volume_mute
        </span>
    </a>
    </div>
   </div>
   
   <div class="play-bar">
    <span id="time">00:00</span>
    <div class="bar-bg">
        <div class="progress">
            
        </div>
    </div>
    <span id="total-time">00:00</span>
   </div>
   <div class="song-content"> <!-- The songs meta -->
    <div class="user-info">
     <!-- The song cover -->
     <div class="img-wrapper">
      <img src=<%=request.getAttribute("imagelink")%>>
     </div>
     <div class="song-info">
      <span class="artist"><%=request.getAttribute("artistname")%></span>
      <span class="song"><%=request.getAttribute("songname")%></span>
     </div>
    </div>
    <div class="comment-icon">
     <a href="#">
        <span class="material-icons">
            comment
        </span>
      <span>7</span>
     </a>
    </div>
   </div>
  </div>
</div>