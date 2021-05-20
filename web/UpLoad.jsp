<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/dependent.jsp"/>
    </head>
    <body>
        <jsp:include page="common/header.jsp"/>
        <section style="display: flex">
            <jsp:include page="web/UploadPage.jsp"/>  
        </section>
        <jsp:include page="/common/footer.jsp"/>
    </body>
</html>