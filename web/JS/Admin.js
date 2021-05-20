var leftpanel = document.querySelector(".left-panel");
var rightpanel = document.querySelector(".right-panel");
var leftpanelheight = document.querySelector(".left-panel").clientHeight;
var rightpanelheight = document.querySelector(".right-panel").clientHeight;
var audio = document.getElementById("BGSound");
audio.volume = 0.05;
window.onload = function(){
    if(leftpanelheight>rightpanelheight){
        rightpanel.style.height = leftpanelheight.toString()+"px";
    }
    else{
        leftpanel.style.height = rightpanelheight.toString()+"px";
    }
};
function getXMLHttpRequest(){
    var request, err;
    try {
        request = new XMLHttpRequest(); // Firefox, Safari, Opera, etc.
    }
    catch(err) {
        try { // first attempt for Internet Explorer
            request = new ActiveXObject("MSXML2.XMLHttp.6.0");
        }
        catch (err) {
            try { // second attempt for Internet Explorer
                request = new ActiveXObject("MSXML2.XMLHttp.3.0");
            }
            catch (err) {
                request = false; // oops, can’t create one!
            }
        }
    }
    return request;
}
function updateValue(table){
    
}
function ajaxResponse(){
    if(ajaxRequest.readyState !== 4){
        return;
    }
    else{
        if(ajaxRequest.status === 200){
            displaySearchResults();
        }
        else{
            alert("Request failed: " + ajaxRequest.statusText);
        }
    }
}