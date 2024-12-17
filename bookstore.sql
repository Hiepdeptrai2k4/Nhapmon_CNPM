-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL,
  `AuthorName` varchar(255) NOT NULL,
  `AuthorImg` varchar(255) NOT NULL,
  `Information` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AuthorID`, `AuthorName`, `AuthorImg`, `Information`) VALUES
(1, 'Phil Town', '', 'Philip Bradley Town là một nhà đầu tư người Mỹ, một diễn giả truyền động lực và là tác giả của ba cuốn sách về đầu tư tài chính từng là sách bán chạy nhất của New York Times.'),
(2, 'Robin Sharma', '', NULL),
(3, 'OG Mandino', '', NULL),
(4, 'Michael Goodwin', '', NULL),
(5, 'Benjamin Graham', '', NULL),
(6, 'Judy Robinett', '', NULL),
(7, 'Donald Trump', '', NULL),
(8, 'Tony Hsieh', '', NULL),
(9, 'Jim Collins', '', NULL),
(10, 'Yoshimoto Yoshio', '', NULL),
(11, 'Geogre Lakey', '', NULL),
(12, 'Robert Kiyosaki', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `BillID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`BillID`, `BookID`, `quantity`) VALUES
(12, 10, 1),
(12, 12, 1),
(13, 6, 2),
(13, 8, 2),
(13, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `BillID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Phone` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Total` int(11) NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`BillID`, `UserID`, `Phone`, `Name`, `Address`, `Time`, `Total`, `State`) VALUES
(2, 3, '0396748857', 'Nguyễn Thế Văn', 'Hai Bà Trưng, Hà Nội', '2024-12-06 00:22:52', 464000, 1),
(3, NULL, '0396748857', 'Nguyễn Thế Văn test guest', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-06 20:38:58', 0, 1),
(4, NULL, '0396748857', 'Nguyễn Thế Văn Guest', 'Kí túc xá Bách Khoa, Phường Bách Khoa, Quận Hai Bà Trưng, Hà Nội, Việt Nam', '2024-12-06 20:39:49', 500000, 1),
(8, NULL, '0396748857', 'Nguyễn Thế Văn', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-06 21:49:27', 215000, 1),
(9, NULL, '0396748857', 'Nguyễn Thế Văn', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-06 21:58:52', 465000, 1),
(10, NULL, '0396748857', 'Nguyễn Thế Văn', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-06 22:03:34', 480000, 1),
(11, 14, '0396748857', 'Nguyễn MinhĐức', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-06 22:04:27', 315000, 1),
(12, NULL, '0396748857', 'Nguyễn Thế Văn', 'Phuong Bach Khoa, Quan Hai BaTrung', '2024-12-13 14:46:24', 240000, 1),
(13, 14, '0396748857', 'Nguyễn MinhĐức', 'Phường Bách Khoa', '2024-12-13 14:48:25', 793000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `Description` text DEFAULT NULL,
  `Price` double NOT NULL,
  `Stock` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL,
  `BookImg` varchar(255) NOT NULL,
  `Year` year(4) DEFAULT NULL,
  `Favor` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `AuthorID`, `Description`, `Price`, `Stock`, `GenreID`, `BookImg`, `Year`, `Favor`) VALUES
(1, 'Payback Time - Ngày Đòi Nợ', 1, '\"Trong chứng khoán và thị trường tài chính, dám tham gia đầu tư cũng là một thành công tâm lý ban đầu. Dù vậy, 95% nhà đầu tư Việt Nam thuộc nhóm nhà đầu tư nhỏ lẻ với vốn kiến thức tài chính vô cùng hạn chế. Họ tham gia vào thị trường chứng khoán với 100% ý chí và sự quyết tâm chiến thắng thị trường, nhưng thật không may mắn kết cục cuối cùng của họ luôn là sự thất bại và mất tiền.', 350000, 39, 3, 'images/books/01.jpg', '2017', 2),
(2, 'Economix - Các Nền Kinh Tế Vận Hành (Và Không Vận Hành) Thế Nào Và Tại Sao?', 4, 'Nếu các bạn từng tìm cách hiểu những khái niệm kinh tế qua việc đọc vô số giáo trình kinh tế học, nhưng vẫn thấy thật khó hình dung được bức tranh toàn cảnh về bộ môn này, thì cuốn sách sẽ cung cấp cho các bạn một mảnh ghép hoàn chỉnh cho những mảnh nho nhỏ mà các bạn đã đọc qua.\r\n\r\nChúng ta sẽ hiểu rõ hơn về những khái niệm kinh tế cơ bản cùng những học thuyết kinh tế lớn còn ảnh hưởng tới ngày nay, qua tư tưởng của các nhà kinh tế học lớn như: Adam Smith, John Keynes...\r\n\r\nCó thể coi đây là một cuốn sử về lịch sử kinh tế thế giới kể từ khi nền kinh tế hàng hóa ra đời. Chúng ta sẽ lướt qua vài thế kỷ với vô số học thuyết về kinh tế học cùng những vụ khủng hoảng kinh tế lớn như thể đang đọc một cuốn truyện tranh, cả bi lẫn hài, căng thẳng mà không kém phần sảng khoái.\r\n\r\n“Cuốn sách hóm hỉnh và thú vị này động chạm đến vô số vấn đề phức tạp – kinh tế học, lịch sử và tài chính – và khiến những vấn đề ấy trở nên dễ hiểu với cả những người dốt nhất.”\r\n\r\n–Miami Herald\r\n\r\n“Economixđem lại một cảm giác sống động về chủ đề vô cùng khó hiểu này mà không phải đơn giản hóa nó hoặc khiến độc giả khiếp hãi.”\r\n\r\n– MotherJones.com', 350000, 39, 3, 'images/books/02.jpg', '2019', 2),
(3, 'Nhà đầu tư thông minh', 5, 'Là nhà tư vấn đầu tư vĩ đại nhất của thế kỷ 20, Benjamin Graham đã giảng dạy và truyền cảm hứng cho nhiều người trên khắp thế giới. Triết lý “đầu tư theo giá trị“ của Graham, bảo vệ nhà đầu tư khỏi những sai lầm lớn và dạy anh ta phát triển các chiến lược dài hạn, đã khiến Nhà đầu tư thông minh trở thành cẩm nang của thị trường chứng khoán kể từ lần xuất bản đầu tiên vào năm 1949.\r\n\r\nTrải qua năm tháng, diễn biến thị trường đã chứng minh tính sáng suốt trong các chiến lược của Graham. Trong khi vẫn giữ lại toàn vẹn văn bản ban đầu của Graham, ấn phẩm tái bản này bổ sung thêm bình luận cập nhật của ký giả chuyên về tài chính nổi tiếng Jason Zweig. Cái nhìn của Zweig bao quát hiện thực của thị trường ngày nay, vạch ra sự tương tự giữa những ví dụ của Graham và các tít báo về tài chính hiện nay, giúp bạn đọc có sự hiểu biết kỹ lưỡng hơn về cách thức áp dụng các nguyên tắc của Graham.\r\n\r\nSống động và cần thiết, Nhà đầu tư thông minh là cuốn sách quan trọng nhất mà bạn có dịp đọc về cách thức đạt được các mục tiêu tài chính của mình.', 350000, 39, 2, 'images/books/03.jpg', '2008', 2),
(4, 'Siêu cò - Cách thưc biến quan hệ thành tiền tệ', 6, 'Trong quyển sách Siêu Cò – Cách thức biến quan hệ thành tiền tệ, Judy Robinett người được biết đến với danh hiệu “người phụ nữ với thông tin liên hệ hạng bạch kim” sẽ chia sẻ đến bạn những bí mật Siêu Kết Nối – Xây dựng các mối quan hệ chiến lược, có giá trị cao, giúp bạn thành công nhanh hơn trong kinh doanh như sau:\r\n\r\nXác định, lên kế hoạch tiếp cận và chăm sóc 155 mối quan hệ quan trọng, có giá trị nhất giúp bạn thành công lâu dài\r\n\r\nTương tác và tạo ra những “đề xuất giá trị” có tính thuyết phục để những kết nối hàng đầu chú ý đến bạn\r\n\r\nCách gia tăng “vốn quan hệ” và “vốn xã hội” tạo nên các tài sản dựa trên cơ sở phát triển, duy trì, nuôi dưỡng các mối quan hệ chất lượng cao\r\n\r\nNắm vững 4 bí mật kết nối có giá trị cao: hào phóng, quan tâm, chu đáo và luôn gia tăng giá trị cho các mối quan hệ chất lượng\r\n\r\nGiao tiếp tinh tế, cuốn hút người nghe dựa trên sở thích và nhu cầu của họ\r\n\r\nSử dụng phương tiện truyền thông xã hội hiệu quả để tiếp cận những người có sức ảnh hưởng và khó tiếp cận nhất', 150000, 39, 2, 'images/books/04.jpg', '2019', 2),
(5, 'Người bán hàng vĩ đại nhất thế giới', 3, '“Người bán hàng vĩ đại nhất Thế giới” là cuốn sách nổi tiếng của Og mandigo, được dịch ra 25 ngôn ngữ và đã bán ra hơn 50 triệu bản. Lúc đầu khi nghe tên sách, mình đã tưởng đây là một cuốn sách dạy những mánh khoé trong kinh doanh, những chiêu trò bán hành nhưng mình đã sai. Đây là cuốn sách viết về một hành trình dài của Hafid, một cậu bé lạc đà nghèo, ở Jerusalem cổ đại. Người thanh niên đã học được từ một thương nhân giàu có và thành công về những bí quyết để trở thành một người bán hàng vĩ đại. Sách được gói gọn trong mười tấm giấy da dạy bạn không chỉ trở thành người bán hàng giỏi mà còn là người vĩ đại. Nội dung cuốn sách được đúc kết từ chính kinh nghiệm của người xưa nên rất hữu ích, không như những cuốn sách khác chỉ là những lí thuyết xa rời thực tế. Đây xứng đáng là cuốn sách gối đầu giường của mọi thương nhân, và của tất cả mọi người. Nếu bạn đang phân vân không biết có nên mua hay không thì mình khuyên bạn hãy mua nó đi, thực sự bạn sẽ không phải hối tiếc đâu.', 350000, 39, 2, 'images/books/05.jpg', '2008', 2),
(6, 'Nhà lãnh đạo không chức danh', 2, 'Suốt hơn 15 năm, Robin Sharma đã thầm lặng chia sẻ với những công ty trong danh sách Fortune 500 và nhiều người siêu giàu khác một công thức thành công đã giúp ông trở thành một trong những nhà cố vấn lãnh đạo được theo đuổi nhiều nhất thế giới. Đây là lần đầu tiên Sharma công bố công thức độc quyền này với bạn, để bạn có thể đạt được những gì tốt nhất, đồng thời giúp tổ chức của bạn có thể có những bước đột phá đến một cấp độ thành công mới trong thời đại thiên biến vạn hóa như hiện nay.\r\n\r\nTrong cuốn sách Nhà Lãnh Đạo Không Chức Danh, bạn sẽ học được:\r\n\r\nLàm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nào.\r\n\r\nMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi.\r\n\r\nNhững bí mật thật sự của sự đổi mới.\r\n\r\nMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng.\r\n\r\nNhững thủ thuật cứng rắn giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để có thể đi đầu trong lĩnh vực của bạn.\r\n\r\nNhững phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng cuộc sống cá nhân.\r\n\r\nBất kể bạn làm gì trong tổ chức và cuộc sống hiện tại của bạn như thế nào, một thực tế quan trọng duy nhất là bạn có khả năng thể hiện năng lực lãnh đạo. Cho dù sự nghiệp hiện tại của bạn đang ở đâu, bạn vẫn luôn cần phải thể hiện những khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng đó, cũng như thay đổi cuộc sống và thế giới xung quanh bạn.', 200000, 39, 3, 'images/books/06.jpg', '2019', 2),
(7, 'Nghệ thuật đàm phán', 7, 'Quyển sách cho chúng ta thấy cách Trump làm việc mỗi ngày - cách ông điều hành công việc kinh doanh và cuộc sống - cũng như cách ông trò chuyện với bạn bè và gia đình, làm ăn với đối thủ, mua thành công những sòng bạc hàng đầu ở thành phố Atlantic, thay đổi bộ mặt của những cao ốc ở thành phố New York... và xây dựng những tòa nhà chọc trời trên thế giới. Quyển sách đi sâu vào đầu óc của một doanh nhân xuất sắc và khám phá một cách khoa học chưa từng thấy về cách đàm phán một thương vụ thành công. Đây là một cuốn sách thú vị về đàm phán và kinh doanh – và là một cuốn sách nên đọc cho bất kỳ ai quan tâm đến đầu tư, bất động sản và thành công.', 120000, 39, 3, 'images/books/07.jpg', '2016', 2),
(8, 'Tỷ Phú Bán Giày', 8, 'Tỷ phú bán giày không phải là một cuốn sách dạy cách làm giàu tuần tự theo các bước 1 - 2 - 3,... cũng không hẳn là một cuốn sách chỉ dẫn bí quyết kinh doanh hay nghệ thuật quản lý. Là hành trình tìm ra chân lý của Hạnh phúc, Đam mê và Lợi nhuận, Tỷ phú bán giày kể câu chuyện về thành công và thất bại của tác giả từ những thương vụ kinh doanh được khởi nghiệp từ khi 9 tuổi. Những trang trại giun đất, làm cúc áo thủ công, bán pizza ở Harvard,... đã trở thành nền móng cho một LinkExchange và sau này là Zappos lừng danh.', 139000, 20, 3, 'images/books/08.jpg', '2018', 2),
(9, 'Từ Tốt Đến Vĩ Đại', 9, 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!', 130000, 50, 3, 'images/books/09.jpg', '2017', 2),
(10, '3 Người Thầy Vĩ Đại', 2, '“Cuốn sách này là một tác phẩm hư cấu. Đây là câu chuyện về một người đàn ông có tên Jack Valentine mà đường đời có nhiều điểm giống với tôi. Có cảm nhận rất không đầy đủ với tư cách một con người, anh ấy lên kế hoạch tìm kiếm tri thức để sống một cuộc sống hạnh phúc hơn, khoẻ khoắn hơn và đẹp hơn.”', 115000, 100, 3, 'images/books/10.jpg', '2019', 2),
(11, 'Đến Starbucks Mua Cà Phê Cốc Lớn', 10, 'Đến Starbucks, bạn sẽ gọi một ly cà phê cỡ lớn hay cỡ nhỏ? Khi đi xem phim, bạn sẽ mua bịch bắp rang bơ cỡ to hay cỡ nhỏ? Lúc cần mua trà giải khát, bạn sẽ đến siêu thị cách xa hay đến tiệm tạp hóa cạnh nhà? Những vấn đề này có lẽ bạn sẽ cảm thấy vụn vặt và chẳng đáng quan tâm, nhưng tác giả đã thông qua việc phân tích những ví dụ đời thường nhất trong cuộc sống hằng ngày để nói với chúng ta rằng: ngoài việc cố kiếm thật nhiều tiền, thì tiêu tiền một cách thông minh chính là tuyệt chiêu tốt nhất để ứng phó với tình trạng lạm phát đang lan tràn hiện nay.\r\n\r\nVậy nên để tiết kiệm, chúng ta hãy bắt đầu từ việc học cách tính toán và quản lý chi phí một cách thấu đáo từ hôm nay. Chỉ như vậy, chúng ta mới có thể trở thành NGƯỜI TIÊU DÙNG SÁNG SUỐT.', 149000, 23, 3, 'images/books/11.jpg', '2022', 2),
(12, 'Kinh Tế Học Viking', 11, 'Kinh tế học Viking vui và thú vị hơn bất kỳ cuốn sách kinh tế nào bạn từng đọc. Và, rất có thể, thuyết phục hơn! Khi đi từ lịch sử Na Uy thế kỷ 20 đến chi tiết các chính sách chăm sóc trẻ em của Thụy Điển, Lakey không bao giờ đánh mất khiếu hài hước hoặc tầm nhìn rộng rãi, hào phóng về một tương lai tốt đẹp hơn, bình đẳng hơn. Bằng cách giải thích rằng ngay cả những thử nghiệm lớn nhất của Scandinavia về bình đẳng xã hội cũng bắt nguồn từ những cuộc đấu tranh chính trị gần đây, Lakey giải thích về cách chúng ta cũng có thể làm được điều đó - và đập tan những cách hiểu thông thường.', 125000, 23, 2, 'images/books/12.jpg', '2019', 2),
(13, 'Cha Giàu Cha Nghèo', 12, 'Rich Dad, Poor Dad là cuốn sách bán chạy nhất của Robert Kiyosaki. Trong đó, ông bày tỏ thái độ ủng hộ cho sự độc lập về tài chính nhờ đầu tư, bất động sản, kinh doanh và sử dụng tài chính hợp lý.', 90000, 45, 3, 'images/books/13.jpg', '1997', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`UserID`, `BookID`, `quantity`) VALUES
(3, 6, 1),
(3, 10, 1),
(3, 11, 1),
(9, 3, 4),
(9, 10, 2),
(13, 5, 2),
(13, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `CartID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL,
  `GenreName` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`GenreID`, `GenreName`, `Description`) VALUES
(1, 'Trong nước', 'Sách văn học trong nước'),
(2, 'Kinh tế', 'Sách kinh tế'),
(3, 'Nước ngoài', 'Sách nước ngoài');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`UserID`, `FirstName`, `LastName`, `Gender`, `Year`, `Month`, `Day`) VALUES
(3, 'Nguyễn Thế ', 'Văn', 0, 2005, 4, 23),
(9, 'Nguyễn Trung', 'Kiên', 0, 2004, 12, 5),
(13, 'Nguyễn Minh', 'Hải', 0, 2004, 6, 25),
(14, 'Nguyễn Minh', 'Đức', 0, 2004, 12, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `PasswordHash`, `Phone`, `Address`, `Email`) VALUES
(3, 'thevan2404', '$2a$12$yZLGl10MWrunwQED0yBwKOa5/f.YiLoyKAsLvjJ6Q383UcqYpTUI2', '0396748857', 'Hai Bà Trưng, Hà Nội', 'Van.NT220049@sis.hust.edu.vn'),
(8, 'admin', '$2a$12$R0Sb.7yoSsFrnGjfGyB20upWwBfmmkDqlmNAHt64jjDnldqXfd/o2', NULL, NULL, 'admin@123'),
(9, 'test', '$2a$12$AfXrGMYP60U5cKBUrKrmPOr9LoB0Ffh57sgiF/QAw0Ed1GtrOgY/6', NULL, NULL, 'test@123'),
(13, 'tes2', '$2a$12$1DxMORuqB9IqOyI7TvEaz.KtWMCfbuE8zpTsEP96D7zMoQoD7p6/2', NULL, NULL, 'nan@gmail.com'),
(14, 'test3', '$2a$12$jDszp7BW9bwq14k1WeOko.cgnq5C6bOj51wvxrJsPGwE4gb4jd3XC', NULL, NULL, 'nan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`BillID`,`BookID`),
  ADD KEY `Bookcon` (`BookID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`BillID`),
  ADD KEY `user_contrain123` (`UserID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `GenreID` (`GenreID`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`UserID`,`BookID`),
  ADD KEY `book_contrain` (`BookID`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `user` (`UserID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD CONSTRAINT `Bookcon` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billscontrain` FOREIGN KEY (`BillID`) REFERENCES `bills` (`BillID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `user_contrain123` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`);

--
-- Constraints for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD CONSTRAINT `book_contrain` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`),
  ADD CONSTRAINT `user_contrain` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `user` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
