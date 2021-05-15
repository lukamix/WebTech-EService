var getYoutubeIdByUrl = function( url ){
  var regExp = /^.*((youtube.com\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
  var match = url.match(regExp);
  
  if(match&&match[7].length==11){ 
    return match[7];
  }
  return false;
};

var formatSecondsAsTime = function( secs ) {
  var hr = Math.floor(secs / 3600),
      min = Math.floor((secs - (hr * 3600)) / 60),
      sec = Math.floor(secs - (hr * 3600) - (min * 60));

  if (hr < 10) {
      hr = "0" + hr;
  }
  if (min < 10) {
      min = "0" + min;
  }
  if (sec < 10) {
      sec = "0" + sec;
  }
  if (hr) {
      hr = "00";
  }
  return hr + ':' + min + ':' + sec;
};

/*
 * using 'video_url' (dynamic information) to get youtube video basic informations (title, duration).
 */

var yt_video_id = getYoutubeIdByUrl( video_url );
if( yt_video_id ){
  $.getJSON('http://gdata.youtube.com/feeds/api/videos/'+ yt_video_id +'?v=2&alt=jsonc', function(data,status,xhr){
      var yt_response = data.data, // If you need more video informations, take a look on this response: data.data
          yt_title = yt_response.title,
          yt_duration = formatSecondsAsTime( yt_response.duration );
  }); 
}