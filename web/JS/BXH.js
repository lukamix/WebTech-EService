var baihatbutton = document.getElementById("baihat-button");
var videobutton = document.getElementById("video-button");
var topsong = document.querySelector('.top-song');
var topvideo = document.querySelector('.top-video');

baihatbutton.addEventListener("click",function(){
    baihatbutton.style.borderBottom = "5px solid orange";
    videobutton.style.borderBottom ="0";
    topvideo.style.display ="none";
    topsong.style.display ="block";
});
videobutton.addEventListener("click",function(){
    videobutton.style.borderBottom = "5px solid orange";
    baihatbutton.style.borderBottom = "0";
    topsong.style.display ="none";
    topvideo.style.display ="block";
});