-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: webstreamingmusic
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `albumid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `albumname` varchar(255) DEFAULT NULL,
  `timecreate` datetime DEFAULT NULL,
  `artistid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`albumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_artist`
--

DROP TABLE IF EXISTS `album_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_artist` (
  `albumid` int(10) unsigned DEFAULT NULL,
  `artistid` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_artist`
--

LOCK TABLES `album_artist` WRITE;
/*!40000 ALTER TABLE `album_artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artistid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artistname` varchar(100) DEFAULT NULL,
  `artistdescription` text DEFAULT NULL,
  `imagelink` text DEFAULT 'images/duc.jpg',
  PRIMARY KEY (`artistid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Chillies','Chillies là một ban nhạc pop rock người Việt Nam gồm 5 thành viên: Khang, Nhím, Phước, Đức và Phú. Nhóm được thành lập vào tháng 10 năm 2018 và được quản lý bởi hãng đĩa Warner Music Vietnam.','https://event.mediacdn.vn/2020/8/14/chillies-1-15974000345051760466771.jpg'),(2,'Binz','Lê Nguyễn Trung Đan, chiều cao: 1m60, thường được biết đến với nghệ danh Binz hay Binz Da Poet, là một nam rapper, nhạc sĩ người Mỹ gốc Việt.','https://vcdn1-giaitri.vnecdn.net/2021/03/26/Binz1-1616724579-6255-1616724605.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=5osCJ80frju9EQZyACtQbQ'),(3,'Rosé','Park Chae-young, thường được biết đến với nghệ danh Rosé là một nữ ca sĩ người New Zealand gốc Hàn Quốc. Sinh ra ở New Zealand và lớn lên ở Úc, Rosé ký hợp đồng với công ty YG Entertainment của Hàn Quốc sau một buổi thử giọng vào năm 2012 và đào tạo tại đây trong bốn năm.','https://i.pinimg.com/736x/55/02/08/5502083406b2100dc1f1441a148997e0.jpg'),(4,'Sơn Tùng M-TP','Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam. Sinh ra ở thành phố Thái Bình, thời thơ ấu, Tùng thường đi hát ở Cung văn hoá thiếu nhi tỉnh Thái Bình và học chơi đàn organ.','https://pbs.twimg.com/profile_images/1073894604481519617/fyhGuoH5_400x400.jpg'),(5,'Tage','Tage (Vũ Tuấn Huy, sinh năm 2001)','https://nguoinoitieng.tv/images/nnt/102/0/bfyp.jpg'),(6,'Jimmy Ngủyên','Dáp bơ hải ngoại','https://i1.sndcdn.com/artworks-D5rkzeSurEDX7ioR-14m1RQ-t500x500.jpg'),(7,'Low G','Low G là 1 rapper tài năng đến từ Rap Nhà Làm. Sở hữu chất giọng trầm đặc trưng, cùng cách đi flow sáng tạo, Low G đã gây ấn tượng rất lớn qua các sản phẩm âm nhạc trong series \"Tán Gái\", \"Hanoian Dreams\" và mới đây nhất là \"Trapper Killer\".','https://viethiphop.vn/wp-content/uploads/2020/10/Low-G.jpg'),(8,'RPT MCK','Long Ngơ/Nger','https://billboardvn.vn/wp-content/uploads/2020/11/MCK.jpg'),(9,'Tlinh','Thao Linh','https://media-cdn.laodong.vn/Storage/NewsPortal/2020/12/3/859292/Tlinh-01.jpg'),(10,'Jack','Trịnh Trần Phương Tuấn, thường được biết đến với nghệ danh Jack là một nam ca sĩ kiêm sáng tác nhạc, rapper người Việt Nam.','https://vcdn-ngoisao.vnecdn.net/2020/11/09/jack-jpeg-6136-1604908438.jpg'),(11,'RPT Orijin','Duxng','https://www.tiktok.com/api/img/?itemId=6903682089359658241&location=1&aid=1988'),(12,'16 Typh','typ nguyen','https://kenh14cdn.com/thumb_w/660/203336854389633024/2020/11/26/lwajmaow9ijd43utb5gzkp7tmy6jx8dzejxfpque-16063595623331909043437.jpeg'),(13,'Lê Bảo Bình','pìn','https://2sao.vietnamnetjsc.vn/images/2020/04/29/19/48/le-bao-binh-3.jpg'),(14,'Nguyễn Bá Đức','best daxua','images/duc.jpg'),(15,'The Chainsmokers & Coldplay ',NULL,'images/duc.jpg'),(16,'Hứa Kim Tuyền,Hoàng Duyên',NULL,'images/duc.jpg'),(17,'Hoàng Dũng',NULL,'images/duc.jpg'),(18,'ZAYN',NULL,'images/duc.jpg'),(19,'AMee,Ricky Star,LÄng LD',NULL,'images/duc.jpg'),(20,'Juky San,RedT',NULL,'images/duc.jpg');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `love`
--

DROP TABLE IF EXISTS `love`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `love` (
  `loveid` int(11) NOT NULL,
  `lovelove` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`loveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `love`
--

LOCK TABLES `love` WRITE;
/*!40000 ALTER TABLE `love` DISABLE KEYS */;
/*!40000 ALTER TABLE `love` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lyrics`
--

DROP TABLE IF EXISTS `lyrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lyrics` (
  `songid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lyrics` text DEFAULT NULL,
  PRIMARY KEY (`songid`),
  CONSTRAINT `lyrics_ibfk_1` FOREIGN KEY (`songid`) REFERENCES `song` (`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyrics`
--

LOCK TABLES `lyrics` WRITE;
/*!40000 ALTER TABLE `lyrics` DISABLE KEYS */;
INSERT INTO `lyrics` VALUES (1,'Không ai đúng, không ai sai\nKhông tiếng khóc trên mi ai\nKhông những thứ tha, van nài\nSao còn chưa thức dậy?\nTa cứ đếm sao trên đầu\nTên em trước, ta đi sau\nVẫn cứ nối đuôi theo nhau\nNhư đoàn tàu lăn bánh\nĐưa hồn ai theo gió\nĐi xa khắp muôn nơi\nĐi đến cuối chân trời\nChờ đợi điều gì trong nỗi nhớ\nMuốn em quay về đây\nGiấc mơ thôi đừng bay\nVuốt ve nhiều đêm trái tim này\nMà nào em có hay\nBánh xe tên thời gian\nCứ xoay và vỡ tan\nNhững nốt nhạc yêu dấu qua khung cửa sổ\nĐi trốn thế gian\nKhông sao đâu, anh đây rồi\nGió vẫn hát nơi ta ngồi\nBao yêu dấu vẫn trên môi\nNhư còn đang vương vấn\nBao lời yêu đã mất\nSao ta mãi ngu ngơ\nĐêm qua vẫn mong chờ\nChờ đợi điều gì trong nỗi nhớ\nMuốn em quay về đây\nGiấc mơ thôi đừng bay\nVuốt ve nhiều đêm trái tim này\nMà nào em có hay\nBánh xe tên thời gian\nCứ xoay và vỡ tan\nNhững nốt nhạc yêu dấu qua khung cửa sổ\nĐi trốn thế gian\nChờ đợi điều gì trong nỗi nhớ\nMuốn em quay về đây\nGiấc mơ thôi đừng bay\nVuốt ve nhiều đêm trái tim này\nMà nào em có hay\nBánh xe tên thời gian\nCứ xoay và vỡ tan\nNhững nốt nhạc yêu dấu đã mất\nGiấu theo sau từng giấc mơ\nMuốn em quay về đây\nGiấc mơ thôi đừng bay\nVuốt ve nhiều đêm trái tim này\nMà nào em có hay\nBánh xe tên thời gian\nCứ xoay và vỡ tan\nNhững nốt nhạc yêu dấu qua khung cửa sổ\nĐi trốn thế gian\nQua khung cửa sổ\nOh, qua khung cửa sổ đi trốn thế gian'),(2,'Em on top, không phải trending\nKhông phải Youtub\'e, không phải trên Zing\nAnh on top, em ở trên anh\nBeat Touliver drop người ta gọi tên anh\nBig city\nBig city boi\nBig city\nBig city boi\nBig city\nBig city-Spacespeakers in da house make some mother fucker noise ay\nThả tim đầy story em (thả)\nNhắn tin đầy trong DM (slide)\nCó phiền thì sorry em (sorry)\nĐón, 10 giờ pm? (ten)\nYea em thích coi sea game (dô)\nHợp âm anh thích là Cm (đô)\nXe em thích BM\nViệc anh thích là see em\nTrói em bằng cà vạt (trói)\nPenhouse trên Đà Lạt (đồi)\nNếu mà ngoan em sẽ bị thương (đôi)\nNếu mà hư em sẽ được phạt\nK-r-a-z-y about u\nHay là mang thêm friend đi không sao đâu\nYea anh không thường say yes\nVới em không thể say no\nNhìn anh lúc nào cũng fresh\nMake them haters say wow\nBig city\nBig city boi\nBig city…'),(3,'My life\'s been magic, seems fantastic\nI used to have a hole in the wall with a mattress\nFunny when you want it, suddenly you have it\nYou find out that your gold\'s just plastic\nEvery day, every night\nI\'ve been thinkin\' back on you and I\nEvery day, every night\nI worked my whole life\nJust to get right, just to be like\n\'Look at me, I\'m never coming down\'\nI worked my whole life\nJust to get high, just to realize\nEverything I need is on the\nEverything I need is on the ground\nOn the ground\nEverything I need is on the ground\n(Nah, but they don\'t hear me though)\n(Yeah, what goes up must come down)\n(Nah, but they don\'t hear me though)\n(You\'re runnin\' out of time)\nMy world\'s been hectic, seems electric\nBut I\'ve been waking up with your voice in my head\nAnd I\'m tryna send a…'),(4,'Mùa thu mang giấc mơ quay về\nVẫn nguyên vẹn như hôm nào\nLá bay theo gió xôn xao\nChốn xưa em chờ\nĐoạn đường ngày nào nơi ta từng đón đưa\nCòn vấn vương không phai mờ\nGiấu yêu thương trong vần thơ\nChúng ta...\nLà áng mây bên trời vội vàng ngang qua\nChúng ta...\nChẳng thể nâng niu những câu thề\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\nChiều mưa bên hiên vắng buồn, còn ai thương ai, mong ai?\nĐiều anh luôn giữ kín trong tim\nThương em đôi mắt ướt nhòa\nĐiều anh luôn giữ kín trong tim này\nThương em đâu đó khóc òa\nĐiều anh luôn giữ kín trong tim này\nNgày mai nắng gió, sương hao gầy\nCó ai thương, lắng lo cho em?\n(Whoo-whoo-whoo)\nĐiều anh luôn giữ kín trong tim\nThương em, anh mãi xin là\nĐiều anh luôn giữ kín trong tim này\nThương em vì thương thôi mà\nĐiều anh luôn giữ…'),(5,'Mất ngủ mất giọng bán sức khỏe\nMua những kẻ theo chân nhất cử nhất động\nẤp ủ giấc mộng\nBật nắp cống làm nhạc vàng bạc chất đống\nĐể giờ tao nếm thử thất vọng\nHahaha Từ từ từ kéo quần phát\nOk ok let\'s go nha\n\nNhân vật của công chúng bây giờ phát ngôn là phải luôn đúng mực\nBiểu cảm khuôn mặt thì phải trông giống như nàng công chúa ở trong cổ tích\nSao số là phải văn vở\nĂn ở\nThùy mị\n\nNên chúng mày kì thị\nNgười xăm trổ\nBitch!\nTin buồn là điều bọn tao làm vẫn theo sở thích\nĐiên cuồng âm nhạc tao so lit\nĐánh giá qua những cặp vần mỗi khi mở beat\nThay vì cách mặc quần của bọn tao hở đít\n\n(Để ý vào)\nTrang báo thì đang láo\nKhông biết sợ\nDìm cái tiến bộ dắt mũi hàng nghìn cái mến mộ\nĐến độ\nHaters tự bốc phét tự tiết lộ\n\nĐầu đầu gật như chú chó\nMồm xoen xoét là có người viết hộ\nThe bitch, yah\n\nBọn tao càng nhiều fame\nFacebook, Insta\nBọn tao hot trên cả Twitter\nNhắn họ hàng người quen là show some respect\nBitch, we run the game, boys\n\nKìa giọt nước kia đã tràn ly\nMy whole squad they\'re with me\nHoàn toàn xứng đáng cho những gì bọn tao làm\nCòn giờ thì y\'all gonna stop being envious\n\nTao đéo phong cách kiểu nhu mỳ đâu\nTao đây trông oách cùng whole team yo\nAint no go yard\nKeep your eyes on me\nY\'all got envy holes\nY\'all still got envy holes\n\nShalalala Sao mày lại ganh tị ×3\n\nYou want smoke? We\'re ready son\nMày chỉ trích\nNhạc bọn tao dùng để Quảng cáo\nNó chỉ đứa thứ nhạc tao vang lừng\n\nVà thêm thu nhập cho gia đình, chắc chắn tao vẫn làm\nHiphop vẫn cứ đập badabum ở trong tao\nKhoan dừng (và tự cho phép mình kiêu căng)\nCùng cái đam mê bố mày cháy từng đấy show\nLấy mấy tờ giấy màu\nMày nghĩ mày hiphop được hơn tao à\nWhat the ahihi just happened?\nOoh dừng\nMột tinh thần thép và hiếu thắng\nChật vật, trau dồi và cập nhật\nTao ngồi và tập đọc hàng đêm\nMà tốc độ rap vẫn thua cách chúng mày lật mặt\nHai chấm\nNgoặc ngoặc\n\nG,When I say G I know exactly whatcha think about\nTiền nhiều làm gì, để lên MV bảo chúng mày im mồm vào\nNgười ta shout out, không thích mày đi mà nghe tiếng thét và gào\nỞ trên website khiêu dâm\nKìa giọt nước kia đã tràn ly\nMy whole squad they\'re with me\nHoàn toàn xứng đáng cho những gì bọn tao làm\nCòn giờ thì y\'all gonna stop being envious\nTao đéo phong cách kiểu nhu mỳ đâu\nTao đây trông oách cùng whole team yo\nAint no go yard\nKeep your eyes on me\nY\'all got envy holes\nY\'all still got envy holes\n\nSalalala Sao mày lại ganh tị ×3\nYou want smoke? We\'re ready son\nBọn ăn Skrtt đá bô, súc miệng nước cống nuốt lá khô ×4'),(6,'Yeahhh\n\n(Jimmy ngủ yên)\nNói với anh vì sáo long\n(Thiên Đình)\nNói với anh vì sạo lồng…\n\nThiên Đình :\n\nĐến làm gì để rồi nay em ra đi\nĐến làm gì để lòng anh phải nhớ mông\nVẫn còn đây tiếng nói yêu anh\nVẫn còn đây những phút vui buồn\n\nYeah\n\nCó bao giờ thật lòng yêu anh không em\nCớ sao người vội vàng trao tiếng yêu\nĐể lòng anh mang bao niềm đau\nMãi trách than mình vì để mất em\n\n[hook]\n\nNgười hãy nói với anh vì sao\nta yêu nhau mà không về với nhau\n\nooooh\n(Người hãy)\nNói với anh vì sao thế\nNói với anh vì sao lòng\nsao lòng\n\nĐành lòng cất bước quay mặt đi mãi\nCất bước quay mặt không trở về\n\nyeah\n\nChẳng cho anh biết được một lý do\nVì sao con tim anh nay phải sống trong cô đơn\n\nJimmi NgủYên :\n\nDẹp!!\nDẹp!!\n\nđừng cho anh biết một lý do\nHãy đem cho anh một kí lô....\n\nMực khô!\nEm nghĩ là chi đó?\nEm đừng trông thấy anh đòi mi gió\nĐừng hỏi tên tui\nĐêm nay tui đang cô đơn quá\nhem zui\nDon\'t even wanna xem só em xui\nVì người đó xem tui thua con chó ẻm nuôi\nhong thèm quan tâm thêm đâu\nmệt đầu rồi\nđừng kiếm me\nI đang killin my feelin\nAin\'t not givin no fuck\nAboat bao đêm thâu\nBên nhau dạo đầu\nQuện nhau hết rầu\nTìm đâu cớ trách tình đầu ngây thơ quý giá\nKhó để gìn giữ nó,\nnhững hoài niệm đó giờ nào có đủ\nchu cà mo\nNow you go\n\nĐịa Phủ :\n\nVì sao thế\nĐể anh đợi chờ em lâu qué\nTình đầu chỉ toàn là câu thề\nTrèo cao là té đau\n\nVì sao thế\nAnh mua dề tô bún bò huế\nEm nói em thích ăn bò né\nThế là mất nhao\n\nMichael HưĐốn :\n\nTình đầu chỉ làm mình đau\nDính bầu rồi giờ tính sao\nDù là có đôi khi\ncười mà ướt đôi mi,\nMuốn kí ức trôi đi,\nnhững lần mình quýnh nhau\nnụ hôn đó đã trao ở nơi kín đáo\nlần đầu tiên được ăn cháo lưỡi cùng với tình đầu\ngive me the luv\ntrao anh tình yêu,\ndont just show me your boobs\nnhìn như trái mướp,\ntrả lại anh đi, con tim mà e đã cướp\ncông ty nhà nước nên không thể trốn ra lâu đâu\nanh đi về trước, tại không muốn phải đau đầu,\nchù ca mo\nnow you go\n\nĐịa Phủ :\n\nVì sao thế\nĐể anh đợi chờ em lâu qué\nTình đầu chỉ toàn là câu thề\nTrèo cao là té đau\n\nVì sao thế\nAnh mua dề tô bún bò huế\nEm nói em thích ăn bò né\nThế là mất nhao\n\nThiên Đình :\n\nChỉ còn mỗi riêng em không còn ở nơi đây\nKhông trao anh một câu lúc chia lìa\nPhải chăng trong trái tim của chính em không mang theo lời yêu em đã nói\n\nNgười hãy nói với anh vì sao\nta yêu nhau mà không về với nhau\n\nooooh\n(Người hãy)\nNói với anh vì sao thế\nNói với anh vì sao lòng\nsao lòng\n\nĐành lòng cất bước quay mặt đi mãi\nCất bước quay mặt không trở về\n\nyeah\n\nChẳng cho anh biết được một lý do\nVì sao con tim anh nay phải sống trong cô đơn'),(7,'Bà, ở trên gác xếp ngõ chợ khâm thiên\nBán nước là nghề tay trái còn bán phở là nghề thâm niên\nSáng bà thức dậy, bình minh nó lách vào tường ngõ\nNắng chiếu vào chữ khoan cắt bê tông và số điện thoại người ta cho, xen lẫn với\n\nLíu lo tiếng chim hót, bíp bíp của honda\nXình xịch của tàu sắt và địt mẹ của thợ xây nhà\nLấy xe thống nhất, bà lấy ví thời mà ông còn sống\nNhìn vào bàn thờ mồm lẩm bẩm hôm nay ngày của ông\n\nNên, 20k tiền hoa hồng, 70k 5 quả cam\nThêm 5k tiền lá chanh, con bà mua gà từ sáng\n20k tiền hoa hồng, 70k 5 quả cam\nBà cứ nhẩm đi nhẩm lại suốt từ sáng\n\nMâm cơm 4 người, bà thích thế\nKhói nhang mù cả phòng, bà thích thế\nThằng cháu hiếu động, hết đòi chuyên kênh tivi\nĐến nhảy lên lưng bà, nhưng bà thích thế\n\nKhi mà trời đã tối, nhang thì cũng đã tàn\nYên sau là khay nước, yên trước thuốc lào tiên lãng\nbà thích đi đường Văn Chương đâm ngang sang Tôn Đức Thắng\nđi thẳng rồi vòng lại vì Điện Biên Phủ đường thường vắng\n\nCây cổ thụ và vườn hoa, bà nhớ tên của tất cả\nXưa chai thủy tinh coca, nay chai nhựa ở trên giá\nĐặt gánh nước bà ngồi xuống, yên bình ở trong tim\nTrước mắt bà là Nam, Nam đang tập cắt kéo trên Lê Nin\n\n-----------------------\nÁo đồng phục vứt lên bàn, mồ hôi đầm đìa\nCậu chạy lên tầng thượng, lấy đôi Vanz ra ngắm nghía\nHà Nội đang mùa bão, may mà cậu kịp mang giày phơi khô\nDa giày đen giờ hơi thô, kệ, xỏ tại chỗ\n\nLẻn vào phòng anh trai, lấy gôm, tóc cậu vuốt ngược\nMiệng lí nha lí nhí, học thuộc lời cậu viết trước\nDẫn dắt rồi hỏi han, thỉnh thoảng phải cười cho tự nhiên\nSau khi xong xuôi mới đến tỏ tình trực tiếp\n\n(Nice)\nChuyển cảnh\nTim cậu đang đập thình thịch\nChờ cô bé đầu ngõ cát linh mà cứ như xem phim kịch tính\nTự nhiên bốp một phát vào lưng, giật mình, quay ra\nCô bé cười như thiên thần, mặt cậu giờ nhìn như thây ma\n\nNão cậu đơ, miệng cậu cứng, giọng cậu nghẹn còn mặt thì sưng\nDăm ba mấy dòng học thuộc trong đầu, bây giờ thì có mà dùng\nMà, kể ra cũng kì lạ\nCô bé dỗi vô cớ nhiều hơn bình thường dù cậu không làm gì cả\n\nHọ đi ra vườn hoa, gió nay lộng đường Trần Phú\nCô im lặng, cậu bối rối, làm sao để dẫn câu thần chú\nCái gì đến thì cũng sẽ đến, cậu hít vào, thở ra\nAnh thích em, lời cậu nói tua chậm tất cả\n\nVới tay ra nắm tay cô bé, cô bé rụt tay ra sau\nĐèn đỏ bên đường và mặt hai người trông chả khác gì nhau\nCô bé nhìn sang bụi cây, hồi hộp ở trong tim\nSau bụi cây là Nam, Nam tập cắt kéo trên Lê Nin\n------------------------\nTick tock, tick tock, chỉ còn 5p nữa\nNhét vội vở vào trong cặp, nhét thêm cả hộp sữa\nNhét vội miếng bánh mì vào mồm nó, sắp muộn lớp học thêm\nÔng muốn nó thi đỗ trường chuyên, tối chủ nhật nó vẫn phải đến\n\nVà\nPhóng phóng phóng trên chiếc giấc mơ cũ\nDream của ông ở thời hiện tại, là lương tháng này về đầy đủ\nBên ngoài tiếng còi xe reo, bên trong tiếng bụng nó réo\nBỗng chiếc xe bên trái tạt đầu hai bố con ngã theo\n\nĐường Hoàng Diệu có tí biến\nTuy không có chấn thương, nhưng từ ngữ vẫn thi triển\nLà mẹ họ và cụ họ cộng thêm từ giao phối\nÔng cục súc họ hoảng sợ rút ví trao đổi\n\nDân tình liền chạy ra xem, kéo theo bà bán nước\nCô cậu đang mải nắm tay, quyết chạy ra để xem bằng được\nNhưng tiếng chửi nhau sao át nổi tiếng break beat của Rakim\nNên là Nam, vẫn bận cắt kéo trên Lê Nin'),(8,'Gucci bag, Louis V\nIced out, mà lại còn suy\nBiến số 0 ở nhà băng\nTăng thêm nhiều hơn trong đêm nay\nStay away\nDon\'t kill my vibe\nOh mama, I can not cry\nBạn thân ơi\nNhư bạn đã thấy tôi với bạn đều là dân chơi\nRồi mình lại hí hoáy với nhau biến\nCăn phòng này trở thành phòng xông hơi\nRồi lại chạy cong đuôi\nLàm mọi việc xong xuôi\nThật lòng luôn tôi mong kiếp sau vẫn là anh em\nVà luôn luôn có những người anh em mà chỉ cần nhắc đến tên thôi đã\nđủ cho mình tinh thần để biến bài\nThi hôm nay thành 1 cái liveshow rồi\nEy we got 16 typh\nWe are northside soldiers baby\nBước lên show\nAnh em anh đi đông như quân Nguyên\nBurn the stage\nXong anh em chơi banh như dân chuyên\nNorthside boys\nBọn anh đến đây để get the bag\nGame so to\nBọn anh làm sập cả internet\nYeah honey\nThích quần áo đẹp bọn anh có Monkee\nBọn anh leo lên top 1 ga chọi\nNhư là bắn Gunny\nNói câu này thật chắc ăn khi\nTình anh em khong bị cắt phăng đi\nMấy người ghen ghét\nWatch our mouth\nOoh, ooh\nTắt văn đi\nBọn họ xếp thành hàng cho bọn anh đi lên\nVà sẽ còn xa tít tìn tịt\nCho đến khi bọn anh ghi tên\nThích lên cả sóng truyền hình\nĐóng tune như T-pain\nMỗi tối thứ 7 là biến show rap việt thành cái minigame\nBọn anh lướt trong city\nKiếm tiền tươi như G. T. A\nMic là cồn và họng là lửa\nXin giới thiệu MCK\nTuần thủ luật nên không nhập kho\nKiếm về cho anh em thật no\nFame thật to\nQuen Tlinh\nEm Thành Draw\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it raw\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it trappin\'\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it raw\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it trappin\'\nVà phải nhớ 1 câu là\nVợ anh quá chất\nBiến anh thành bá nhất\nCờ đến tay là phất\nIt\'s lit\nNgựa non, háu đá\nĐẹp trai, láu cá\nTrút vào mic khi cáu quá\nKhông bao giờ được mất chất trên bàn tiệc\nViệc cần làm bây giờ là làm việc\nCũng anh em đi lên thì càng tuyệt\nNhạc của bọn anh toàn là hàng tuyển\nCông việc cứ càng ngày càng uyên\nHiphop không phải để làm kiếng\nĐể làm những thứ bọn anh thích\nTiền về cứ phải gọi là hàng quyển\nNhớ gọi anh trước vì anh không biết số em\nEm là vệ tinh còn anh là hố đen\nAnh cạo trọc chứ không phải cắt moi\nAnh là bad boy chứ không phải ahihi boy\nAnh xin số để em còn chốt đơn\nKhông tìm thấy người con trai nào tốt hơn\nAnh là lửa nên em muốn đốt rơm\n0326 anh có vợ rồi\nRa đường anh là cá mập\nỞ nhà anh là cá con\nChúng nó bảo anh sợ vợ\nAnh bảo chúng nó quá non\nNhà nào mà chả có mái\nKhông phải sợ đấy là tôn trọng\nKhông nói to hạ cái tone giọng\nĐơn giản bởi vì\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it raw\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it trappin\'\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it raw\nVà phải nhớ 1 câu là\nGiàu vì bạn sang vì vợ\nVà cả squad, không phải sợ\nKeep it real keep it trappin\''),(9,'AK49 vers:\n\nAnh không muốn mối tình của mình như một làn mây\nChắc chắn sẽ rất đẹp nhưng không thể chạm vào lòng bàn tay\nKhi thời gian đang dạo bước để cho thành phố kia trôi êm\nAnh chỉ muốn mình là tia nắng để có thể hôn lên môi em\nGửi tặng em vùng trời nắng anh càng với thì lại càng xa\nMây kéo đến bên anh bầu bạn nắng đã rời thành phố 1000 hoa\nCảnh vật bỗng dưng thay đổi gió thổi bay bầu trời trong xanh\nVà mỗi khi mây đen kéo tới mới thấy tia nắng thật là mong manh\nCơn mưa rơi đã bắt đầu rồi cớ sao nắng là vội vâng lời\nAnh chạy nhanh rời khỏi thành phố nắng đã trốn ở chân trời\nGửi nụ hôn ở trên bờ môi hãy cho anh một lần đắm say\nVì anh đã chờ hai năm tuổi trẻ chỉ để được đổi một lần nắm tay\n\nHÀ QUỐC HOÀNG vers\n\nHello my weather treasure\nThức giấc mỗi sáng đều do em đánh thức\nThere you are pleasure xuyên ô cửa sổ gửi nắng lên cổ làm anh thổn thức\nHiếm khi để ý lúc em đến lâu nay như thế nào\nDù phone anh luôn nhắc kỹ mỗi sáng rằng em nay gây ra mưa rào\nAnh không tin thông tin về em họ thường nói, họ thường nói\nTrái với họ nói bởi do là em sáng nắng chiều mưa luôn thay đổi\nEm là nắng vội nay nơi cuối đồi\nEm là gió lay cây cuốn mây trôi\nEm đi vắng cỏ cây không đâm chồi, tưng đôi bồi hồi mong chờ ôi thôi\nBut bae đôi khi đừng giận, đừng trút thêm hận tới nơi khác\nNhững gì đã qua và sai anh tin rồi mai sẽ thấy khác\nXin mưa về nhanh tới nơi hạn, đưa nắng về nơi đang giá băng\nKhông khí xung quanh mãi trong xanh quanh Sài Gòn này, mãi một màu xanh\n\nTLINH vers\nTrời xanh trên cao, ngàn hoa lá lấp lánh nắng\nAnh đã đợi 2 năm tuổi trẻ để đổi 1 lần nắm tay\nTrời xanh trên cao, ngàn hoa lá lấp lánh nắng\nVì anh đã đợi 2 năm tuổi trẻ để đổi 1 lần nắm tay\n\nXuống phố hôm nay anh ăn mặc phong phanh\nVì nụ cười nàng tỏa nắng đủ để sưởi ấm tăng nhiệt trong anh\nNàng cười rạng rỡ\nNàng thơ\nNgàn hoa đang nở\nNằm mơ về nàng\n1 vòng Hồ Tây là đủ để say nàng ngây ngất\nLúc nàng gay gắt rồi quay ngoắt chill nhẹ nhàng mỗi khi có 1 bóng mây khuất\nNàng sẽ xấu tính mỗi khi anh ms xâm trổ\nNàng thường đẹp quá anh phải đeo kính râm\nKhiến anh phải chảy mồ hôi quanh cổ\nAnh vẫn iu nàng vì biết nàng có cái tính hâm\nBất chợt nàng âm thầm quay đi mặt dỗi xám xịt\nNàng đổ 1 tràng những giọt ướt át anh ko thể đối kháng kịp\nƠ hay đang vui mà nhỉ\nNàng muốn đi chơi mà nhỉ\nKo có áo mưa nên đành thôi lại phải về nhà nghỉ\nVì nàng là cô gái thích giấu mình sau làn mây mong manh\nVì nàng là nắng mưa khó đoán khiến anh phải tăng ga không phanh\nVì nàng là kín cổng cao tường vs nét iu kiều đỏng đảnh\nNhưng anh vẫn iu vì nàng là lí do tại sao anh chẳng thể xa khỏi Hà Nội này baby'),(10,'Đã có lúc ấm áp đôi tay\nCùng nhau nhìn lên trời cao\nĐến phút cuối em bước ra đi\nLàm sao để giữ được em\nTìm hoài hình bóng lúc ấy\nTìm hoài cảm giác bối rối\nLòng này anh đã cố nói đừng đi\nBuổi chiều hôm ấy khuất lối\nChìm vào bóng tối nhức nhói\nLệ nhòe hoen mắt chẳng thể ngừng rơi\nỞ nơi đó em có vui không\nNgười bên em có giống anh không\nHọ có biết những lúc em đau\nCần chia sớt với những u sầu\nVề bên anh gió lộng đồi hoang\nỞ bên anh yên giấc mơ màng\nNgồi đây nghe tiếng lòng thở than\nChờ mong ai hơi ấm nhẹ nhàng\nDù rằng một giây nữa thôi\nGhì chặt bờ môi xiết ôm\nĐừng vội vàng quên\nRời xa anh mãi\nXin đừng đi anh cần em nhớ em\nLá vàng rơi xuân hạ tới\nĐông và thu nhớ em\nAnh có thể vẽ em thật kiêu sa\nNét ngọc ngà trên áo còn thêu hoa\nPhút chạnh lòng anh cứ tưởng là khi xa\nSẽ không buồn\nVới những thứ mình đi qua\nEm ơi thanh xuân này ngắn ngủi\nĐôi giấy nhỏ làm sao viết thành văn\nTơ vò còn vương lại khe núi\nÔm cả bầu trời niên thiếu\nCó đành chăng\nEm biết không\nMùa xuân chẳng trọn vẹn\nTim lạc đường khi ta chẳng thấy nhau\nNhìn trăng kia vàng\nCòn treo trước đầu ngỏ\nGiờ em đi rồi mùa hạ hôm ấy đâu\nAnh chẳng ước mình như là cánh chim\nBay giữa muôn trùng đất mẹ này bao la\nAnh muốn được nghe giọng em nói\nMuốn thấy em cười bình yên\nChẳng sao cả nghe anh\nVề bên anh nhé em\nCầm tay anh nhé em\nCùng bên nhau và sưởi ấm\nĐêm đông buốt giá\nLòng anh thương nhớ em\nChìm vào trong giấc mơ\nĐể con tim một lần nữa kêu tên\nVì đôi lúc anh thấy em\nGiận anh quá nên thôi\nHình bóng ấy có thể phai nhòa\nNhưng chẳng xa xôi\nCành phượng vĩ kia đã đâm chồi\nThay lá đơm bông\nThì thôi nhé\nEm cứ ở lại giây phút ta mong\nĐưa đôi tay nhìn lên trời\nHương thơm kia tựa mây ngàn\nAnh muốn ôm bờ vai này\nSao chẳng thấy\nChợt bồi hồi vì lòng chưa quên\nĐoạn đường buồn vội vàng không tên\nEm ơi\nTiếc nuối ấy cứ thế\nVẫn mãi khắc sâu trên hàng mi\nVà rồi nhận ra yêu thương bên nhau\nDần vỡ nát\nGiọt lệ anh đã cố giấu\nBước tiếp để nhìn em bước đi\nNơi đó anh nhớ em nhiều\nVề bên anh gió lộng đồi hoang\nỞ bên anh yên giấc mơ màng\nNgồi đây nghe tiếng lòng thở than\nChờ mong ai hơi ấm nhẹ nhàng');
/*!40000 ALTER TABLE `lyrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlistid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `playlistname` varchar(255) DEFAULT NULL,
  `playlistimage` text DEFAULT NULL,
  PRIMARY KEY (`playlistid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Nhạc Provjp','https://i2.wp.com/lucloi.vn/wp-content/uploads/2020/01/71374138_2456823731309460_5344949859134734336_n.jpg');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_song`
--

DROP TABLE IF EXISTS `playlist_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist_song` (
  `playlistid` int(10) unsigned DEFAULT NULL,
  `songid` int(10) unsigned DEFAULT NULL,
  KEY `playlistid` (`playlistid`),
  KEY `songid` (`songid`),
  CONSTRAINT `playlist_song_ibfk_1` FOREIGN KEY (`playlistid`) REFERENCES `playlist` (`playlistid`),
  CONSTRAINT `playlist_song_ibfk_2` FOREIGN KEY (`songid`) REFERENCES `song` (`songid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_song`
--

LOCK TABLES `playlist_song` WRITE;
/*!40000 ALTER TABLE `playlist_song` DISABLE KEYS */;
INSERT INTO `playlist_song` VALUES (1,1),(1,2),(1,4),(1,5),(1,6),(1,7),(1,10);
/*!40000 ALTER TABLE `playlist_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `songid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `songname` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `artist1id` int(10) unsigned NOT NULL,
  `artist2id` int(10) unsigned DEFAULT NULL,
  `artist3id` int(10) unsigned DEFAULT NULL,
  `artist4id` int(10) unsigned DEFAULT NULL,
  `artist5id` int(10) unsigned DEFAULT NULL,
  `imagelink` text DEFAULT 'images/duc.jpg',
  `genre` varchar(20) DEFAULT NULL,
  `publishday` datetime DEFAULT NULL,
  `viewcount` int(11) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `Quality` varchar(30) DEFAULT NULL,
  `modifydate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`songid`),
  KEY `artist1id` (`artist1id`),
  KEY `artist2id` (`artist2id`),
  KEY `artist3id` (`artist3id`),
  KEY `artist4id` (`artist4id`),
  KEY `artist5id` (`artist5id`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`artist1id`) REFERENCES `artist` (`artistid`),
  CONSTRAINT `song_ibfk_2` FOREIGN KEY (`artist2id`) REFERENCES `artist` (`artistid`),
  CONSTRAINT `song_ibfk_3` FOREIGN KEY (`artist3id`) REFERENCES `artist` (`artistid`),
  CONSTRAINT `song_ibfk_4` FOREIGN KEY (`artist4id`) REFERENCES `artist` (`artistid`),
  CONSTRAINT `song_ibfk_5` FOREIGN KEY (`artist5id`) REFERENCES `artist` (`artistid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Qua Khung Cửa Sổ','https://tainhac123.com/listen/qua-khung-cua-so-chillies.fenjPwf2Iku4.html',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/131/130653.jpg','Indie','2020-11-11 00:00:00',7901653,'Trần Duy Khang','2020-04-11 00:00:00','320kbps','2021-05-21'),(2,'BigCityBoi','https://aredir.nixcdn.com/NhacCuaTui1000/Bigcityboi-BinzTouliver-6323177.mp3?st=dErrmVyKRKsA7piq1DV5xw&e=1621348330',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/124/123404.jpg','Rap','2020-07-05 00:00:00',77874914,'Binz','2020-04-11 00:00:00','320kbps','2021-05-21'),(3,'On The Ground','https://tainhacmienphi.biz/get/song/api/263006',3,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/138/137042.jpg','K-Pop','2021-03-12 00:00:00',140536458,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(4,'CHÚNG TA CỦA HIỆN TẠI','https://leecoffee.net/wp-content/uploads/2021/01/Chung-Ta-Cua-Hien-Tai-Son-Tung-M-TP.mp3',4,NULL,NULL,NULL,NULL,'data:image/jpeg;base64,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','Ballad','2020-12-20 00:00:00',72314407,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(5,'Ganh Tị','https://tainhacmienphi.biz/get/song/api/256718',5,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/137/136129.jpg','Rap','2021-02-12 00:00:00',4316695,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(6,'Vì Sao Thế? Vì Sạo Lòng','https://tainhacmienphi.biz/get/song/api/247261',6,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/135/134383.jpg','Nhạc Hải Ngoại','2020-09-20 00:00:00',915495,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(7,'Cắt kéo trên Lênin','https://tainhacmienphi.biz/get/song/api/243810',7,NULL,NULL,NULL,NULL,'https://i1.sndcdn.com/artworks-000612558101-zfgw28-t500x500.jpg','Free Style','2019-10-15 00:00:00',3308984,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(8,'Giàu vì bạn, Sang vì vợ','https://tainhacmienphi.biz/get/song/api/213026',8,NULL,NULL,NULL,NULL,'https://i1.sndcdn.com/artworks-ftqQYqhxH9GrLtoI-kLyahw-t500x500.jpg','Rap','2020-10-26 00:00:00',12343850,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(9,'Tình hình thời tiết','https://tainhacmienphi.biz/get/song/api/215175',9,NULL,NULL,NULL,NULL,'https://i.ytimg.com/vi/LYFLUEay_Ys/maxresdefault.jpg','Rap','2020-09-28 00:00:00',6024997,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(10,'Về bên anh','https://tainhacmienphi.biz/get/song/api/215769',10,NULL,NULL,NULL,NULL,'https://i.ytimg.com/vi/fArpx8TRWU8/maxresdefault.jpg','Ballad','2018-10-11 00:00:00',32795602,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(11,'Cứ Chill Thôi','https://tainhacmienphi.biz/get/song/api/162105',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/124/123766.jpg','Indie','2020-07-11 00:00:00',55254748,'Trần Duy Khang','2020-04-21 00:00:00','lossless','2021-05-21'),(12,'Vùng Ký Ức','https://tainhacmienphi.biz/get/song/api/132203',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/119/118048.jpg','Indie','2020-03-27 00:00:00',21273921,'Trần Duy Khang','2020-04-21 00:00:00','128kbps','2021-05-21'),(13,'Những Con Đường Song Song','https://tainhacmienphi.biz/get/song/api/124027',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/artist_avatar/196/732.jpg','Indie','2019-05-22 00:00:00',5955097,'Trần Duy Khang','2020-04-21 00:00:00','320lbps','2021-05-21'),(14,'Đường chân trời','https://tainhacmienphi.biz/get/song/api/213921',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/artist_avatar/196/732.jpg','Indie','2020-01-08 00:00:00',848769,NULL,'2020-04-21 00:00:00','128kbps','2021-05-21'),(15,'Và Thế Là Hết','https://tainhacmienphi.biz/get/song/api/50655',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/137/136460.jpg','Indie','2018-12-24 00:00:00',29765519,'Trần Duy Khang','2020-04-21 00:00:00','128kbps','2021-05-21'),(16,'Giá Như','https://tainhacmienphi.biz/get/song/api/287606',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/134/133111.jpg','Indie','2020-12-24 00:00:00',2499154,'Trần Duy Khang','2020-04-21 00:00:00','128kbps','2021-05-21'),(17,'Who?','https://tainhac123.com/listen/who-chillies.CcTbSbexf4PM.html',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/127/126961.jpg','Indie','2018-10-06 00:00:00',1911273,'Trần Duy Khang','2020-04-21 00:00:00','128kbps','2021-05-21'),(18,'Có Em Đời Bỗng Vui','https://tainhac123.com/listen/co-em-doi-bong-vui-chillies.vQ30gf2xenEZ.html',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/116/115709.jpg','Indie','2020-02-07 00:00:00',1245,'Trần Duy Khang','2020-04-21 00:00:00','300kbps','2021-05-21'),(19,'Mascara','https://tainhac123.com/listen/mascara-chillies.7E9lOSEevfcD.html',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/114/113796.jpg','Indie','2019-12-24 00:00:00',32375987,'Trần Duy Khang','2020-04-21 00:00:00','300kbps','2021-05-21'),(20,'Nếu Ngày Mai Không Đến','https://tainhac123.com/listen/neu-ngay-mai-khong-den-chillies.zg3MbF8SBFci.html',1,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/103/102469.jpg','Indie','2019-03-29 00:00:00',7421353,'Trần Duy Khang','2020-04-21 00:00:00','300kbps','2021-05-21'),(21,'Nguyên Team Đi Vào Hết (#NTDVH)','https://tainhac123.com/listen/nguyen-team-di-vao-het-noodle-remix-binz-ft-triple-d.QPEFBvlFspdj.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/92/91454.jpg','Rap','2018-07-18 00:00:00',18918726,'Binz','2020-04-11 00:00:00','lossless','2021-05-21'),(22,'So Far','https://tainhac123.com/listen/sofar-binz.dOdRJKutva6R.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/91/90706.jpg','Rap','2018-11-01 00:00:00',37742055,'Binz','2020-04-11 00:00:00','128kbps','2021-05-21'),(23,'Cho Mình Em','https://tainhac123.com/listen/cho-minh-em-binz.MKYv77phN7oT.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/artist_avatar/1/624.jpg','Rap','2020-07-12 00:00:00',7375030,'Binz','2020-04-11 00:00:00','128kbps','2021-05-21'),(24,'They Said','https://tainhac123.com/listen/they-said-binz-ft-touliver.LVP0nj3mI7Ry.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/126/125484.jpg','Rap','2017-12-02 00:00:00',54656641,'Binz','2020-04-11 00:00:00','320kbps','2021-05-21'),(25,'So Close','https://tainhac123.com/listen/so-close-binz-ft-phuong-ly.3ZQTDt8gdl4v.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/109/108737.jpg','Rap','2019-08-24 00:00:00',17727092,'Binz','2020-04-11 00:00:00','lossless','2021-05-21'),(26,'Tình Nhân Ơi','https://tainhac123.com/listen/tinh-nhan-oi-superbrothers-ft-orange-ft-binz.2kDqw2cKwBVN.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/101/100636.jpg','Rap','2018-12-23 00:00:00',52699279,'Binz','2020-04-11 00:00:00','500kbps','2021-05-21'),(27,'Sao Cũng Được','https://tainhac123.com/listen/sao-cung-duoc-binz.mak9XhsARrp8.html',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/85/84819.jpg','Rap','2018-03-08 00:00:00',26960395,'Binz','2020-04-11 00:00:00','lossless','2021-05-21'),(28,'BlackJack','https://tainhacmienphi.biz/get/song/api/221162',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/132/131853.jpg','Rap','2020-11-30 00:00:00',28243038,'Binz','2020-04-11 00:00:00','320kbps','2021-05-21'),(29,'Gene','https://tainhacmienphi.biz/get/song/api/62150',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/105/104101.jpg','Rap','2019-05-12 00:00:00',32302979,'Binz','2020-04-11 00:00:00','128kbps','2021-05-21'),(30,'021','https://tainhacmienphi.biz/get/song/api/210380',2,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/129/128502.jpg','Rap','2020-10-04 00:00:00',14753347,'Binz','2020-04-11 00:00:00','lossless','2021-05-21'),(31,'Âm Thầm Bên Em','https://tainhacmienphi.biz/get/song/api/175457',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2015-08-21 00:00:00',107599619,NULL,'2020-04-11 00:00:00','lossless','2021-05-21'),(32,'Không Phải Dạng Vừa Đâu','https://tainhac123.com/listen/khong-phai-dang-vua-dau-son-tung-m-tp.SZtJn3M4xe2O.html',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2015-04-08 00:00:00',99999999,NULL,'2020-04-11 00:00:00','128kbps','2021-05-21'),(33,'Buông Đôi Tay Nhau Ra','https://tainhac123.com/listen/buong-doi-tay-nhau-ra-son-tung-m-tp.mPjFpFGJhzko.html',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86232.jpg','Ballad','2015-12-02 00:00:00',108542803,NULL,'2020-04-11 00:00:00','128kbps','2021-05-21'),(34,'Nơi Này Có Anh','https://tainhacmienphi.biz/get/song/api/171931',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2017-02-14 00:00:00',269595969,NULL,'2020-04-11 00:00:00','128kbps','2021-05-21'),(35,'Chúng Ta Không Thuộc Về Nhau','https://tainhacmienphi.biz/get/song/api/184116',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/62/61107.jpg','Ballad','2016-08-03 00:00:00',184434592,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(36,'Chắc Ai Đó Sẽ Về','https://tainhacmienphi.biz/get/song/api/174324',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2015-01-30 00:00:00',26975281,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(37,'Lạc Trôi','https://tainhac123.com/listen/lac-troi-triple-d-remix-son-tung-m-tp-ft-triple-d.eobkebGyS73o.html',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2017-01-01 00:00:00',237948297,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(38,'Như Ngày Hôm Qua','https://tainhac123.com/listen/nhu-ngay-hom-qua-son-tung-m-tp.xFre2rAcLCTk.html',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/60/59104.jpg','Ballad','2017-04-08 00:00:00',1500000,NULL,'2020-04-11 00:00:00','128kbps','2021-05-21'),(39,'Cơn Mưa Ngang Qua','https://tainhac123.com/listen/con-mua-ngang-qua-son-tung-m-tp.jKtQogltJZ.html',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/artist_avatar/8/7020.jpg','Ballad','2013-10-05 00:00:00',9999999,NULL,'2020-04-11 00:00:00','320kbps','2021-05-21'),(40,'Thái Bình Mồ Hôi Rơi','https://tainhacmienphi.biz/get/song/api/177118',4,NULL,NULL,NULL,NULL,'https://data.chiasenhac.com/data/cover/87/86272.jpg','Ballad','2016-07-25 00:00:00',6200129,NULL,'2020-04-11 00:00:00','128kbps','2021-05-21'),(41,'Thủ đô Cypher','https://tainhac123.com/listen/thu-do-cypher-rpt-mck-ft-orijinn-ft-rzma-ft-low-g.ldrXQWwsrdI9.html',7,NULL,NULL,NULL,NULL,'https://i1.sndcdn.com/artworks-gs3lqkUoLTEzcXAO-RJ9wlw-t500x500.jpg','Rap','2020-07-07 00:00:00',29847829,NULL,'2020-05-16 00:00:00','320kbps','2021-05-21'),(43,'Sài Gòn Đau Lòng Quá','https://tainhac123.com/listen/sai-gon-dau-long-qua-hua-kim-tuyen-ft-hoang-duyen.2hI4xFTa2lxJ.html',16,NULL,NULL,NULL,NULL,'https://avatar-nct.nixcdn.com/song/2021/03/27/d/2/9/1/1616859493571.jpg','Nhạc Trẻ',NULL,NULL,'Hứa Kim Tuyền','2021-05-21 00:00:00','320kbs','2021-05-21'),(44,'Nàng Thơ','https://tainhac123.com/listen/nang-tho-hoang-dung.Kx3Kbih0rS5z.html',17,NULL,NULL,NULL,NULL,'https://avatar-nct.nixcdn.com/song/2020/07/31/c/5/8/9/1596188259603.jpg','Nhạc Trẻ',NULL,NULL,'','2021-05-21 00:00:00','128kbps','2021-05-21'),(45,'Tình Bạn Diệu Ký','https://tainhac123.com/listen/tinh-ban-dieu-ky-amee-ft-ricky-star-ft-lang-ld.SgXWolUyq8Dp.html',19,NULL,NULL,NULL,NULL,'https://avatar-nct.nixcdn.com/song/2021/01/22/9/f/2/1/1611307948608.jpg','Nhạc Trẻ',NULL,NULL,'','2021-05-21 00:00:00','320kbs','2021-05-21'),(46,'Phải Chăng Em Đã Yêu?','https://tainhac123.com/listen/phai-chang-em-da-yeu-juky-san-ft-redt.MRUP1c69kN0R.html',20,NULL,NULL,NULL,NULL,'https://avatar-nct.nixcdn.com/song/2021/02/10/6/5/a/6/1612954164434.jpg','Nhạc Trẻ',NULL,NULL,'','2021-05-21 00:00:00','320kbs','2021-05-21'),(47,'Laylalay','https://tainhac123.com/listen/laylalay-jack.n8VupC0HXKgY.html',10,NULL,NULL,NULL,NULL,'https://avatar-nct.nixcdn.com/song/2021/04/12/2/1/6/a/1618223136958.jpg','Nhạc Trẻ',NULL,NULL,'','2021-05-21 19:50:18','320kbs','2021-05-21');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiktok`
--

DROP TABLE IF EXISTS `tiktok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiktok` (
  `html` longtext DEFAULT NULL,
  `tiktokid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modifydate` date DEFAULT current_timestamp(),
  `adddate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`tiktokid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiktok`
--

LOCK TABLES `tiktok` WRITE;
/*!40000 ALTER TABLE `tiktok` DISABLE KEYS */;
INSERT INTO `tiktok` VALUES ('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@analypalma65/video/6960325707138469126\" data-video-id=\"6960325707138469126\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@analypalma65\" href=\"https://www.tiktok.com/@analypalma65\">@analypalma65</a> <p></p> <a target=\"_blank\" title=\"♬ Oh No - Kreepa\" href=\"https://www.tiktok.com/music/Oh-No-6586947002464996102\">♬ Oh No - Kreepa</a> </section> </blockquote>',1,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@khaby.lame966/video/6962662654250978562\" data-video-id=\"6962662654250978562\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@khaby.lame966\" href=\"https://www.tiktok.com/@khaby.lame966\">@khaby.lame966</a> please read- Finish Him ???<a title=\"foryou\" target=\"_blank\" href=\"https://www.tiktok.com/tag/foryou\">#foryou</a> <a title=\"fpy\" target=\"_blank\" href=\"https://www.tiktok.com/tag/fpy\">#fpy</a> <a title=\"duet\" target=\"_blank\" href=\"https://www.tiktok.com/tag/duet\">#duet</a> <a title=\"for\" target=\"_blank\" href=\"https://www.tiktok.com/tag/for\">#for</a> <a title=\"scary\" target=\"_blank\" href=\"https://www.tiktok.com/tag/scary\">#scary</a> <a title=\"fypシ\" target=\"_blank\" href=\"https://www.tiktok.com/tag/fyp%E3%82%B7\">#fypシ</a> <a target=\"_blank\" title=\"♬ nhạc nền  - Khabyylamee?\" href=\"https://www.tiktok.com/music/nhạc-nền-Khabyylamee?-6962662446263716609\">♬ nhạc nền  - Khabyylamee?</a> </section> </blockquote>',2,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@hat590/video/6963199269138402562\" data-video-id=\"6963199269138402562\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@hat590\" href=\"https://www.tiktok.com/@hat590\">@hat590</a> <a title=\"hat590\" target=\"_blank\" href=\"https://www.tiktok.com/tag/hat590\">#hat590</a> Hên quá mọi người ạ <a title=\"mcv\" target=\"_blank\" href=\"https://www.tiktok.com/tag/mcv\">#mcv</a> <a target=\"_blank\" title=\"♬ Wavin Flag - LÍCIA\" href=\"https://www.tiktok.com/music/Wavin-Flag-6937629591204809474\">♬ Wavin Flag - LÍCIA</a> </section> </blockquote>',3,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@binzofficial/video/6943947817345928449\" data-video-id=\"6943947817345928449\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@binzofficial\" href=\"https://www.tiktok.com/@binzofficial\">@binzofficial</a> <p>Anh chọn đi chọn lại quần áo chỉ là... <a title=\"chominhem\" target=\"_blank\" href=\"https://www.tiktok.com/tag/chominhem\">##chominhem</a></p> <a target=\"_blank\" title=\"♬ Cho Mình Em - Binz, Đen\" href=\"https://www.tiktok.com/music/Cho-Mình-Em-6943947795619465986\">♬ Cho Mình Em - Binz, Đen</a> </section> </blockquote>',4,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@mtp.fan/video/6959540579185331457\" data-video-id=\"6959540579185331457\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@mtp.fan\" href=\"https://www.tiktok.com/@mtp.fan\">@mtp.fan</a> <p>Một phiên bản mớiiiii ... Vui vui hơn tí thì sao nhỉ ...!!!??? #<a title=\"sontungmtp\" target=\"_blank\" href=\"https://www.tiktok.com/tag/sontungmtp\">#sontungmtp </a>#<a title=\"mtptalent\" target=\"_blank\" href=\"https://www.tiktok.com/tag/mtptalent\">#mtptalent </a>#<a title=\"mtpentertainment\" target=\"_blank\" href=\"https://www.tiktok.com/tag/mtpentertainment\">#mtpentertainment </a>#<a title=\"muonroimasaocon\" target=\"_blank\" href=\"https://www.tiktok.com/tag/muonroimasaocon\">#muonroimasaocon</a></p> <a target=\"_blank\" title=\"♬ original sound  - Sơn Tùng M-TP\" href=\"https://www.tiktok.com/music/original-sound-Sơn-Tùng-M-TP-6959540614585256705\">♬ original sound  - Sơn Tùng M-TP</a> </section> </blockquote>',5,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@mixigaming/video/6821095949025283330\" data-video-id=\"6821095949025283330\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@mixigaming\" href=\"https://www.tiktok.com/@mixigaming\">@mixigaming</a> <p></p> <a target=\"_blank\" title=\"♬ nhạc nền  - Độ Phùng\" href=\"https://www.tiktok.com/music/nhạc-nền-Độ-Phùng-6821095993480596225\">♬ nhạc nền  - Độ Phùng</a> </section> </blockquote>',6,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@billieeilish/video/6960131281841655046\" data-video-id=\"6960131281841655046\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@billieeilish\" href=\"https://www.tiktok.com/@billieeilish\">@billieeilish</a> <p><a title=\"stitch\" target=\"_blank\" href=\"https://www.tiktok.com/tag/stitch\">##stitch</a> with @gabrieeelala</p> <a target=\"_blank\" title=\"♬ original sound - BILLIE EILISH\" href=\"https://www.tiktok.com/music/original-sound-6960131065272912645\">♬ original sound - BILLIE EILISH</a> </section> </blockquote>',7,'2021-05-21','2021-05-21'),('    <blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@justinbieber/video/6945132572645068037\" data-video-id=\"6945132572645068037\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@justinbieber\" href=\"https://www.tiktok.com/@justinbieber\">@justinbieber</a> <p><a title=\"asiam\" target=\"_blank\" href=\"https://www.tiktok.com/tag/asiam\">##AsIAm</a> @thegr8khalid </p> <a target=\"_blank\" title=\"♬ As I Am - Justin Bieber\" href=\"https://www.tiktok.com/music/As-I-Am-6941206316719278081\">♬ As I Am - Justin Bieber</a> </section> </blockquote>',8,'2021-05-21','2021-05-21'),('<blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@onthemic.acvmusic/video/6917173003348446465\" data-video-id=\"6917173003348446465\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@onthemic.acvmusic\" href=\"https://www.tiktok.com/@onthemic.acvmusic\">@onthemic.acvmusic</a> <p>\"Và có lẽ được sinh ra, cái đó mới chính là phần quà\". Cùng hướng đến tương lai đầy tích cực nhé ae ? <a title=\"mck\" target=\"_blank\" href=\"https://www.tiktok.com/tag/mck\">#mck</a> <a title=\"wean\" target=\"_blank\" href=\"https://www.tiktok.com/tag/wean\">#wean</a> <a title=\"tenkitsune\" target=\"_blank\" href=\"https://www.tiktok.com/tag/tenkitsune\">#tenkitsune</a> <a title=\"rap\" target=\"_blank\" href=\"https://www.tiktok.com/tag/rap\">#rap</a> <a title=\"chuong2cuatuonglai\" target=\"_blank\" href=\"https://www.tiktok.com/tag/chuong2cuatuonglai\">#chuong2cuatuonglai</a></p> <a target=\"_blank\" title=\"♬ original sound  - On The Mic\" href=\"https://www.tiktok.com/music/original-sound-On-The-Mic-6917173010449386241\">♬ original sound  - On The Mic</a> </section> </blockquote>',9,'2021-05-21','2021-05-21'),('<blockquote class=\"tiktok-embed\" cite=\"https://www.tiktok.com/@emyeujiyeonnhieulammm/video/6921160491783949569\" data-video-id=\"6921160491783949569\" style=\"max-width: 605px;min-width: 325px;\" > <section> <a target=\"_blank\" title=\"@emyeujiyeonnhieulammm\" href=\"https://www.tiktok.com/@emyeujiyeonnhieulammm\">@emyeujiyeonnhieulammm</a> <p>\"????? ?? ??? ???? ???, ????? ?? ????... \" <a title=\"xuhuong\" target=\"_blank\" href=\"https://www.tiktok.com/tag/xuhuong\">#xuhuong</a> <a title=\"edit\" target=\"_blank\" href=\"https://www.tiktok.com/tag/edit\">#edit</a> <a title=\"sad\" target=\"_blank\" href=\"https://www.tiktok.com/tag/sad\">#sad</a> <a title=\"chungtacuahientai\" target=\"_blank\" href=\"https://www.tiktok.com/tag/chungtacuahientai\">#chungtacuahientai</a> <a title=\"music\" target=\"_blank\" href=\"https://www.tiktok.com/tag/music\">#music</a> <a title=\"sontungmtp\" target=\"_blank\" href=\"https://www.tiktok.com/tag/sontungmtp\">#sontungmtp</a> <a title=\"ngan1908\" target=\"_blank\" href=\"https://www.tiktok.com/tag/ngan1908\">#ngan1908</a></p> <a target=\"_blank\" title=\"♬ nhạc nền  - TranThanhDat\" href=\"https://www.tiktok.com/music/nhạc-nền-TranThanhDat-6917185368743889666\">♬ nhạc nền  - TranThanhDat</a> </section> </blockquote>',10,'2021-05-21','2021-05-21');
/*!40000 ALTER TABLE `tiktok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_playlist`
--

DROP TABLE IF EXISTS `user_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_playlist` (
  `playlistid` int(10) unsigned DEFAULT NULL,
  `userid` int(6) unsigned DEFAULT NULL,
  KEY `playlistid` (`playlistid`),
  KEY `userid` (`userid`),
  CONSTRAINT `user_playlist_ibfk_1` FOREIGN KEY (`playlistid`) REFERENCES `playlist` (`playlistid`),
  CONSTRAINT `user_playlist_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_playlist`
--

LOCK TABLES `user_playlist` WRITE;
/*!40000 ALTER TABLE `user_playlist` DISABLE KEYS */;
INSERT INTO `user_playlist` VALUES (1,1),(1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `user_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(6) unsigned NOT NULL,
  `role_id` int(6) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2),(2,2),(3,2),(4,1),(5,1),(10,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL DEFAULT 'provjp',
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `avatarlink` text DEFAULT 'images/duc.jpg',
  `userstatus` int(11) DEFAULT 1,
  `auth` varchar(10) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'Nguyễn Bá','Đức','duc.nb183499@sis.hust.edu.vn','https://scontent.fpnh22-2.fna.fbcdn.net/v/t1.6435-9/153066640_1617646431756951_6360193703390450711_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=174925&_nc_ohc=gcClDkafseEAX974XeM&_nc_ht=scontent.fpnh22-2.fna&oh=07f38ff03d602845a14f124fd88ea7fc&oe=60CBC60E',1,'ADMIN'),(2,'Lại Ngọc Thăng','Long','long.lnt183581@sis.hust.edu.vn','https://scontent.fhan2-3.fna.fbcdn.net/v/t1.6435-9/47175027_2180863262153020_7932673693698752512_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=ltDc7cEEBPYAX_SMXWx&_nc_ht=scontent.fhan2-3.fna&oh=009ecdad82ecc838a475206034d4e67b&oe=6095AEAF',1,'ADMIN'),(3,'Nguyễn Khương','Duy','duy.nk183513@sis.hust.edu.vn','https://i.pinimg.com/originals/89/59/2b/89592b3392fee110134235e95d80dbf7.jpg',1,'ADMIN'),(4,'Nguyễn Văn','A','abcxyz@sis.hust.edu.vn','https://zmp3-photo-fbcrawler.zadn.vn/avatars/8/e/3/a/8e3a8a9490794d57c604275b7edfd981.jpg',1,'USER'),(5,'Nguyễn Văn','B','abcxyzt@sis.hust.edu.vn','https://media-cdn.laodong.vn/Storage/NewsPortal/2020/12/3/859292/Tlinh-01.jpg?w=720&crop=auto&scale=both',0,'USER'),(10,'provjp','ducki','nguyenbaduc0205@gmail.com',NULL,1,'USER'),(15,'provjp','ducki','ducnb@gmail.com',NULL,1,'USER'),(16,'provjp','duc','duc@gmail.com',NULL,1,'USER');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `userpassword` varchar(15) NOT NULL,
  `userid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `adddate` date DEFAULT current_timestamp(),
  `modifydate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`userid`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ducnb','02052000',1,'2021-05-21','2021-05-21'),('longlnt','123',2,'2021-05-21','2021-05-21'),('boyvjpparkjang','hihi',3,'2021-05-21','2021-05-21'),('anv','test',4,'2021-05-21','2021-05-21'),('bbb','mvb',5,'2021-05-21','2021-05-21'),('ducnb1','020520',10,'2021-05-21','2021-05-21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `videoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `videoname` text DEFAULT NULL,
  `videolink` text DEFAULT NULL,
  `thumbnaillink` text DEFAULT 'images/duc.jpg',
  `artistid` int(10) unsigned DEFAULT NULL,
  `viewcount` int(11) DEFAULT NULL,
  `adddate` date DEFAULT NULL,
  `modifydate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`videoid`),
  KEY `artistid` (`artistid`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'IMPHÊTAMIN - jimmi ngủyên','https://www.youtube.com/embed/mbWJidTlYZE','https://i.ytimg.com/vi/mbWJidTlYZE/maxresdefault.jpg',6,598806,NULL,'2021-05-21'),(2,'Vì Sao Thế? Vì Sạo Lòng - Thiên Đình x Địa Phủ x Michael Hư Đốn x Jimmi NgủYên','https://www.youtube.com/embed/O2_OT8DVpbA','https://i.ytimg.com/vi/O2_OT8DVpbA/sddefault.jpg',6,1034150,NULL,'2021-05-21'),(3,'Jack | LAYLALAY','https://www.youtube.com/embed/bTFoZBIIu4E','https://i.ytimg.com/vi/bTFoZBIIu4E/maxresdefault.jpg',10,33375259,NULL,'2021-05-21'),(4,'XTC(Xích Thêm Chút) Remix - RPT Groovie ft TLinh x RPT MCK (Prod. by fat_benn & RPT LT)','https://www.youtube.com/embed/PNhYz6RmIr4','https://i.ytimg.com/vi/PNhYz6RmIr4/maxresdefault.jpg',8,12409053,NULL,'2021-05-21'),(5,'Sol7 ft. MCK - iceMan (Prod. Yung Lando, Yung Tago)','https://www.youtube.com/embed/ORQB3w-hWRo','https://i.ytimg.com/vi/ORQB3w-hWRo/maxresdefault.jpg',8,4227244,NULL,'2021-05-21'),(6,'Yêu Thầm | Hoàng Yến Chibi x Tlinh x TDK x Lyly','https://www.youtube.com/embed/8sJl66EANuE','https://i.ytimg.com/vi/8sJl66EANuE/maxresdefault.jpg',9,4366924,NULL,'2021-05-21'),(7,'BINZ x ĐEN - CHO MÌNH EM (Studio Session)','https://www.youtube.com/embed/2OKYsYErfFo','https://i.ytimg.com/vi/2OKYsYErfFo/maxresdefault.jpg',2,27263165,NULL,'2021-05-21'),(8,'SƠN TÙNG M-TP | CHÚNG TA CỦA HIỆN TẠI','https://www.youtube.com/embed/psZ1g9fMfeo','https://i.ytimg.com/vi/psZ1g9fMfeo/maxresdefault.jpg',4,75223235,NULL,'2021-05-21'),(9,'ROSÉ - \'Gone\' M/V','https://www.youtube.com/embed/K9_VFxzCuQ0','https://i.ytimg.com/vi/K9_VFxzCuQ0/maxresdefault.jpg',3,66250417,NULL,'2021-05-21'),(10,'ROSÉ - \'On The Ground\' M/V','https://www.youtube.com/embed/CKZvWhCqx1s','https://i.ytimg.com/vi/CKZvWhCqx1s/maxresdefault.jpg',3,162897310,NULL,'2021-05-21'),(11,'mai - jimmi ngủyên x michael hư đốn','https://www.youtube.com/embed/ly1hE-UYOkM','https://i.ytimg.com/vi/ly1hE-UYOkM/maxresdefault.jpg',6,981546,NULL,'2021-05-21'),(12,'giờ đâu còn tâm trí follow amee - jimmi ngủyên x nico lai','https://www.youtube.com/embed/MgcelwhNegU','https://i.ytimg.com/vi/MgcelwhNegU/maxresdefault.jpg',6,658657,NULL,'2021-05-21'),(13,'SÓNG GIÓ | K-ICM x JACK','https://www.youtube.com/embed/j8U06veqxdU','https://i.ytimg.com/vi/OZCb9FeyQ2Y/maxresdefault.jpg',10,375690996,NULL,'2021-05-21'),(14,'Jack | Đom Đóm','https://www.youtube.com/embed/4CCGI83vOVo','https://i.ytimg.com/vi/4CCGI83vOVo/maxresdefault.jpg',10,103699535,NULL,'2021-05-21'),(15,'Jack | Hoa Hải Đường','https://www.youtube.com/embed/Bhg-Gw953b0','https://i.ytimg.com/vi/Bhg-Gw953b0/maxresdefault.jpg',10,169421514,NULL,'2021-05-21'),(16,'SƠN TÙNG M-TP | MUỘN RỒI MÀ SAO CÒN','https://www.youtube.com/embed/xypzmu5mMPY','https://i.ytimg.com/vi/xypzmu5mMPY/maxresdefault.jpg',4,47258225,NULL,'2021-05-21'),(17,'RPT Orijinn - Ối giời ơi','https://www.youtube.com/embed/Us6jj6vX3Fg','https://i.ytimg.com/vi/Us6jj6vX3Fg/maxresdefault.jpg',11,333716,NULL,'2021-05-21'),(18,'16 Typh x 16 BrT - WALK ON DA STREET','https://www.youtube.com/embed/pLYJNKD7M-Y','https://i.ytimg.com/vi/pLYJNKD7M-Y/maxresdefault.jpg',12,4299078,NULL,'2021-05-21'),(19,'Cypher Nhà Làm | Low G, Teddie J, Chí, ResQ | Rap Nhà Làm X ClownZ','https://www.youtube.com/embed/1DDt4xwC56U','https://i.ytimg.com/vi/1DDt4xwC56U/maxresdefault.jpg',7,1194430,NULL,'2021-05-21'),(20,'[Lyric] Alaba Trap - Tommy Tèo x MCK','https://www.youtube.com/embed/0lG5Y6cGcBc','https://i.ytimg.com/vi/0lG5Y6cGcBc/maxresdefault.jpg',8,3780872,NULL,'2021-05-21'),(21,'THÍCH THÌ ĐẾN | LÊ BẢO BÌNH','https://www.youtube.com/embed/j4Jj29mUYS8','https://i.ytimg.com/vi/j4Jj29mUYS8/maxresdefault.jpg',13,121592975,NULL,'2021-05-21'),(24,'The Chainsmokers & Coldplay - Something Just Like This (Extended Radio Edit)','https://www.youtube.com/embed/_tNU6dpjIyM','https://i.ytimg.com/vi/_tNU6dpjIyM/maxresdefault.jpg',15,NULL,NULL,'2021-05-21'),(25,'ZAYN - Dusk Till Dawn (Official Video) ft. Sia','https://www.youtube.com/embed/tt2k8PGm-TI','https://i.ytimg.com/vi/tt2k8PGm-TI/maxresdefault.jpg',18,NULL,NULL,'2021-05-21');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 20:14:47
