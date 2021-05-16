<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/VideoInfo.css"/>
<div class="songInfo">
    <div class="leftSide">
        <%if(request.getAttribute("imagelink")!=null){%>
            <img src=<%=request.getAttribute("imagelink")%> alt="alt"/>
        <%}%>
        <%if(request.getAttribute("videoname")!=null){%>
            <div class="songName"><%=request.getAttribute("videoname")%></div>
        <%}%>
        <div class="info">
            <div class="row">
                <div class ="title">Ca sĩ:</div>
                <a href="#"><%=request.getAttribute("artistname")%></a>
            </div>
            <div class="row">
                <%if(request.getAttribute("songauthor")!=null){%>
                    <div class ="title">Sáng tác:</div>
                    <a href="#"><%=request.getAttribute("songauthor")%></a>
                <%}%>
<!--            <span>;</span>
                <a href="#">Nhím Biển</a>
                <span>;</span>
                <a href="#">Bảo Lê</a>      -->
            </div>
            <div class="row">
<!--                <div class ="title">Album:</div>
                <a href="#">Qua Khung Cửa Sổ (Single)</a>  -->
            </div>
            <div class="row">
                <%if(request.getAttribute("publishday")!=null){%>
                    <div class ="title">Ngày phát hành:</div>
                    <a><%=request.getAttribute("publishday")%></a>
                <%}%>
            </div>
        </div>
    </div>
    <div class="rightSide">
        <ul class="menuButton">
            <li>
                <button id="Lyrics" onclick="OnLyricsClick()">
                    <span class="material-icons">
                        queue_music
                    </span>
                    <div class="buttonname">Lyric</div>
                </button>
            </li>
            <li><button id="Download" onclick="OnDownloadClick()">
                <span class="material-icons">
                download
                </span>
                <div class="buttonname">Download</div>
                </button>
            </li>
            <li><button id="Share" onclick="OnShareClick()">
                <span class="material-icons">
                share
                </span>
                <div class="buttonname">Share</div>
                </button>
            </li>
            <li><button id="More" onclick="OnMoreClick()">
                <span class="material-icons">
                add_circle_outline
                </span>
                <div class="buttonname">More</div>
                </button>
            </li>
        </ul>
        <ul class="Extends">
            <li>
                <div id="LyricsExtends">
                    <%if (request.getAttribute("lyric") !=null){%>
                    <%=request.getAttribute("lyric")%>
                    <%}%>
                </div>
            </li>
            <li>
                <div id="DownloadExtends">
                    <%if(request.getAttribute("songlink")!=null){%>
                        Link: <a class="a128kbps" href =<%=request.getAttribute("songlink")%>>128kbps</a>
                        Link: <a class="a320kbps" href =<%=request.getAttribute("songlink")%>>320kbps</a>
                    <%}%>
                    <%if(request.getAttribute("videolink")!=null){%>
                        Link: <a class="a128kbps" href =<%=request.getAttribute("videolink")%>>128kbps</a>
                        Link: <a class="a320kbps" href =<%=request.getAttribute("videolink")%>>320kbps</a>
                    <%}%>
                </div>
            </li>
            <li>
                <div id="ShareExtends">
                    <iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button_count&size=small&width=119&height=20&appId" width="119" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                </div>
            </li>
            <li>
                <div id="MoreExtends">
                    Add to Playlist...
                </div>
            </li>
        </ul>
    </div>

</div>
<script>
var lyricsButton = document.getElementById("Lyrics");
var lyricsExtend = document.getElementById("LyricsExtends");
var downloadButton = document.getElementById("Download");
var downloadExtend = document.getElementById("DownloadExtends");
var shareButton = document.getElementById("Share");
var shareExtend = document.getElementById("ShareExtends");
var moreButton = document.getElementById("More");
var moreExtend = document.getElementById("MoreExtends");

function RestoreDefault(){
    lyricsButton.style.backgroundColor="linen";
    lyricsButton.style.color="grey";
    downloadButton.style.backgroundColor="linen";
    downloadButton.style.color="grey";
    shareButton.style.backgroundColor="linen";
    shareButton.style.color="grey";
    moreButton.style.backgroundColor="linen";
    moreButton.style.color="grey";
    lyricsExtend.style.display ="none";
    downloadExtend.style.display ="none";
    shareExtend.style.display ="none";
    moreExtend.style.display ="none";
}
function OnLyricsClick() {
    RestoreDefault();
    lyricsButton.style.backgroundColor="pink";
    lyricsButton.style.color="white";
    lyricsExtend.style.display ="block";
}
function OnDownloadClick() {
    RestoreDefault();
    downloadButton.style.backgroundColor="pink";
    downloadButton.style.color="white";
    downloadExtend.style.display ="flex";
}
function OnShareClick() {
    RestoreDefault();
    shareButton.style.backgroundColor="pink";
    shareButton.style.color="white";
    shareExtend.style.display ="block";
}
function OnMoreClick() {
    RestoreDefault();
    moreButton.style.backgroundColor="pink";
    moreButton.style.color="white";
    moreExtend.style.display ="block";
}
</script>
