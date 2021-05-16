<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/dependent.jsp"/>
    </head>

    <body>
        <section id="main">
            <jsp:include page="common/header.jsp"/>
            <div class="v">
            <jsp:include page="web/showcase.jsp"/>
            <jsp:include page="web/slideshow.jsp"/>
            <div class="horizontaldisplay">
                <div class="verticaldisplay1">
                    <jsp:include page="web/NewestAlbum.jsp"/>
                    <div class ="subverticaldisplay">
                        <jsp:include page="web/NewMusic.jsp"/>
                        <jsp:include page="web/NewListen.jsp"/>
                    </div>
                </div>
                <div class ="verticaldisplay2">
                    <jsp:include page="web/LeaderBoard.jsp"/>
                    <jsp:include page="web/FavouriteArtist.jsp"/>
                </div>
            </div>
            </div>
            <jsp:include page="common/footer.jsp"/>
        </section>
    </body>
    <script type ="text/javascript" src ="JS/slideshow.js"/></script>
</html>
