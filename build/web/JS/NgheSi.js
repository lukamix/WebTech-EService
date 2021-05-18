var firstbt=document.getElementById("first-bt");
var secondbt=document.getElementById("second-bt");
var thirdbt=document.getElementById("third-bt");
var fourthbt=document.getElementById("fourth-bt");
var SongTab = document.querySelector(".nghesi-song");
var VideoTab = document.querySelector(".nghesi-video");
var AlbumTab = document.querySelector(".nghesi-album");
var PlaylistTab = document.querySelector(".nghesi-playlist");

firstbt.addEventListener("click",function(){
    ResetButton();
    highlight(firstbt,SongTab);
});
secondbt.addEventListener("click",function(){
    ResetButton();
    highlight(secondbt,VideoTab);
});
thirdbt.addEventListener("click",function(){
    ResetButton();
    highlight(thirdbt,AlbumTab);
});
fourthbt.addEventListener("click",function(){
    ResetButton();
    highlight(fourthbt,PlaylistTab);
});
function ResetButton(){
    firstbt.style.borderBottom ="3px solid #aaa";
    firstbt.style.color="#aaa";
    secondbt.style.borderBottom ="3px solid #aaa";
    secondbt.style.color="#aaa";
    thirdbt.style.borderBottom ="3px solid #aaa";
    thirdbt.style.color="#aaa";
    fourthbt.style.borderBottom ="3px solid #aaa";
    fourthbt.style.color="#aaa";
    SongTab.style.display = "none";
    VideoTab.style.display = "none";
    AlbumTab.style.display = "none";
    PlaylistTab.style.display = "none";
}
function highlight(button,displaytab){
    button.style.borderBottom ="3px solid orange";
    button.style.color="orange";
    displaytab.style.display ="block";
}