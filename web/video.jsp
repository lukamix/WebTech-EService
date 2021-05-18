<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/video.css"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/dependent.jsp"/>
    </head>
    
    <body>
        <jsp:include page="common/header.jsp"/>
        <section id="main" style="display: flex ; 
                                  margin-left: 10vw;
                                  margin-top:7.5vw;
                                  ">
            <div class ="left" style="width:50vw;">
                <jsp:include page="web/YoutubeVideo.jsp"/>
                <jsp:include page="web/VideoInfo.jsp"/>
            </div>
            <div class ="right" style="width:50vw;
                 padding-left: 50px">
                <jsp:include page="web/VideoGoiY.jsp"/>
            </div>
        </section>
         <jsp:include page="/common/footer.jsp"/>
    </body>
    <script src="https://www.youtube.com/iframe_api"></script>
    <script type ="text/javascript" src ="JS/Mp4Play.js"/></script>
</html>