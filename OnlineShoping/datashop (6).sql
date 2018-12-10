-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 04:14 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `activates`
--

CREATE TABLE `activates` (
  `Id` int(10) UNSIGNED NOT NULL,
  `UserId` int(10) UNSIGNED DEFAULT NULL,
  `Code` varchar(6) DEFAULT NULL,
  `Expried` datetime DEFAULT NULL,
  `Count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activates`
--

INSERT INTO `activates` (`Id`, `UserId`, `Code`, `Expried`, `Count`) VALUES
(1, 2, '435549', '2018-11-20 13:59:14', 0),
(2, 3, '489849', '2018-11-20 14:41:16', 0),
(3, 4, '380810', '2018-11-21 08:34:16', 0),
(4, 5, '718255', '2018-11-21 08:36:19', 0),
(5, 6, '943420', '2018-11-23 02:38:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Id` int(10) UNSIGNED NOT NULL,
  `UserId` int(10) UNSIGNED DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `ParentId`, `Name`) VALUES
(1, 0, 'Phone'),
(2, 1, 'Apple'),
(23, 1, 'oppo'),
(6, 0, 'Laptop'),
(7, 6, 'HP'),
(8, 6, 'Asus'),
(9, 6, 'Dell'),
(10, 6, 'Lenovo'),
(11, 1, 'Vivo'),
(12, 1, 'SamSung'),
(20, 0, 'Phụ Kiện'),
(21, 20, 'Điện Thoại'),
(22, 20, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `kinds`
--

CREATE TABLE `kinds` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kinds`
--

INSERT INTO `kinds` (`Id`, `Name`) VALUES
(1, 'Phone'),
(2, 'Laptop'),
(3, 'PhuKien');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text,
  `Specification` text,
  `Price` int(11) DEFAULT NULL,
  `KindId` int(11) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `CategoryId`, `Name`, `Description`, `Specification`, `Price`, `KindId`, `Image`) VALUES
(1, 12, 'Điện thoại Samsung Galaxy A7 (2018) 128GB', 'Đặc điểm nổi bật của Samsung Galaxy A7 (2018) 128GB\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Cáp, Cây lấy sim, Ốp lưng\r\n\r\nĐược nâng cấp cả RAM và bộ nhớ trong, Samsung Galaxy A7 (2018) 128GB đem lại khả năng đa nhiệm, lưu trữ tốt hơn. Đồng thời đây cũng là chiếc smartphone đầu tiên của Samsung được trang bị tới 3 camera ở mặt sau và cảm biến vân tay cạnh bên.\r\nMượt mà hơn với nâng cấp RAM 6 GB và chip Exynos 7885\r\nSức mạnh cung cấp cho Galaxy A7 (2018) 128 GB chính là con chip Exynos 7885, đáp ứng mượt mà cho các nhu cầu giải trí hằng ngày của bạn.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.0", Full HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	24 MP, 8 MP và 5 MP (3 camera)\r\nCamera trước:	24 MP\r\nCPU:	Exynos 7885 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ', 8900000, 1, 'images/products/c18b28f8c77d58eadbcc75ac44f965b6.png'),
(58, 12, 'Điện thoại Samsung Galaxy S9+ 64GB', 'Đặc điểm nổi bật của Samsung Galaxy S9+ 64GB\r\n\r\nXứng đáng là một trong những smartphone siêu phẩm trên thế giới, Samsung Galaxy S9 Plus bản 64 GB sở hữu nhiều tính năng vượt trội mà khó có chiếc điện thoại nào sánh bằng.\r\nThiết kế sang trọng và tinh tế\r\nNhờ thiết kế tràn viền, tổng thể S9 Plus vẫn đem lại cảm giác nhỏ gọn, chắc chắn trong lòng bàn tay nhưng màn hình vẫn rộng rãi để thoải mái trải nghiệm.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe', 23490000, 1, 'images/products/7bc600eb6fda53fc0b7039f0392ab506.png'),
(2, 12, 'Điện thoại Samsung Galaxy Note 9 512GB', 'Sau thành công vang dội của Galaxy Note 8 thì Samsung chính thức giới thiệu phiên bản tiếp theo tới người dùng cái tên Samsung Galaxy Note 9 mang trong mình hàng hoạt các thay đổi đột phá với điểm nhấn đặc biệt đến từ chiếc bút S-Pen thần thánh cùng một viên pin dung lượng khổng lồ tới 4.000 mAh.\r\nBút S-Pen cải tiến đến vi diệu\r\nMột sự thay đổi khiến bạn phải thích thú có lẽ là chiếc bút S-Pen đi kèm theo điện thoại với nhiều màu sắc nổi bật.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.4", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 28490000, 1, 'images/products/83d19222c98a92c75bd08dd2002bad2a.png'),
(59, 12, 'Điện thoại Samsung Galaxy J8', 'Sau nhiều thông tin rò rỉ thì Samsung Galaxy J8 đã chính thức được ra mắt với nhiều trang bị cao cấp với màn hình tràn viền, camera kép xóa phông cùng một hiệu năng ổn định.\r\nCamera kép xóa phông nổi bật vật thể', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.0", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 6290000, 1, 'images/products/944a3c2fb280226f235be430cff5e830.png'),
(54, 23, 'Điện thoại OPPO F9', 'Đặc điểm nổi bật của OPPO F9\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Cáp, Cây lấy sim, Ốp lưng\r\n\r\nLà chiếc điện thoại OPPO mới nhất sở hữu công nghệ sạc VOOC đột phá, OPPO F9 còn được ưu ái nhiều tính năng nổi trội như thiết kế mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.\r\nSạc VOOC nhanh đột phá\r\nTrong những giây phút gay cấn như chơi game điện thoại báo hết pin hay sáng dậy đi làm nhưng phát hiện quên sạc pin thì bộ sạc của OPPO F9 sẽ đem lại sự cứu trợ ngay lập tức.\r\n\r\nVới sạc VOOC 5V/AA, tốc độ sạc trở nên nhanh chóng so với các bộ sạc thông thường.', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 6.3", Full HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 7790000, 1, 'images/products/c65ccbcb1034c0274187ab8e6eb510a3.png'),
(5, 12, 'Điện thoại Samsung Galaxy Note 8', 'Đặc điểm nổi bật của Samsung Galaxy Note 8\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Bút cảm ứng (+Ngòi bút), Cáp, Cây lấy sim, Ốp lưng, Adapter chuyển USB (Type C), Adapter chuyển Micro USB (USB OTG)\r\n\r\nGalaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của điện thoại Samsung với diện mạo nam tính, sang trọng. Máy trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút S Pen cùng nhiều tính năng mới và nhiều công nghệ được ưu ái.\r\nMàn hình vô cực hiện đại tiên tiến\r\nDù được giới thiệu là màn hình lên tới 6.3 inch nhưng thực sự khi cầm điện thoại Note 8 trên tay rất nhỏ gọn nhờ vào công nghệ "màn hình vô cực" tiên tiến nhất hiện nay của Samsung.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.3", Quad HD+ (2K+)\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 8895 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ', 19900000, 1, 'images/products/57e0e97061e6f1dcd70032abda69f214.png'),
(6, 2, 'Điện thoại iPhone Xr 64GB', 'Đặc điểm nổi bật của iPhone Xr 64GB\r\nTìm hiểu thêm\r\n\r\nLà chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng chống nước chống bụi.\r\nMàn hình tai thỏ tràn viền công nghệ LCD\r\nKhác với iPhone Xs hay Xs Max, chiếc smartphone này sở hữu màn hình LCD.\r\n\r\nBù lại với công nghệ True Tone cùng màn hình tràn viền rộng tới 6.1 inch, mọi trải nghiệm trên máy vẫn đem lại sự thích thú và hoàn hảo, như dòng cao cấp khác của Apple.', 'Màn hình:	IPS LCD, 6.1", IPS LCD, 16 triệu màu\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB', 20990000, 1, 'images/products/610d183c5e81489aea487b489d035716.png'),
(7, 12, 'Điện thoại Samsung Galaxy Note 9', 'Đặc điểm nổi bật của Samsung Galaxy Note 9\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Bút cảm ứng, Cáp, Cây lấy sim, Ốp lưng, Adapter chuyển USB\r\n\r\nMang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.', 'Màn hình:	Super AMOLED, 6.4", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 22990000, 1, 'images/products/804a53d6f8637c3a8cd46378adf0fbf9.png'),
(8, 12, 'Điện thoại Samsung Galaxy A8 Star', 'Đặc điểm nổi bật của Samsung Galaxy A8 Star\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Pin, Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim\r\n\r\nSamsung Galaxy A8 Star là một biến thể mới của dòng A trong gia đình Samsung với sự nâng cấp vượt trội về camera cũng như thay đổi trong thiết kế.\r\nThiết kế mang vẻ đẹp hiện đại\r\nĐiện thoại Samsung mới sở hữu thiết kế vẫn khá quen thuộc với thân hình có phần nam tính, mạnh mẽ và hiện đại, đan xen một chút mềm mại đến từ các góc cạnh và mặt lưng của máy.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.3", Full HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	24 MP và 16 MP (2 camera)\r\nCamera trước:	24 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ', 12850000, 1, 'images/products/22c30c911abb3f22f96ff88cc00ca7eb.png'),
(49, 12, 'Điện thoại Samsung Galaxy S9+ 128GB', 'Đặc điểm nổi bật của Samsung Galaxy S9+ 128GB\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Pin, Sạc, Tai nghe, Sách hướng dẫn, Cáp (Cáp USB-C to USB, Adapter USB-C to USB), Cây lấy sim, Adapter chuyển USB (OTG)\r\n\r\nSamsung Galaxy S9 Plus 128Gb, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.\r\nThiết kế hoàn thiện hơn\r\nKhông có một sự lột xác về thiết kế, chiếc điện thoại Samsung năm nay chỉ cải tiến một vài điểm thiết kế đã quá hoàn hảo từ thế hệ Galaxy S8 trước đây.\r\n\r\nKhung của máy vẫn là kim loại kết hợp 2 mặt kính cường lực được bo cong các cạnh đầy "quyến rũ" và hiện đại.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB', 24490000, 1, 'images/products/97375c7df1307ce473d9fbca0bf2ad8e.png'),
(10, 11, 'Điện thoại Vivo V11', 'Đặc điểm nổi bật của Vivo V11\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sạc,Tai nghe,Sách hướng dẫn,Phiếu bảo hành,Cây lấy sim,Ốp lưng,Cáp\r\n\r\nMột thiết kế tuyệt đẹp, một màn hình Halo siêu tràn viền đúng nghĩa cùng một hiệu năng ấn tượng là những gì được thể hiện trên Vivo V11, đứa con cưng trong phân khúc cận cao cấp của Vivo.\r\nThiết kế tương lai\r\nChiếc điện thoại Vivo V11 mang một thân hình vô cùng quyến rũ với không gian màn hình gần như chiếm trọn mặt trước của máy.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.41", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ', 10900000, 1, 'images/products/2956eb5ea925cb65271e28a0ccd55069.png'),
(51, 11, 'Điện thoại Vivo Y85', 'Đặc điểm nổi bật của Vivo Y85\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\nVivo Y85 là chiếc smartphone tầm trung mới của Vivo với thiết kế “tai thỏ”, camera kép đặt dọc ở mặt lưng.\r\nThiết kế theo xu thế\r\nĐầu năm 2018 dường như là thời gian ra mắt của một loạt smartphone thiết kế “tai thỏ”, và Vivo Y85 cũng không phải ngoại lệ.', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.22", HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	13 MP và 2 MP (2 camera)\r\nCamera trước:	8 MP\r\nCPU:	MediaTek MT6762 8 nhân 64-bit (Helio P22)\r\nRAM:	4 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 3900000, 1, 'images/products/e55a8b4780702c73942de3cbeaa2037e.png'),
(52, 11, 'Điện thoại Vivo V11i', 'Đặc điểm nổi bật của Vivo V11i\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng\r\n\r\nVivo V11i được xem là một kiệt tác mà Vivo tạo ra trong phân khúc điện thoại tầm trung với sự bóng bẩy trong thiết kế đến từ màn hình tràn viền siêu mỏng được cách điệu bởi chiếc tai thỏ hình giọt nước đáng yêu.\r\nThiết kế đến từ tương lai\r\nVivo V11i sở hữu cho mình lối thiết kế tuyệt đẹp với thân hình thanh thoát, uyển chuyển bởi các đường cong mềm mại đan xen một chút mạnh mẽ.', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.3", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 12300000, 1, 'images/products/0c1a50c1e372ca4c1b63d75e62edba40.png'),
(37, 7, 'Laptop HP Pavilion 14 ce0021TU i3', 'Đặc điểm nổi bật của HP Pavilion 14 ce0021TU i3 8130U/4GB/1TB/Win10/(4MF00PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nBên cạnh thiết kế mỏng nhẹ, thời trang phù hợp cho việc di chuyển hằng ngày đến công sở, lớp học. Máy tính xách tay HP Pavilion 14 ce0021TU sở hữu cấu hình vừa đủ mạnh xử lý tốt các ứng dụng văn phòng, đồ hoạ cơ bản cùng mức giá bán hấp dẫn sẽ phù hợp với học sinh, sinh viên hay những người thường xuyên sử dụng với những ứng dụng không quá nặng.\r\nThiết kế mỏng nhẹ, dễ dàng di chuyển\r\nĐược hoàn thiện từ chất liệu nhựa, các cạnh được bo cong cứng cáp với trọng lượng chỉ 1.59 kg và dày 17.79 mm giúp việc mang vác hằng ngày đến công ty của bạn trở nên dễ dàng và thuận tiện hơn', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Kabylake Refresh, 8130U, 2.20 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 17.79 mm, 1.59 kg', 12990000, 2, 'images/products/5a2d88981d108998a63c1ea986605483.jpg'),
(39, 21, 'Tai nghe nhét trong Kanen IP-218 Hồng', 'Giới thiệu sản phẩm\r\nTai nghe nhét trong hiệu Kanen có sắc hồng rất nổi bật và đẹp mắt, rất phù hợp với các bạn nữ khi lựa chọn tai nghe cho riêng mình.', 'Thông số kỹ thuật\r\nJack cắm:	\r\n3.5 mm\r\nĐộ dài dây:	\r\n1.2 m\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nTăng/giảm âm lượng\r\nBộ bán hàng:	\r\nTai nghe\r\n2 cặp đệm tai nghe', 79000, 3, 'images/products/f620c1e7f1af31af3a1930cf341e655d.jpg'),
(40, 21, 'Tai nghe Bluetooth Roman R551N Trắng', 'Thiết kế màu trắng tinh tế, đường vân tạo điểm nhấn trên bề mặt.\r\nCó thể kết nối cùng 1 lúc 2 thiết bị.\r\nCông nghệ bluetooth 4.1 cho khoảng cách kết nối tốt lên đến 10 m.\r\nCông nghệ lọc tiếng ồn cho âm thanh chất lượng khi đàm thoại.\r\nDùng được khi xem video, nghe nhạc, chơi game...', 'Thông số kỹ thuật\r\nJack cắm:	\r\nĐầu sạc Micro USB\r\nĐộ dài dây:	\r\nKhông dây\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nTăng/giảm âm lượng\r\nBộ bán hàng:	\r\nTai nghe\r\nDây cáp Micro USB\r\n1 móc vành tai\r\nSách hướng dẫn', 210000, 3, 'images/products/15c9970f7f0be7b4af76ea2704037af0.jpg'),
(41, 21, 'Tai nghe Bluetooth Roman S3020S', 'Tai nghe dạng móc vành tai trong chống rơi rớt.\r\nKhông lo rơi tai nghe khi không dùng đến nhờ 2 đầu hít nam châm.\r\nThời gian thoại 4 giờ, nghe nhạc 3.5 giờ, sạc 2 tiếng.\r\nCông nghệ bluetooth 4.1 cho khoảng cách kết nối đến 10 m.\r\nKết nối đồng thời 2 điện thoại tại 1 thời điểm.\r\nDùng được khi xem video, nghe nhạc, chơi game...', 'Thông số kỹ thuật\r\nJack cắm:	\r\nĐầu sạc Micro USB\r\nTương thích:	\r\nAndroid\r\niOS (iPhone)\r\nWindows Phone\r\nKhả năng kết nối:	\r\n2 máy\r\nThời gian sạc:	\r\n2 giờ\r\nThời gian dùng:	\r\n4 giờ\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nTăng/giảm âm lượng\r\nBộ bán hàng:	\r\nTai nghe\r\nDây cáp Micro USB\r\n2 cặp đệm tai nghe\r\nSách hướng dẫn', 270000, 3, 'images/products/df8e4e09f816800fb64bb51a81bbdd6d.jpg'),
(70, 22, 'Chuột dây rút Zadez M218', 'Giới thiệu sản phẩm\r\nThương hiệu chuột uy tín Zadez', 'Thông số kỹ thuật\r\nNhà sản xuất:	\r\nZadez\r\nModel:	\r\nM218\r\nĐộ phân giải quang học:	\r\n800 dpi\r\nCách kết nối:	\r\nCổng USB\r\nĐộ dài dây / Khoảng cách kết nối:	\r\nDây dài 100 cm\r\nKích thước:	\r\nDài 8.9 cm - ngang 5.1 cm - cao 3.3 cm\r\nTrọng lượng:	\r\n11 g', 70000, 3, 'images/products/3b098d3f10d1169bad311629b4d53124.jpg'),
(71, 22, 'Bộ bàn phím chuột dây Zadez ZMK-122', 'Kiểu dáng mới, sang trọng và chắc chắn.\r\nBàn phím tiêu chuẩn 105 phím.\r\nĐộ phân giải chuột 1000 dpi giúp di chuyển nhanh và chính xác .\r\nNguyên liệu nhựa cao cấp ABS (không sử dụng nhựa tài chế), cho độ bền theo năm tháng', 'Mua nhiều giảm đến 20%:\r\nMua 2 món phụ kiện khác nhau giảm 10%\r\nMua 3 món phụ kiện khác nhau giảm 15%\r\nMua từ 4 món phụ kiện trở lên khác nhau giảm 20%', 240000, 3, 'images/products/3e9a110c4216def70727645386c7fb24.jpg'),
(72, 22, 'Chuột Gaming Cliptec Stenopo RGS564', 'Giới thiệu sản phẩm\r\nChuột Gaming Cliptec Stenopo RGS564 đến từ hãng Cliptec uy tín và chất lượng', 'Thông số kỹ thuật\r\nNhà sản xuất:	\r\nCliptec\r\nModel:	\r\nRGS564\r\nĐộ phân giải quang học:	\r\n3200 dpi\r\n1200 dpi\r\n1600 dpi\r\n2400 dpi\r\nCách kết nối:	\r\nCổng USB\r\nĐộ dài dây / Khoảng cách kết nối:	\r\nDây dài 170 cm\r\nKích thước:	\r\nDài 13.4 cm - ngang 7.1 cm - cao 4.3 cm\r\nTrọng lượng:	\r\n150 gr', 320000, 3, 'images/products/1a58c8f5b2f42541e9abe0f61eb37bab.jpg'),
(50, 12, 'Điện thoại Samsung Galaxy S9+ 64GB', 'Xứng đáng là một trong những smartphone siêu phẩm trên thế giới, Samsung Galaxy S9 Plus bản 64 GB sở hữu nhiều tính năng vượt trội mà khó có chiếc điện thoại nào sánh bằng.\r\nThiết kế sang trọng và tinh tế\r\nNhờ thiết kế tràn viền, tổng thể S9 Plus vẫn đem lại cảm giác nhỏ gọn, chắc chắn trong lòng bàn tay nhưng màn hình vẫn rộng rãi để thoải mái trải nghiệm.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB', 23490000, 1, 'images/products/a0d502e4d778bcf7409bcd6e9c2bec59.png'),
(53, 23, 'Điện thoại OPPO F9 6GB', 'Đặc điểm nổi bật của OPPO F9 6GB\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng\r\n\r\nLà chiếc điện thoại OPPO được nâng cấp cấu hình, cụ thể là RAM lên tới 6 GB, OPPO F9 6GB còn trang bị nhiều tính năng đột phá như sở hữu công nghệ sạc VOOC mới nhất, mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.\r\nCấu hình mạnh mẽ với RAM lên tới 6 GB và chip Helio P60', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 6.3", Full HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 8470000, 1, 'images/products/689c88822bb066fc31e62423f6e118d6.png'),
(45, 12, 'Điện thoại Samsung Galaxy S8 Plus', 'Đặc điểm nổi bật của Samsung Galaxy S8 Plus\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG (2 đầu chuyển: USB-C sang micro USB, USB-C sang USB-C), Cáp, Cây lấy sim\r\n\r\nGalaxy S8 và Galaxy S8 Plus hiện đang là chuẩn mực smartphone về thiết kế trong tương lai. Sau nhiều ngày được sử dụng, mình xin chia sẻ những cảm nhận chi tiết nhất về chiếc Galaxy S8 Plus - chiếc điện thoại Samsung đang có doanh số đặt hàng khủng nhất hiện tại.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 8895 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 17990000, 1, 'images/products/ad345b32526e514050245abaf909afd4.png'),
(46, 12, 'Điện thoại Samsung Galaxy A8+ (2018)', 'Đặc điểm nổi bật của Samsung Galaxy A8+ (2018)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Pin, Sạc, Tai nghe, Sách hướng dẫn, Ốp lưng, Cây lấy sim\r\n\r\nSamsung Galaxy A8+ (2018) là phiên bản lớn hơn của chiếc Samsung Galaxy A8 (2018) phù hợp với những bạn yêu thích điện thoại có màn hình lớn và thời lượng pin bền bỉ.\r\nThiết kế sang trọng với viền mỏng\r\nĐiện thoại Samsung mới này sở hữu bộ khung kim loại chạy xung quanh máy được bo tròn tinh tế hơn, mang lại sự thoải mái tuyệt đối khi cầm trên tay và thao tác.', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6", Full HD+\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	16 MP\r\nCamera trước:	16 MP và 8 MP (2 camera)\r\nCPU:	Exynos 7885 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 11990000, 1, 'images/products/57e0e97061e6f1dcd70032abda69f214.png'),
(47, 2, 'Điện thoại iPhone Xs Max 512GB', 'Đặc điểm nổi bật của iPhone Xs Max 512GB\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\nLà chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.\r\nMàn hình OLED chất lượng cao rộng 6.5 inch đầu tiên của Apple\r\nVới công nghệ Super Retina kết hợp tấm nền OLED trên iPhone XS Max đem lại dải màu sắc cực kì sống động và sắc nét đến từng chi tiết.\r\n\r\nMàn hình điện thoại iPhone Xs Max chính hãng\r\n\r\nBên cạnh đó, Apple còn tích hợp thêm công nghệ HDR10 cùng tần số cảm ứng 120 Hz giúp chất lượng hình ảnh được nâng cao và mượt mà hơn đáng kể.', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.5", Super Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G', 42900000, 1, 'images/products/679e7a7fc2812b95dca2df38ca8428c5.png'),
(48, 23, 'Điện thoại OPPO Find X', 'Đặc điểm nổi bật của OPPO Find X\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Pin, Sạc, Tai nghe, Sách hướng dẫn\r\n\r\nOPPO Find X tạo nên một cú hích lớn trong làng smartphone hiện nay khi mang trong mình nhiều tính năng đột phá mà nổi bật nhất đến từ thiết kế sáng tạo và một hiệu năng đỉnh cao.\r\nThiết kế đến từ tương lai\r\nChiếc điện thoại OPPO mới đã tạo nên sự khác biệt cho riêng mình nhờ lối thiết kế dạng trượt phần camera giúp không gian hiển thị mặt trước chiếm gần như là trọn vẹn.', 'Thông số kỹ thuật\r\nMàn hình:	AMOLED, 6.42", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	20 MP và 16 MP (2 camera)\r\nCamera trước:	25 MP\r\nCPU:	Snapdragon 845 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 20900000, 1, 'images/products/26ca550c6f705e67b242d3f07c78de95.png'),
(55, 23, 'Điện thoại OPPO F7', 'Tiếp nối sự thành công của OPPO F5 thì OPPO tiếp tục tung ra OPPO F7 với điểm nhấn vẫn là camera selfie và thiết kế "tai thỏ độc đáo".\r\nThiết kế tai thỏ độc đáo\r\nOPPO F7 vẫn đi theo thiết kế "tai thỏ" mà Apple đã từng làm trên iPhone X.', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 6.23", Full HD+\r\nHệ điều hành:	ColorOS 5.0 (Android 8.1)\r\nCamera sau:	16 MP\r\nCamera trước:	25 MP\r\nCPU:	MediaTek Helio P60 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ', 6990000, 1, 'images/products/68e718e0b92e56bb211009bd4c9cc4c1.png'),
(56, 23, 'Điện thoại OPPO A7', 'Đặc điểm nổi bật của OPPO A7\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nOPPO A7, chiếc điện thoại được xem là sự hiện thân của cái đẹp, cái sáng tạo mà OPPO mang đến cho người dùng với mặt lưng được tô điểm bởi những họa tiết 3D thú vị cùng chiếc tai thỏ hình giọt nước đáng yêu.\r\nThiết kế cực chất với mặt lưng 3D dạng lưới\r\nOPPO A7 được tạo nên nhờ với một ngôn ngữ thiết kế mới lạ, bắt mắt khi có phần mặt lưng phản chiếu 3D vân lưới ánh sáng cực đẹp và thu hút.', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.2", HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	13 MP và 2 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 5990000, 1, 'images/products/135ff7f14dcba04f4fa5a7eafc06db6b.png'),
(57, 2, 'Điện thoại iPhone Xs Max 256GB', 'Đặc điểm nổi bật của iPhone Xs Max 256GB\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\nSau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo.\r\nHiệu năng đỉnh cao cùng chip Apple A12\r\niPhone Xs Max được Apple trang bị cho con chip mới toanh hàng đầu của hãng mang tên Apple A12.\r\n\r\nChip A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên mà hãng sản xuất với 6 nhân đáp ứng vượt trội trong việc xử lý các tác vụ và khả năng tiết kiệm năng lượng tối ưu.', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.5", Super Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G', 36900000, 1, 'images/products/71e9b527ef6cf8b13b86f728aaa5ab1b.png'),
(60, 2, 'Điện thoại iPhone X 256GB Gray', 'Đặc điểm nổi bật của iPhone X 256GB Gray\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\niPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.\r\nThiết kế luôn mang tính đi đầu và cao cấp', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 5.8", Super Retina\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G', 29900000, 1, 'images/products/3100077924e27d930bbf7cabfc67ee8c.png'),
(61, 7, 'Laptop HP Envy 13 ah0027TU i7', 'Đặc điểm nổi bật của HP Envy 13 ah0027TU i7 8550U/8GB/256GB/Win10/(4ME94PA)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nHp Envy là một trong những dòng sản phẩm vô cùng nổi tiếng từ HP với ngoại hình cao cấp, cấu hình mạnh và thiết kế mỏng nhẹ truyền thống. HP Envy 13 ah0027TU i7 8550U là một trong những sản phẩm cao cấp như vậy của dòng Envy nổi tiếng. Một chiếc laptop có cấu hình cao và ngoại hình rất đẹp.\r\nThiết kế tinh tế\r\nĐầu tiên phải nói tới thiết kế vô cùng đẹp của máy với trọng lượng chỉ khoảng 1.28 kg và mỏng 15 mm, máy cho cảm giác rất gọn, nhẹ khi sử dụng dễ dàng mang theo bên mình. Phần thân máy được làm bằng vỏ kim loại giúp tổng thể máy chắc chắn, phần bản lề được lấy cảm hứng từ thép Damacus cho máy trở nên sang trọng hơn.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR3 (on board), 2133 MHz\r\nỔ cứng:	SSD: 256 GB, M2, PCIe\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.1, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 15 mm, 1.2 kg', 26900000, 2, 'images/products/5a5e61dcaae52220befa1914eb2f0288.jpg'),
(62, 7, 'Laptop HP 15 da0036TX i7', 'Đặc điểm nổi bật của HP 15 da0036TX i7 8550U/4GB/1TB/2G MX130/Win10/(4ME78PA)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop HP 15 da0036TX i7 8550U với cấu hình khá nhau mang đến hiệu năng hoạt động mượt mà cùng khả năng tiết kiệm điện năng, ổ cứng HDD 1 TB lưu trữ dữ liệu thoải mái. Trọng lượng máy khá nhẹ thích hợp cho nhiều đối tượng khách hàng khác nhau từ học sinh, sinh viên dùng để học tập - làm việc cho đến những người chuyên làm về thiết kế đồ hoạ hay những khách hàng thường xuyên di chuyển cùng chiếc "laptop".\r\nThiết kế sang trọng hiện đại, trọng lượng phù hợp di chuyển hằng ngày\r\nHP 15 da0036TX i7 có thiết kế vỏ nhựa đơn giản nhưng vẫn nổi bật với vẻ đẹp sang trọng, cuốn hút. Máy có độ dày chỉ  22.5 mm đi cùng trọng lượng 2.1 kg, không quá bất tiện cho người dùng mang máy theo sử dụng.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 2GB\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.5 mm, 2.1 kg', 17490000, 2, 'images/products/f2977bfe90be26ff2db9cea4b505669c.jpg'),
(63, 8, 'Laptop Asus ROG Strix Scar GL504GM i7', 'Thiết kế đạm chất "laptop gaming" và cấu hình khủng, chạy mượt mà các game nặng. Asus GL504GM i7 8750H - Chiếc laptop dành riêng cho các game thủ vừa được Asus cho ra mắt 9/2018 là sự lựa chọn rất được chú ý cho các "Gamer" thực thụ.\r\nThiết kế tinh tế - Phong cách Gaming hiện đại \r\nLaptop Asus GL504GM i7 8750H mang đến một thiết kế nổi bật với lớp vỏ kim loại phay xước bề mặt chống bám bẩn, nhìn nghiêng sẽ thấy đường chéo nổi lên chia đôi sống lưng đặc trưng của ROG Strix Scar đầy mạnh mẽ, đậm chấm gaming.\r\n\r\nNgoài ra, máy cũng nhẹ hơn với tổng trọng lượng chỉ 2,4 kg giúp linh hoạt tối đa để bạn luôn có thể mang theo bên mình.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Coffee Lake, 8750H, 2.20 GHz\r\nRAM:	16 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	HDD: 1 TB + SSD: 128GB, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce GTX1060, 6GB\r\nCổng kết nối:	HDMI 2.0, 3 x USB 3.1, LAN (RJ45), Mini DisplayPort, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 26.1 mm, 2.4 kg', 45270000, 2, 'images/products/f8f8db1f6aca03eedcc19a5ec71e4298.jpg'),
(64, 8, 'Laptop Asus Vivobook S15 S530UA i5', 'Bên cạnh trọng lượng khá nhẹ, dễ dàng cho việc di chuyển hằng ngày đến văn phòng, trường học,... Laptop Asus S530UA BQ290T được trang bị cấu hình đủ khoẻ và bộ nhớ Intel Optane chạy mượt mà các ứng dụng văn phòng, đồ hoạ cơ bản phù hợp cho sinh viên, nhân viên văn phòng.\r\nThiết kế kim loại, trọng lượng nhẹ đầy sang trọng\r\n Laptop Asus S530UA BQ290T được hoàn thiện vỏ ngoài kim loại chắc chắn, mỏng chỉ 18 mm giúp tổng thể máy thanh thoát và sang trọng. Trọng lượng khá nhẹ chỉ 1.8 kg phù hợp việc mang vác hằng ngày đến công sở, lớp học của sinh viên, nhân viên văn phòng.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 SATA3, Intel Optane 16GB\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 2.0, USB 3.0, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10 Home SL', 17390000, 2, 'images/products/0c39e23c1efdab950cbc2ac5073438bc.jpg'),
(65, 8, 'Laptop Asus VivoBook S15 S510UA', 'Đặc điểm nổi bật của Asus VivoBook S15 S510UA i5 8250U/4GB/1TB/Win10/(BQ414T)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nAsus S15 S510UA i5 phiên bản máy tính nâng cấp hết sức giá trị với chip xử lý thế hệ thứ 8 mới nhất của Intel cho hiệu năng vượt trội, đáp ứng tốt cho bạn trong các nhu cầu làm việc, học tập, giải trí hằng ngày.\r\n\r\n \r\n\r\nThiết kế mỏng nhẹ, thuận tiện di chuyển hằng ngày\r\nThiết kế vỏ nhựa, nắp lưng bằng kim loại tạo nên vẻ ngoài sang trọng. Trọng lượng máy 1.5 kg, dày 17.9 mm rất phù hợp để bạn mang vác hằng ngày đến trường học, công ty.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2133 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 SATA3\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền', 15900000, 2, 'images/products/9b8d8cd2505e451bc8fa742c0b46b60a.jpg'),
(66, 9, 'Laptop Dell Inspiron 7570 i7', 'Đặc điểm nổi bật của Dell Inspiron 7570 i7 8550U/8GB/1TB+128GB/4GB MX130/Win10/Office365/(782P82)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nLaptop Dell Inspiron 7570 (782P82) được thiết kế vỏ ngoài kim loại sang trọng, tinh tế. Máy được trang bị cấu hình mạnh mẽ cho hiệu năng mượt, Ổ cứng SSD cho tốc độ khởi động máy, các ứng dụng, tốc độ phản hồi các tác vụ  xử lý đồ họa - kĩ thuật được nhanh chóng, thỏa sức chiến các tựa game cấu hình cao.\r\nMàn hình 15.6 inch viền siêu mỏng\r\nDell Insprion 7570 được trang bị màn hình viền mỏng có độ phân giải Full HD kết hợp tấm nền IPS cùng công nghệ TrueLife LED-Backlit Display đem đến chất lượng hình ảnh sống động, chân thực, tái tạo màu sắc chuẩn xác đến từng chi tiết, từng góc độ. Đem đến không gian trải nghiệm tuyệt vời, tầm nhìn rộng rãi, thoải mái cho người dùng khi sử dụng trong thời gian dài.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB + SSD: 128GB, Hỗ trợ khe cắm SSD M.2 SATA3\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 4GB\r\nCổng kết nối:	3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10 + Office 365 1 năm\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 18.8 mm, 2 kg', 26990000, 2, 'images/products/5900abdc4852a8d42a8ed89e2f25910e.jpg'),
(67, 9, 'Laptop Dell Inspiron 7373 i5 8250U', 'Đặc điểm nổi bật của Dell Inspiron 7373 i5 8250U/8GB/256GB/Win10/Office365/(C3TI501OW)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nDell Inspiron 7373 i5 8250U là mẫu laptop có thiết kế mỏng nhẹ và sang trọng với chất liệu nhôm nguyên khối thuộc phân khúc laptop phù hợp với doanh nhân, máy được trang bị cấu hình khá mạnh cho các nhu cầu làm việc, giải trí.\r\n \r\n\r\nSử dụng miễn phí Office 365 trong 1 năm\r\nBộ office 365 được tích hợp sẵn, bạn có thể sử dụng miễn phí 1 năm các ứng dụng văn phòng cần thiết word, excel, powerpoint,... Một bổ sung nhỏ nhưng cần thiết cho công việc hằng ngày của bạn. Không cần phải lo bị lỗi khi mở file bằng các phần mềm crack.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím, Có màn hình cảm ứng\r\nHệ điều hành:	Windows 10 + Office 365 1 năm\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 15.2 mm, 1.6 kg', 26900000, 2, 'images/products/037e22550e4d522e9468b97b5298426d.jpg'),
(68, 9, 'Laptop Dell Inspiron 5379 i7', 'Đặc điểm nổi bật của Dell Inspiron 5379 i7 8550U/8GB/1TB/Win10/Office365/(C3TI7501W)\r\n\r\nBộ sản phẩm chuẩn: Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nDell Inspiron 5379 i7 8550U là chiếc máy tính xách tay có thiết kế nhỏ gọn và sang trọng máy được trang bị cấu hình Intel Kabylake Refresh mạnh mẽ, máy có màn hình cảm ứng đa điểm tiện dụng.\r\nThiết kế hiện đại, sang trọng\r\nLaptop Dell Inspiron 5379 được tạo nên từ chất liệu nhựa với các cạnh thiết kế vuông vức và được phủ một lớp xám. Máy có độ mỏng 19.5 mm cho bạn khả năng mang vác máy đi làm hay đi công tác tiện lợi.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0\r\nĐặc biệt:	Có đèn bàn phím, Có màn hình cảm ứng\r\nHệ điều hành:	Windows 10 + Office 365 1 năm\r\nThiết kế:	Vỏ nhựa, PIN liền', 24400000, 2, 'images/products/9cf340885297af67ed41f17107d0a675.jpg'),
(69, 10, 'Laptop Lenovo IdeaPad 320 15IKBN i7', 'Đặc điểm nổi bật của Lenovo IdeaPad 320 15IKBN i7 8550U/4GB/1TB/2GB MX150/Win10/(81BG00E1VN)\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc\r\n\r\nMáy tính xách tay Lenovo IdeaPad 320 là mẫu máy tính thuộc mọi phân khúc người dùng từ học sinh, sinh viên đến nhân viên văn phòng, máy có cấu hình Intel Core i7 mạnh mẽ và kiểu thiết kế đặc trưng dòng latop Lenovo. Dòng máy ra đời tạo ra thêm sự lựa chọn cho người dùng trong phân khúc laptop làm đồ hoạ tốt dưới 20 triệu.\r\nThiết kế đặc trưng dòng IdeaPad\r\nLenovo IdeaPad 320 15IKBN có thiết kế đơn giản nhưng tinh tế, phần mặt lưng được làm bằng nhựa có màu sắc như nhôm, với logo Lenovo được làm bóng. Chưa hết, máy còn sở hữu độ mỏng ấn tượng rất thích hợp cho các bạn hay di chuyển và không cần một chiếc laptop quá to, đặc biệt là các bạn nữ.', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Kabylake Refresh, 8550U, 1.80 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2133 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX150, 2GB\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.9 Kg', 16900000, 2, 'images/products/9cf340885297af67ed41f17107d0a675.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(70) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Token` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Password`, `Firstname`, `Lastname`, `Phone`, `Type`, `Token`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$84kHQgEO6ueSSwf7Eu7xDe0qFG9Z3/.2S1jDr4Nnw31A9y7wUtVcC', 'Hoang', 'Phong', '965764694', 0, 'c334a0da55c23109d36d66124d0773ba'),
(2, 'admin1', 'admin1@gmail.com', '$2y$10$Sxix2T.Qd9X0NPsrmpwb1u2r3od1GfsDCXHFAVhgWV1BfWAiSKLqa', 'admin', 'aaaaaaaaaaaaaaaa', NULL, 1, 'df7b86216c1f2cc3bd28aab7bba4f69e'),
(3, 'admin2', 'cd15TT5@gmail.com', '$2y$10$KRE4WNYL5f.LUZFabBnb6upYPnt0UU1NhdUoGtymhgcaqKM8BXDku', 'Trần Lê', 'Phong', NULL, 1, 'dd72cc0af15136ef324c7cab9eb84161'),
(4, 'user1', 'cd15TT5555@gmail.com', '$2y$10$akWnj4lGAAWIgK/xMtJmFu..efyUk8DL/xcimGUm.8qHx6y5rPfBO', 'Trần Lê', 'Phong', NULL, 1, '8a21fd74e5b6046970b38f377dd39188'),
(5, 'user2', 'cd15TT555555@gmail.com', '$2y$10$mtBc8FoGvFzkoKKmJOFG4enxaqpnZYvFF.BjN6LXLJyCiV9/.Liwe', 'Trần Lê', 'Phong', NULL, 1, '079d555ed36dd3231dfa230c290047b8'),
(6, 'user3', 'cd15TffT5@gmail.com', '$2y$10$OBfAkAW/oBLF3Uu675PzF.F/VsckW.hQWe0wecGxziRBMixJqUJoS', 'Trần Lê', 'Phong', NULL, 1, '003d7aaf2a5330f6c62ab2af6224b24e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activates`
--
ALTER TABLE `activates`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `kinds`
--
ALTER TABLE `kinds`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `KindId` (`KindId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UC_Users_Username` (`Username`),
  ADD UNIQUE KEY `UC_Users_Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activates`
--
ALTER TABLE `activates`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `kinds`
--
ALTER TABLE `kinds`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
