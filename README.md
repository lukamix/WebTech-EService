# Yêu cầu Phần Mềm:
  Để sử dụng Project ,trước hết bạn cần Netbeans IDE ,link tải ở đây : 
    https://mirror.downloadvn.com/apache/netbeans/netbeans/12.3/Apache-NetBeans-12.3-bin-windows-x64.exe
  Tiếp theo , Cần phải cài biến môi trường cho Project: Bạn đọc tự tìm hiểu .
  JDK: Project sử dụng JDK 11 
  XAMPP :https://www.apachefriends.org/xampp-files/8.0.6/xampp-windows-x64-8.0.6-0-VS16-installer.exe
  Config XAMPP : Apache Port 80,443
                MySQL Port 3306
  -Nếu báo lỗi không chạy được SQL ,hãy thử mở Service thông qua tổ hợp phím Window+R,nhập Service.msc,sau đó tìm đến mysql(hoặc mysqlxampp) đang chạy,chuột phải và stop
  -Nếu thực hiện cách trên vẫn không chạy thì hãy thử tìm kiếm thông báo lỗi trên google, hãy chắc rằng đã config đúng các port như ở trên !
  Hệ quản trị cơ sở dữ liệu : 
  + MySQL : https://dev.mysql.com/downloads/mysql/
  + MySQL Workbench : https://dev.mysql.com/downloads/workbench/
# Hướng dẫn chạy project trên máy của bạn:
1. Clone project về máy
2. Mở Netbeans và mở project , lúc này netbeans sẽ báo lỗi do thiếu server
3. Add server bằng cách bấm vào tab Service, mục Server bấm chuột phải chọn Add Server...
Nếu bằng 1 cách nào đó bạn không tìm thấy tab Service, thì hãy bấm vào Window ->Services hoặc đơn giản hơn là Ctrl+ 5.
+Bấm chọn Apache Tomcat or TomEE sau đó bấm next
+Tại mục Server Location bấm chọn browse ,sau đó tìm đến được dẫn thư mục lib của project bạn vừa clone về, chọn Tomcat-Server/apache-tomcat-8.5.34
+Nhập username và password(hãy chăc chắn rằng sau khi nhập thì bạn sẽ nhớ được nó) hoặc bạn có thể bỏ qua bước này
+Bấm finish
+Done !
4.Add library cần thiết:
- Trong tab project sẽ có mục Libraries, bấm chuột phải vào nó ,chọn Add Jar/Folder
- Tìm đến đường dẫn thư mục lib của project , Chọn tất cả các file jar bên trong thư mục lib -> bấm Open.
- Done !
5. Import Database
  Trong thư mục lib/Database ,chúng tôi đã để sẵn file WebStreamingMusic.sql
  Trong MySQL Workbench : chọn Server -> Data Import -> Chọn Import from Self-Contained File -> chọn đường dẫn đến file database ở trên
  ->Mục Default Target Schema ->bấm new ,nhập webstreamingmusic -> bấm ok ->Start Import
  -> Đợi và Database đã được import vào MySQL !
6. Config lại 1 số thuộc tính :
  Trong file AbstractDAO.java ở mục Source Packages/DAO/impl :
    -Đi tới dòng lệnh :"

            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/webstreamingmusic";

            String user = "root";

            String password = ""; 
"
    -Sửa đổi thông tin user và password ứng với db của bạn .
7. Chạy Project:
- Bấm chuột phải vào project ,chọn Run hoặc đơn giản hơn là bấm nút Run Project có sẵn trên màn hình (Nhớ để ý xem nút đấy sẽ chạy project nào)
- Đợi 1 lúc, bảng thông báo nhập username và password cho server sẽ hiện ra, nhập username và password bạn đã tạo trước đó ở mục 3.
- Done !


# Đổi Browser Mặc định của project:
Cách 1 : -Chọn Tools ->Options ,ở dưới tab General 
-mục Web Browser ->chọn Edit
-ở mục process -> chọn Browse
-tìm đến địa chỉ dạng như thế này nếu muốn chuyển qua Cốc Cốc : C:\Users\[UserName]\AppData\Local\CocCoc\Browser\Application\browser.exe
Cách 2 :Chuột phải vào Project->Properties->Run, ở mục Browser chọn Browser bạn muốn ,dĩ nhiên là sẽ không có Cốc cốc rồi !
