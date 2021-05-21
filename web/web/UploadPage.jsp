<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href = "css/UploadPage.css"/>
<div class="uploadPage">
    <div class="heading">
        Nếu bạn đóng góp cho chúng tôi ,rất xinh đẹp tuyệt vời ,xin cám ơn !
    </div>
    <div class="content">
        <img src="images/rxdtv.jfif" alt="rất xinh đẹp ,tuyệt vời ,xin cám ơn"/>
        <form action="Upload" accept-charset="utf-8" method="POST">
            <label for="chon">Kiểu upload:</label>
            <select name="type" id="type" onchange="onChoose()">
                <option value="Song">Song</option>
                <option value="Video">Video</option>
                <option value="TikTok">TikTok</option>
                <option value="SendLove">Gửi Lời Yêu Thương đến Admin[Optional]</option>
            </select>
            <br>
            <div class="Song-Option" style="display:none;">
                <div class="sub-option">
                <label for="songname">Song Name:</label>
                <input type="text" id="sname" name="sname"><br>
                </div>
                <div class="sub-option">
                <label for="songlink">Link:</label>
                <input type="text" id="slink" name="slink"><br>
                </div>
                <div class="sub-option">
                <label for="artistname">Tên Ca Sĩ:</label>
                <input type="text" id="artistname" name="artistname"><br>
                </div>
                <div class="sub-option">
                <label for="songimage">Ảnh:</label>
                <input type="text" id="songimage" name="songimage"><br>
                </div>
                <div class="sub-option">
                <label for="songgenre">Thể Loại:</label>
                <input type="text" id="songgenre" name="songgenre"><br>
                </div>
                <div class="sub-option">
                <label for="songquality">Chất lượng:</label>
                <input type="text" id="songgenre" name="songquality"><br>
                </div>
                <div class="sub-option">
                <label for="songauthor">Nhạc Sĩ:[Optional]</label>
                <input type="text" id="songauthor" name="songauthor"><br>
                </div>
                <button>Upload</button>
            </div>
            <div class="Video-Option" style="display:none;">
                <div class="sub-option">
                <label for="videoname">Video Name:</label>
                <input type="text" id="vname" name="vname"><br>
                </div>
                <div class="sub-option">
                <label for="videolink">Link:[Chỉ chấp nhận Youtube]</label>
                <input type="text" id="vlink" name="vlink"><br>
                </div>
                <div class="sub-option">
                <label for="thumbnail">Ảnh Thumbnail:</label>
                <input type="text" id="thumbnail" name="thumbnail"><br>
                </div>
                <div class="sub-option">
                <label for="artist">Nghệ Sĩ:</label>
                <input type="text" id="artist" name="artist"><br>
                </div>
                <button>Upload</button>
            </div>
            <div class="TikTok-Option" style="display:none;">
                <div class="sub-option">
                <label for="html">TikTok HTML Embed:</label>
                <input type="text" id="html" name="html"><br>
                </div>
                <button>Upload</button>
            </div>
            <div class="Love-Option" style="display:none;">
                <div class="sub-option">
                <label for="love">Gửi Lời Yêu Thương:</label>
                <input type="text" id="love" name="love"><br>
                </div>
                <button>Upload</button>
            </div>
        </form>
    </div>
</div>