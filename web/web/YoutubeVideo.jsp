<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/YoutubeVideo.css"/>
<div class="YoutubeVideo">
    <div class="VideoTab">
        <a href="Video-Clip?page=1">Video Clip</a>
    </div>
    <div class="VideoInfo">
        <%=request.getAttribute("videoname")%>
    </div>
    <br/>
    <div id="player">
        <%
            String link =request.getAttribute("videolink").toString();
        %>
    </div>
        <script src="http://www.youtube.com/player_api"></script>
        <script>
            // create youtube player
            var player;
            function onYouTubePlayerAPIReady() {
                player = new YT.Player('player', {
                    videoId: getVideoIDbylink("<%=link%>"),
                  events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                  }
                });
            }
            function getVideoIDbylink(link){
                return link.substring(29,link.length);
            }
            // autoplay video
            function onPlayerReady(event) {
                event.target.playVideo();
            }
            
            // when video ends
            function onPlayerStateChange(event) {        
                if(event.data === 0) {
                    if(document.getElementById("video-check-box").checked){
                        window.location ="/Nhachayvjppro/mp4?videoid="+document.getElementById("video-id").value;
                    }
                }
            }

        </script>
</div>