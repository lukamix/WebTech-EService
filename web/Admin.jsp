<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="common/dependent.jsp"/>
        <link rel="stylesheet" href = "css/Admin.css"/>
    </head>
    <body>
        <div class="left-panel">
            <a href="home">
                <div class="heading">
                    <img src="images/duc.jpg" alt="logo-page"/>
                    <h5>Nhachayvjpprono1</h5>
                </div>
            </a>
            <div class="admin-info">
                <div class="admin-avatar">
                    <img src=<%=request.getAttribute("avatarlink")%> alt="admin đẹp trai provjp"/>
                    <div class="green-point"></div>
                </div>
                <div class="admin-sub-info">
                <a href="#" class="admin-name"><%=request.getAttribute("userfullname")%></a>
                    <img src="images/logo.jpg" alt="admin đẹp trai provjp"/>
                    <div class="green-point"></div>
                </div>
                <div class="admin-sub-info">
                <a href="#" class="admin-name">Nguyễn Bá Đức</a>
                <a href="#" class="admin-dep-trai">Admin đẹp trai</a>
                </div>
            </div>
            <div class="main-menu">
                <h5>Thao tác</h5>
                <div class="button-zone">
                    <button id="qlnd" onclick="window.location.href='/Nhachayvjppro/admin?userpage=1'">Quản lý Người Dùng</button>
                    <button id="qlbh" onclick="window.location.href='/Nhachayvjppro/admin?songpage=1'">Quản lý Bài Hát</button>
                    <button id="qlvd" onclick="window.location.href='/Nhachayvjppro/admin?videopage=1'">Quản lý Video</button>
                    <button id="qltt" onclick="window.location.href='/Nhachayvjppro/admin?tiktokpage=1'">TikTok</button>
                    <button id="qlltc" onclick="window.location.href='/Nhachayvjppro/admin'">Quản lý Lượt Truy Cập</button>
                </div>
            </div>
            <div class="audio-pro-vjp-for-admin">
                <div class="audio-play">
                    <audio id="BGSound" controls autoplay="true" style="display:none">
                        <source src="BackgroundAudio/BGSound.mp3" type="audio/mp3">
                        Your browser does not support tde audio element.
                    </audio>
                </div>
            </div>
        </div>
        <div class="right-panel">
            <div class="admin-header">
                <div class="replace-for-left-panel-responsive">
                    <a href="home">
                        <div class="heading">
                            <img src="images/duc.jpg" alt="logo-page"/>
                        </div>
                    </a>
                </div>
                <div class="phone-number">Contact: +84365182504</div>
                <div class="search-box">
                    <div class="search">
                        <span class="material-icons" id="searchicon">search</span>
                        <form action="#" metdod="get">
                        <input type="text" placeholder="Tìm kiếm" id = "searchinput" onkeydown="startSearch()"/>
                        </form>
                    </div>
                    <div id="results">
                        <ul id="list">
                            <li><a href="">hi</a></li>
                            <li><a href="">hi</a></li>
                            <li><a href="">hi</a></li>
                        </ul>
                    </div>
                </div>
                <div class="admin-header-right-side">
                    <button>
                        <span class="material-icons">
                        notifications
                        </span>
                    </button>
                    <button>
                    <span class="material-icons">
                    email
                    </span>
                    </button>
                    <div class ="admin-header-right-side-admin-info">
                        <img src=<%=request.getAttribute("avatarlink")%> alt="alt"/>
                        <span class="material-icons">
                            expand_more
                        </span>
                        <div class="sub-admin-info" style="display:none;">
                           <img src=<%=request.getAttribute("avatarlink")%> alt="alt"/>
                           <div class="admin-name">
                                
                           </div>
                           <div class="admin-email">
                               
                           </div>
                        </div>
                    </div>
                    <button>
                    <div class ="admin-header-right-side-admin-info">
                        <img src="images/logo.jpg" alt="alt"/>
                        <span class="material-icons">
                        expand_more
                        </span>
                    </div>
                    </button>
                </div>
            </div>
            <div class="admin-content">
                <%
                    if(request.getParameter("userpage")!=null){
                    int currentpage = Integer.parseInt(request.getParameter("userpage").toString());
                %>
                    <div class="User-Manager" style="overflow-x:auto;">
                        <div class="table">
                            <div class="tr">
                                <div class="td" id="username">UserName</div>
                                <div class="td" id="role">Role</div>
                                <div class="td" id="uact">Action</div>
                            </div>
                            <%
                            for(int i=0;i<Integer.parseInt(request.getAttribute("Nrecord").toString());i++)
                            {
                            %>
                            <form class="tr" action="update-user" method="POST">
                                <div class="td"><input type="text" name="user-name"
                                           value="<%=request.getAttribute("username"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="user-role"
                                           value="<%=request.getAttribute("userrole"+Integer.toString(i))%>"></div>
                                <div class="td">
                                    <button id="uupdate">UPDATE</button>
                                </div>
                            </form>
                            <%}%>
                        </div>
                        <div class="pagination">
                            <%
                                int count = Integer.parseInt(request.getAttribute("count").toString());
                                String link = "window.location.href='/Nhachayvjppro/admin?userpage=";
                            %>
                            <%if(count>0){
                                String link1=link+"1'";
                            %>
                            <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
                            <%}%>
                            <%if(count>20){
                                String link2=link+"2'";
                            %>
                            <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
                            <%}%>
                            <%if(count>40){
                                String link3=link+"3'";
                            %>
                            <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
                            <%}%>
                            <%if(count>60){%>
                            <button id="etc">...</button>
                            <%}%>
                            <%if(count>100){
                                String link6=link+"6'";
                                String link7=link+"7'";
                            %>
                            <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
                            <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
                            <%}%>
                        </div>
                    </div>
                <%}%>
                <%
                    if(request.getParameter("songpage")!=null){
                    int currentpage = Integer.parseInt(request.getParameter("songpage").toString());
                %>
                <div class="Song-Manager" style="overflow-x:auto;">
                    
                        <div class="table">
                            <div class="tr">
                                <div class="td" id="sid">Song ID</div>
                                <div class="td" id="sname">Song Name</div>
                                <div class="td" id="slink">Song Link</div>
                                <div class="td" id="aid">Artist ID</div>
                                <div class="td" id="squal">Quality</div>
                                <div class="td" id="sview">View</div>
                                <div class="td" id="sact">Action</div>
                            </div>
                            <%
                            for(int i=0;i<Integer.parseInt(request.getAttribute("Nrecord").toString());i++)
                            {
                            %>
                            <form class="tr" action="update-song" method="POST">
                                <div class="td"><input type="text" name="songid"
                                           value="<%=request.getAttribute("songid"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="songname"
                                           value="<%=request.getAttribute("songname"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="link"
                                           value="<%=request.getAttribute("songlink"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="artist1id"
                                           value="<%=request.getAttribute("artist1id"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="Quality"
                                           value="<%=request.getAttribute("Quality"+Integer.toString(i))%>"></div>
                                <div class="td"><input type="text" name="songview"
                                           value="<%=request.getAttribute("songview"+Integer.toString(i))%>"></div>
                                <div class="td">
                                    <button id="supdate">UPDATE</button>
                                </div>
                            </form>
                            <%}%>
                        </div>
                    <div class="pagination">
                        <%
                            int count = Integer.parseInt(request.getAttribute("count").toString());
                            String link = "window.location.href='/Nhachayvjppro/admin?songpage=";
                        %>
                        <%if(count>0){
                            String link1=link+"1'";
                        %>
                        <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
                        <%}%>
                        <%if(count>20){
                            String link2=link+"2'";
                        %>
                        <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
                        <%}%>
                        <%if(count>40){
                            String link3=link+"3'";
                        %>
                        <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
                        <%}%>
                        <%if(count>60){%>
                        <button id="etc">...</button>
                        <%}%>
                        <%if(count>100){
                            String link6=link+"6'";
                            String link7=link+"7'";
                        %>
                        <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
                        <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
                        <%}%>
                    </div>
                </div>
                <%}%>
                <%
                    if(request.getParameter("videopage")!=null){
                    int currentpage = Integer.parseInt(request.getParameter("videopage").toString());
                %>
                <div class="Video-Manager" style="overflow-x:auto;">
                    
                    <div class="table">
                        <div class="tr">
                            <div class="td" id="vdid">Video ID</div>
                            <div class="td" id="vdname">Video Name</div>
                            <div class="td" id="vdlink">Video Link</div>
                            <div class="td" id="tnlink">Thumbnail Link</div>
                            <div class="td" id="vdvc">View Count</div>
                            <div class="td" id="vdact">Action</div>
                        </div>
                        <%
                        for(int i=0;i<Integer.parseInt(request.getAttribute("Nrecord").toString());i++)
                        {
                        %>
                        <form class="tr" action="update-video" method="POST">
                            <div class="td"><input type="text" name="videoid"
                                           value="<%=request.getAttribute("videoid"+Integer.toString(i))%>"></div>
                            <div class="td"><input type="text" name="videoname"
                                           value="<%=request.getAttribute("videoname"+Integer.toString(i))%>"></div>
                            <div class="td"><input type="text" name="videolink"
                                           value="<%=request.getAttribute("videolink"+Integer.toString(i))%>"></div>
                            <div class="td"><input type="text" name="thumbnaillink"
                                           value="<%=request.getAttribute("thumbnaillink"+Integer.toString(i))%>"></div>
                            <div class="td"><input type="text" name="viewcount"
                                           value="<%=request.getAttribute("viewcount"+Integer.toString(i))%>"></div>
                            <div class="td">
                                <button id="vupdate">UPDATE</button>
                            </div>
                        </form>
                        <%}%>
                    </div>
                    </form>
                    <div class="pagination">
                        <%
                            int count = Integer.parseInt(request.getAttribute("count").toString());
                            String link = "window.location.href='/Nhachayvjppro/admin?videopage=";
                        %>
                        <%if(count>0){
                            String link1=link+"1'";
                        %>
                        <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
                        <%}%>
                        <%if(count>20){
                            String link2=link+"2'";
                        %>
                        <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
                        <%}%>
                        <%if(count>40){
                            String link3=link+"3'";
                        %>
                        <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
                        <%}%>
                        <%if(count>60){%>
                        <button id="etc">...</button>
                        <%}%>
                        <%if(count>100){
                            String link6=link+"6'";
                            String link7=link+"7'";
                        %>
                        <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
                        <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
                        <%}%>
                    </div>
                </div>
                <%}%>
                <%
                    if(request.getParameter("tiktokpage")!=null){
                    int currentpage = Integer.parseInt(request.getParameter("tiktokpage").toString());
                %>
                <div class="Tiktok-Manager" style="overflow-x:auto;">
                    
                    <div class="table">
                        <div class="tr">
                            <div class="td" id="ttdid">Tiktok ID</div>
                            <div class="td" id="ttdtml">HTML</div>
                            <div class="td" id="ttact">Action</div>
                        </div>
                        <%
                        for(int i=0;i<Integer.parseInt(request.getAttribute("Nrecord").toString());i++)
                        {
                        %>
                        <form class="tr" action="update-tiktok" method="POST">
                            
                            <div class="td"><input type="text" name="tiktokid"
                                           value="<%=request.getAttribute("tiktokid"+Integer.toString(i))%>"></div>
                            <div class="td">
                                <input type="text" name="html"
                                           value="<%=request.getAttribute("html"+Integer.toString(i))%>">
                            </div>
                            <div class="td">
                                <button id="tupdate">UPDATE</button>
                            </div>
                           
                        </form>
                        <%}%>
                    </div>
                    <div class="pagination">
                        <%
                            int count = Integer.parseInt(request.getAttribute("count").toString());
                            String link = "window.location.href='/Nhachayvjppro/admin?tiktokpage=";
                        %>
                        <%if(count>0){
                            String link1=link+"1'";
                        %>
                        <button id="button-page1" <%if(currentpage==1){%> style='background-color:orange'<%}%> onclick=<%=link1%>>1</button>
                        <%}%>
                        <%if(count>20){
                            String link2=link+"2'";
                        %>
                        <button id="button-page2" <%if(currentpage==2){%> style='background-color:orange'<%}%> onclick=<%=link2%>>2</button>
                        <%}%>
                        <%if(count>40){
                            String link3=link+"3'";
                        %>
                        <button id="button-page3" <%if(currentpage==3){%> style='background-color:orange'<%}%> onclick=<%=link3%>>3</button>
                        <%}%>
                        <%if(count>60){%>
                        <button id="etc">...</button>
                        <%}%>
                        <%if(count>100){
                            String link6=link+"6'";
                            String link7=link+"7'";
                        %>
                        <button id="button-page4" <%if(currentpage==6){%> style='background-color:orange'<%}%> onclick=<%=link6%>>6</button>
                        <button id="button-page5" <%if(currentpage==7){%> style='background-color:orange'<%}%> onclick=<%=link7%>>7</button>
                        <%}%>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </body>
    <script type ="text/javascript" src ="JS/Admin.js"/></script>
</html>
