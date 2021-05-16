<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/mp3.css"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/dependent.jsp"/>
    </head>
    
    <body>
        <jsp:include page="common/header.jsp"/>
        <section id="main" style="display: flex; 
    margin-top:5%;" >
            <div class ="left">
                <jsp:include page="web/MainMusicPlayer.jsp"/>
                <jsp:include page="web/SongInfo.jsp"/>
            </div>
            <div class ="right">
                <jsp:include page="web/GoiY.jsp"/>
            </div>
            <jsp:include page="web/MusicPlayer.jsp"/>
        </section>
         <jsp:include page="/common/footer.jsp"/>
    </body>
    <script type ="text/javascript" src ="JS/slideshow.js"/></script>
    <script type ="text/javascript" src ="JS/Mp3Play.js"/></script>
</html>