var mainplayButton = document.querySelector('.main-play');
var playButton = document.querySelector('.play');
var mainpauseButton = document.querySelector('.main-pause');
var pauseButton = document.querySelector('.pause');
var mainpreviousButton = document.querySelector('.main-previous');
var previous = document.querySelector('.previous');
var mainskipButton = document.querySelector('.main-next');
var skipButton = document.querySelector('.next');

var mainvolumedownbutton = document.querySelector(".main-volume-down");
var volumedownbutton = document.querySelector(".volume-down");
var mainvolumeupbutton = document.querySelector(".main-volume-up");
var volumeupbutton = document.querySelector(".volume-up");
var mainvolumemutebutton = document.querySelector(".main-volume-mute");
var volumemutebutton = document.querySelector(".volume-mute");
var volumerange = document.getElementById("range");
var volumerange1 = document.getElementById("range1");
var volume = document.querySelector(".volume");
var volume1 = document.querySelector(".volume1");

var currentTime = document.getElementById("main-time");
var currentTime1 = document.getElementById("time");

var progress = document.querySelector('.main-progress');
var progressbar = document.querySelector('.main-bar-bg');
var progressbar1 = document.querySelector('.bar-bg');
var progress1 = document.querySelector('.progress');

var durationTime = document.getElementById("main-total-time");
var durationTime1 = document.getElementById("total-time");

var nextSong =document.getElementById("song-id").value;
var inputCheckBox = document.getElementById("check-box");

var audio = document.getElementById("songaudio");
audio.volume = 1;
audio.onended = function(){
    if(inputCheckBox.checked){
        window.location ="/Nhachayvjppro/mp3?songid="+nextSong;
    }
};
window.onload = function() {
    inputCheckBox.checked=true;
    setDuration();
    autoPlay();
};
progressbar.addEventListener("click",function(){
    audio.currentTime = (event.clientX -getPos(progressbar).x)/progressbar.offsetWidth * audio.duration;
});
progressbar1.addEventListener("click",function(){
    console.log(event.clientX);
    console.log(getPos(progressbar1).x);
    audio.currentTime = (event.clientX -getPos(progressbar1).x)/progressbar1.offsetWidth * audio.duration;
});
mainplayButton.addEventListener("click",function(){
    onPlayClick();
});
playButton.addEventListener("click",function(){
    onPlayClick();
});
mainpauseButton.addEventListener("click",function(){
    onPauseClick();
});
pauseButton.addEventListener("click",function(){
    onPauseClick();
});
mainvolumeupbutton.addEventListener("click",function(){
    if(volumerange.style.display === "" || volumerange.style.display === "none"){
        volumerange.style.display = "block";
        volume.style.marginBottom = "85px";
    }else if(volumerange.style.display === "block"){
        volumerange.style.display = "none";
        volume.style.marginBottom = "0px";
    }
});
volumeupbutton.addEventListener("click",function(){
    if(volumerange1.style.display === "" || volumerange1.style.display === "none"){
        volumerange1.style.display = "block";
        volume1.style.marginBottom = "85px";
    }else if(volumerange1.style.display === "block"){
        volumerange1.style.display = "none";
        volume1.style.marginBottom = "0px";
    }
});
function changeVolume(value){
    audio.volume = value/10;
}
function autoPlay(){
    mainpauseButton.style.display = "block";
    pauseButton.style.display = "block";
    mainplayButton.style.display = "none";
    playButton.style.display = "none";
}
function onPauseClick(){
    audio.pause();
    mainplayButton.style.display = "block";
    playButton.style.display = "block";
    mainpauseButton.style.display = "none";
    pauseButton.style.display = "none";
}
function onPlayClick(){
    audio.play();
    mainpauseButton.style.display = "block";
    pauseButton.style.display = "block";
    mainplayButton.style.display = "none";
    playButton.style.display = "none";
}
audio.addEventListener('timeupdate', (event) => {
    var time = audio.currentTime;
    var minutes = Math.floor(Math.floor(time)/60);
    var minutestring,secondstring;
    if (minutes < 10){
        minutestring = "0"+minutes;
    }
    else minutestring = minutes;
    var seconds = Math.floor(time - 60*minutes);
    if (seconds < 10){
        secondstring = "0"+seconds;
    }
    else secondstring = seconds;
    currentTime.innerHTML= minutestring+":"+secondstring;
    currentTime1.innerHTML= minutestring+":"+secondstring;
    var percent = 100*audio.currentTime/audio.duration;
    progress.style.width = percent+"%";
    progress1.style.width = percent+"%";
});
function setDuration(){
    var time = audio.duration;
    var minutes = Math.floor(Math.floor(time)/60);
    var minutestring,secondstring;
    if (minutes < 10){
        minutestring = "0"+minutes;
    }
    else minutestring = minutes;
    var seconds = Math.floor(time - 60*minutes);
    if (seconds < 10){
        secondstring = "0"+seconds;
    }
    else secondstring = seconds;
    durationTime.innerHTML= minutestring+":"+secondstring;
    durationTime1.innerHTML= minutestring+":"+secondstring;
}
function getPos(el) {
    for (var lx=0, ly=0;
         el !== null;
         lx += el.offsetLeft, ly += el.offsetTop, el = el.offsetParent);
    return {x: lx,y: ly};
}