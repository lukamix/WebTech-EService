var type = document.getElementById("type");

var SongOption = document.querySelector(".Song-Option");
var VideoOption = document.querySelector(".Video-Option");
var TikTokOption = document.querySelector(".TikTok-Option");
var LoveOption = document.querySelector(".Love-Option");
window.onload = function(){
    onChoose();
};
function onChoose(){
    var typechoosed = type.value;
    chooseOption(typechoosed);
}
function chooseOption(option){
    nondisplayall();
    switch(option){
        case "Song":{
              SongOption.style.display="block";
              break;
        }
        case "Video":{
              VideoOption.style.display="block";
              break;
        }
        case "TikTok":{
              TikTokOption.style.display="block";
              break;
        }
        case "SendLove":{
              LoveOption.style.display="block";
              break;
        }
    }
}
function nondisplayall(){
    SongOption.style.display="none";
    VideoOption.style.display="none"; 
    TikTokOption.style.display="none";
    LoveOption.style.display="none";
}