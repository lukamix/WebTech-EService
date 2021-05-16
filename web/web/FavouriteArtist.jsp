<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/FavouriteArtist.css"/>
<div class="FavouriteArtist">
    <div class ="favourite">Nghệ Sĩ Yêu Thích</div>
    <div class ="favourite-image">
        <div class ="favourite-image1">
        <a href="artist?artistid=<%=session.getAttribute("favoriteartistid"+Integer.toString(0))%>&songpage=1&videopage=1" class="bigImage"><img src=<%=session.getAttribute("favoriteartistimagelink"+Integer.toString(0))%> alt="Nghệ Sĩ Đẹp Trai"/></a>
        <div class="smallImage">
            <a href="artist?artistid=<%=session.getAttribute("favoriteartistid"+Integer.toString(1))%>&songpage=1&videopage=1" class="smallImage1"><img src=<%=session.getAttribute("favoriteartistimagelink"+Integer.toString(1))%> alt="Nghệ Sĩ Xinh Gái"/></a>
            <a href="artist?artistid=<%=session.getAttribute("favoriteartistid"+Integer.toString(2))%>&songpage=1&videopage=1" class="smallImage1"><img src=<%=session.getAttribute("favoriteartistimagelink"+Integer.toString(2))%> alt="Nghệ Sĩ Cao To"/></a>
        </div>
        </div>
        <div class ="favourite-image2">
            <a href="artist?artistid=<%=session.getAttribute("favoriteartistid"+Integer.toString(3))%>&songpage=1&videopage=1" class="smallImage2"><img src=<%=session.getAttribute("favoriteartistimagelink"+Integer.toString(3))%> alt="Nghệ Sĩ Ngầu Lòi"/></a>
            <a href="artist?artistid=<%=session.getAttribute("favoriteartistid"+Integer.toString(4))%>&songpage=1&videopage=1" class="smallImage2"><img src=<%=session.getAttribute("favoriteartistimagelink"+Integer.toString(4))%> alt="Nghệ Sĩ Đeo Kính"/></a>
        </div>
    </div>
</div>