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
5. Chạy Project:
- Bấm chuột phải vào project ,chọn Run hoặc đơn giản hơn là bấm nút Run Project có sẵn trên màn hình (Nhớ để ý xem nút đấy sẽ chạy project nào)
- Đợi 1 lúc, bảng thông báo nhập username và password cho server sẽ hiện ra, nhập username và password bạn đã tạo trước đó ở mục 3.
- Done !

# Đổi Browser Mặc định của project:
Cách 1 : -Chọn Tools ->Options ,ở dưới tab General 
-mục Web Browser ->chọn Edit
-ở mục process -> chọn Browse
-tìm đến địa chỉ dạng như thế này nếu muốn chuyển qua Cốc Cốc : C:\Users\[UserName]\AppData\Local\CocCoc\Browser\Application\browser.exe
Cách 2 :Chuột phải vào Project->Properties->Run, ở mục Browser chọn Browser bạn muốn ,dĩ nhiên là sẽ không có Cốc cốc rồi !
