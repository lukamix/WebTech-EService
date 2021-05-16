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
    <div id="YoutubePlayer">
        <iframe
            src=<%=request.getAttribute("videolink")%>>
        </iframe>
    </div>
</div>