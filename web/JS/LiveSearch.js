var t;
var results = document.getElementById("results");

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
function startSearch(){
    if(t) window.clearTimeout(t);
    t = window.setTimeout("liveSearch()",200);
}
function liveSearch(){
   ajaxRequest = getXMLHttpRequest();
   if (!ajaxRequest) alert("Request error!");
   var searchURL = 'http://localhost:8080/Nhachayvjppro/SearchServlet';
   var query = document.getElementById("searchinput").value;
   if(query!==""){
       results.style.display = "block";
   }
   else{
       results.style.display = "none";
   }
   searchURL = searchURL+"?query=" + query;
   ajaxRequest.onreadystatechange = ajaxResponse;
   ajaxRequest.open("GET",searchURL,true);
   ajaxRequest.send(null);
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
function displaySearchResults(){ 
    var i, n, li, t,a,id;
    var ul = document.getElementById("list");
    var div = document.getElementById("results");
    div.removeChild(ul); // delete the old search results
    ul = document.createElement("UL"); // create a new list container
    ul.id="list";
    // var naget the results from the search request object
    if(ajaxRequest.responseXML!=null){
        songnames=ajaxRequest.responseXML.getElementsByTagName("songname");
        songid = ajaxRequest.responseXML.getElementsByTagName("songid");
        for (i = 0; i < songnames.length; i++)
        {
            li = document.createElement("LI"); // create a new list element
            a = document.createElement("a");
            n = songnames[i].firstChild.nodeValue;
            t = document.createTextNode(n);
            id= songid[i].firstChild.nodeValue;
            a.setAttribute('href',"http://localhost:8080/Nhachayvjppro/MP3Servlet?songid="+id);
            a.appendChild(t);
            li.appendChild(a);
            ul.appendChild(li);
            li.style.position = "relative";
        }
    }
    if(ajaxRequest.responseXML==null){
        // if no results are found, say so
        li = document.createElement("LI");
        li.appendChild(document.createTextNode("No results."));
        ul.appendChild(li);
    }
    div.appendChild(ul); // display the new list
}