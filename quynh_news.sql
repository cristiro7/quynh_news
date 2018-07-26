-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 06:17 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quynh_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_about`
--

CREATE TABLE `table_about` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(1) NOT NULL,
  `shows_index` int(1) NOT NULL,
  `shows_popup` int(1) NOT NULL,
  `who_we_are` int(11) NOT NULL,
  `why_choose_us` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_about`
--

INSERT INTO `table_about` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `video_link`, `numberic`, `shows`, `shows_index`, `shows_popup`, `who_we_are`, `why_choose_us`, `date_create`, `date_update`, `viewed`) VALUES
(4, 0, 'gioi-thieu-the-gioi-nong-san', 'Giới thiệu Thế Giới Nông Sản', 'Sau hơn 4 năm tham gia lĩnh vực xuất khẩu trái cây Việt Nam vào các thị trường khó tính trên thế giới như Mỹ, Canada, Hông Kông…. Chất lượng sản phẩm và thương hiệu sản phẩm của công ty An Phú đưa ra đã được thị trường hoàn toàn chấp nhận. Được sự khuyến khích và đảm bảo đầu ra của đối tác nước ngoài, Công ty An Phú A.P.P đã mạnh dạn quyết định đầu tư trang trại trồng rau quả an toàn ứng dụng kỹ thuật nông nghiệp công nghệ cao tại Đà Lạt, Lâm Đồng.', '<p>&nbsp; &nbsp; &nbsp;Sau hơn 4 năm tham gia lĩnh vực xuất khẩu tr&aacute;i c&acirc;y Việt Nam v&agrave;o c&aacute;c thị trường kh&oacute; t&iacute;nh tr&ecirc;n thế giới như Mỹ, Canada, H&ocirc;ng K&ocirc;ng&hellip;. Chất lượng sản phẩm v&agrave; thương hiệu sản phẩm của c&ocirc;ng ty An Ph&uacute; đưa ra đ&atilde; được thị trường ho&agrave;n to&agrave;n chấp nhận. Được sự khuyến kh&iacute;ch v&agrave; đảm bảo đầu ra của đối t&aacute;c nước ngo&agrave;i, C&ocirc;ng ty An Ph&uacute; A.P.P đ&atilde; mạnh dạn quyết định đầu tư trang trại trồng rau quả an to&agrave;n ứng dụng kỹ thuật n&ocirc;ng nghiệp c&ocirc;ng nghệ cao tại Đ&agrave; Lạt, L&acirc;m Đồng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Hơn 1 năm khai th&aacute;c v&agrave; gieo trồng, sản phẩm n&ocirc;ng nghiệp của c&ocirc;ng ty th&agrave;nh vi&ecirc;n xuất khẩu N&ocirc;ng Sản An Ph&uacute; Đ&agrave; lạt đ&atilde; được thị trường nhập khẩu Canada đ&oacute;n nhận. Sản phẩm chủ lực của c&ocirc;ng ty l&agrave; Đậu H&ograve;a Lan &ndash; một loại đậu c&oacute; gi&aacute; trị dinh dưỡng cao với vị gi&ograve;n v&agrave; ngọt &ndash; sản phẩm thu hoạch được kh&ocirc;ng đủ cung cấp cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Việc &aacute;p dụng c&ocirc;ng nghệ cao trong n&ocirc;ng nghiệp với phương ph&aacute;p gieo trồng, thu hoạch kh&eacute;p k&iacute;n, sản phẩm được xử l&yacute; bằng m&aacute;y l&agrave;m lạnh Vaccum Cooler gi&uacute;p rau quả giữ được vitamin ngay l&uacute;c thu hoạch với thời gian bảo quản gấp 3 &ndash; 4 lần b&igrave;nh thường.&nbsp;<br />\r\nĐạt được những th&agrave;nh c&ocirc;ng đ&oacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n trăn trở: Tại sao người ti&ecirc;u d&ugrave;ng Việt Nam lại kh&ocirc;ng được thưởng thức c&aacute;c loại rau củ quả c&oacute; chất lượng tuyệt hảo như vậy?</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Với những lợi thế của m&igrave;nh, ch&uacute;ng t&ocirc;i ho&agrave;n to&agrave;n c&oacute; khả năng cung cấp cho thị trường nội địa những sản phẩm chất lượng với gi&aacute; cả cạnh tranh. V&agrave; ch&uacute;ng t&ocirc;i đ&atilde; quyết định tiến th&ecirc;m một bước tr&ecirc;n con đường kinh doanh của m&igrave;nh: Th&agrave;nh lập cửa h&agrave;ng &ldquo;Thế giới N&ocirc;ng Sản&rdquo;</p>\r\n\r\n<p>Tại &ldquo;Thế giới N&ocirc;ng sản&rdquo;, ch&uacute;ng t&ocirc;i cung cấp:<br />\r\n- Rau quả an to&agrave;n được trồng từ trang trại của c&ocirc;ng ty tại Đ&agrave; Lạt, với quy tr&igrave;nh trồng- thu hoạch kh&eacute;p k&iacute;n ứng dụng c&ocirc;ng nghệ kỹ thuật cao.&nbsp;<br />\r\n- Tr&aacute;i c&acirc;y Việt Nam theo m&ugrave;a đạt ti&ecirc;u chuẩn xuất khẩu v&agrave;o Mỹ, Canada&hellip;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &ldquo;Thế giới N&ocirc;ng Sản&rdquo; &ndash; H&atilde;y đến v&agrave; kh&aacute;m ph&aacute; thế giới của ch&uacute;ng t&ocirc;i!</p>\r\n', 'Giới thiệu Thế Giới Nông Sản', 'Giới thiệu Thế Giới Nông Sản', 'Giới thiệu Thế Giới Nông Sản', '', '', '', '', '', '', 'logo_1449643955.png', 'logo_1449643955314x124_314x124.png', 'about1_1432947868270x220_270x220.jpg', 'about1_1432947869370x235_370x235.jpg', 'Giới thiệu Thế Giới Nông Sản', '', 1, 1, 0, 1, 1, 0, 1420621045, 1449643955, 3494),
(12, 0, 'cac-chung-nhan-tieu-chuan-hang-hoa-tai-cong-ty-an-phu-app', 'Các chứng nhận tiêu chuẩn hàng hóa tại công ty An Phú APP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 0, 0, 1532308391, 1532308391, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_about_list`
--

CREATE TABLE `table_about_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(1) NOT NULL,
  `shows_menu` int(1) NOT NULL,
  `shows_index` int(1) NOT NULL,
  `shows_tab` int(1) NOT NULL,
  `shows_all` int(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_about_list`
--

INSERT INTO `table_about_list` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `shows_menu`, `shows_index`, `shows_tab`, `shows_all`, `date_create`, `date_update`) VALUES
(1, 'dm-gioi-thieu-a', 'DM giới thiệu A', '', 'DM giới thiệu A', 'DM giới thiệu A', 'DM giới thiệu A', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 0, 0, 1432947685, 1432948085),
(2, 'dm-gioi-thieu-b', 'DM giới thiệu B', '', 'DM giới thiệu B', 'DM giới thiệu B', 'DM giới thiệu B', '', '', '', '', '', '', '', '', 2, 1, 0, 0, 0, 0, 1432947696, 1432948098),
(3, 'dm-gioi-thieu-c', 'DM giới thiệu C', '', 'DM giới thiệu C', 'DM giới thiệu C', 'DM giới thiệu C', '', '', '', '', '', '', '', '', 3, 1, 0, 0, 0, 0, 1432948107, 1432948107);

-- --------------------------------------------------------

--
-- Table structure for table `table_advertise`
--

CREATE TABLE `table_advertise` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `position` varchar(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_advertise`
--

INSERT INTO `table_advertise` (`id`, `ten_vi`, `ten_en`, `photo`, `thumb`, `alt`, `link`, `position`, `width`, `height`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, '', '', '1_1532619121.png', '', 'Quang Cao 1', 'https://www.google.com/', '', 0, 0, 1, 1, 1532619121, 0),
(2, '', '', '2_1532619129.png', '', 'Quang Cao 2', 'https://www.google.com/', '', 0, 0, 2, 1, 1532619129, 0),
(3, '', '', '3_1532619139.png', '', 'Quang Cao 3', 'https://www.google.com/', '', 0, 0, 3, 1, 1532619139, 0),
(4, '', '', '4_1532619149.png', '', 'Quang Cao 4', 'https://www.google.com/', '', 0, 0, 4, 1, 1532619149, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_advisory`
--

CREATE TABLE `table_advisory` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `hoten` varchar(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `noidung` text NOT NULL,
  `numberic` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `shows` tinyint(1) NOT NULL DEFAULT '1',
  `date_create` int(11) NOT NULL DEFAULT '0',
  `date_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_advisory`
--

INSERT INTO `table_advisory` (`id`, `id_product`, `hoten`, `email`, `dienthoai`, `noidung`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 15, 'Thành Loc', 'thanhloc_ag@yahoo.com.vn', '0906312124', '', 1, 1, 1410946363, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_banner`
--

CREATE TABLE `table_banner` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `position` varchar(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_banner`
--

INSERT INTO `table_banner` (`id`, `ten_vi`, `ten_en`, `photo`, `thumb`, `alt`, `link`, `position`, `width`, `height`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(3, '', '', 'adsleft_1411376179.png', '', '', '', 'left', 0, 0, 1, 0, 1410940411, 1411376211),
(5, '', '', 'bannerright_1412147990.gif', '', 'Hp Elitebook 840G1', '', 'right', 0, 0, 1, 0, 1410940487, 1420553056);

-- --------------------------------------------------------

--
-- Table structure for table `table_blog`
--

CREATE TABLE `table_blog` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_blog`
--

INSERT INTO `table_blog` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(1, 1, 'aliquam-dapibus-tincidunt-metus-praesent-justo-dolor-lobortis-quis-lobortis-dignissim-pulvinar-ac-lorem', 'ALIQUAM DAPIBUS TINCIDUNT METUS. PRAESENT JUSTO DOLOR, LOBORTIS QUIS, LOBORTIS DIGNISSIM, PULVINAR AC, LOREM.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec...', '<p><span style="color:rgb(59, 59, 59); font-family:roboto; font-size:14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec...</span></p>\r\n', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', '', '', '', '', '', '', 'img11_1443404904.jpg', 'depositphotos26480483original600x380_1432965106600x380_600x380.jpg', 'img11_1443404904338x268_338x268.jpg', 'img11_1443404904900x444_900x444.jpg', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 1, 1, 0, 0, 1432965107, 1443404904, 10),
(2, 1, 'praesent-vestibulum-aenean-noummy-endrerit-mauris-cum-sociis-natoque-penatibus-et-magnis-dis-parturient-montes-ascetur-ridiculus-mus-null-dui', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec...', '<p><span style="color:rgb(59, 59, 59); font-family:roboto; font-size:14px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec...</span></p>\r\n', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', '', '', '', '', '', '', 'img9_1443404927.jpg', 'depositphotos22687061original600x380_1432965552600x380_600x380.jpg', 'img9_1443404927338x268_338x268.jpg', 'img9_1443404927900x444_900x444.jpg', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque penatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui.', 2, 1, 0, 0, 1432965552, 1443404927, 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_blog_list`
--

CREATE TABLE `table_blog_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_menu` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_tab` int(11) NOT NULL,
  `shows_all` int(11) NOT NULL,
  `shows_right` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_blog_list`
--

INSERT INTO `table_blog_list` (`id`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `shows_menu`, `shows_index`, `shows_tab`, `shows_all`, `shows_right`, `date_create`, `date_update`) VALUES
(1, 'tin-tuc', 'Tin tức', '', '', 'Tin tức', 'Cupcake , bánh kem, bánh sinh nhật', 'Cupcake , bánh kem, bánh sinh nhật', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 0, 0, 1, 1443233473, 1447718572),
(2, 'category-blog-2', 'Category Blog 2', '', '', 'Category Blog 2', 'Category Blog 2', 'Category Blog 2', '', '', '', '', '', '', '', '', '', 2, 1, 0, 0, 0, 0, 1, 1443233495, 1443233495),
(3, 'category-blog-3', 'Category Blog 3', '', '', 'Category Blog 3', 'Category Blog 3', 'Category Blog 3', '', '', '', '', '', '', '', '', '', 3, 1, 0, 0, 0, 0, 1, 1443233510, 1443233510);

-- --------------------------------------------------------

--
-- Table structure for table `table_city`
--

CREATE TABLE `table_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(50) NOT NULL,
  `tenkodau` varchar(255) NOT NULL,
  `numberic` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `shows` int(11) NOT NULL DEFAULT '1',
  `date_create` int(11) NOT NULL DEFAULT '0',
  `date_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_city`
--

INSERT INTO `table_city` (`id`, `ten`, `tenkodau`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 'Hồ Chí Minh', 'ho-chi-minh', 30, 1, 1397624188, 1397657036),
(2, 'An Giang', 'an-giang', 1, 1, 1397638017, 1397645831),
(3, 'Bà Rịa - Vũng Tàu', 'ba-ria-vung-tau', 2, 1, 1397638052, 0),
(4, 'Bạc Liêu', 'bac-lieu', 3, 1, 1397638074, 0),
(5, 'Bắc Kạn', 'bac-kan', 4, 1, 1397638124, 0),
(6, 'Bắc Giang', 'bac-giang', 5, 1, 1397638155, 0),
(7, 'Bắc Ninh', 'bac-ninh', 6, 1, 1397638173, 0),
(8, 'Bến Tre', 'ben-tre', 7, 1, 1397638195, 0),
(9, 'Bình Dương', 'binh-duong', 8, 1, 1397638210, 0),
(10, 'Bình Định', 'binh-dinh', 9, 1, 1397638247, 0),
(11, 'Bình Phước', 'binh-phuoc', 10, 1, 1397638300, 0),
(12, 'Bình Thuận', 'binh-thuan', 11, 1, 1397638320, 0),
(13, 'Cà Mau', 'ca-mau', 12, 1, 1397638342, 0),
(14, 'Cao Bằng', 'cao-bang', 13, 1, 1397638378, 0),
(15, 'Cần Thơ', 'can-tho', 14, 1, 1397641202, 0),
(16, 'Đà Nẵng', 'da-nang', 15, 1, 1397641356, 0),
(17, 'Đắk Lắc', 'dak-lac', 16, 1, 1397645243, 1397645262),
(18, 'Đắk Nông', 'dak-nong', 17, 1, 1397645325, 0),
(19, 'Điện Biên', 'dien-bien', 18, 1, 1397645467, 0),
(20, 'Đồng Nai', 'dong-nai', 19, 1, 1397645677, 0),
(21, 'Đồng Tháp', 'dong-thap', 20, 1, 1397645733, 0),
(31, 'Hậu Giang', 'hau-giang', 31, 1, 1397657120, 0),
(22, 'Gia Lai', 'gia-lai', 21, 1, 1397645891, 0),
(23, 'Hà Giang', 'ha-giang', 22, 1, 1397656761, 0),
(24, 'Hà Nam', 'ha-nam', 23, 1, 1397656807, 1397656828),
(25, 'Hà Nội', 'ha-noi', 24, 1, 1397656819, 0),
(26, 'Hà Tây', 'ha-tay', 25, 1, 1397656897, 1397656906),
(27, 'Hà Tĩnh', 'ha-tinh', 26, 1, 1397656937, 0),
(28, 'Hải Dương', 'hai-duong', 27, 1, 1397656955, 0),
(29, 'Hải Phòng', 'hai-phong', 28, 1, 1397656973, 0),
(30, 'Hòa Bình', 'hoa-binh', 29, 1, 1397657026, 1397839544),
(32, 'Hưng Yên', 'hung-yen', 32, 1, 1397657147, 0),
(33, 'Khánh Hòa', 'khanh-hoa', 33, 1, 1397657168, 0),
(34, 'Kiên Giang', 'kien-giang', 34, 1, 1397657288, 0),
(35, 'Kon Tum', 'kon-tum', 35, 1, 1397657301, 0),
(36, 'Lai Châu', 'lai-chau', 36, 1, 1397657326, 0),
(37, 'Lào Cai', 'lao-cai', 37, 1, 1397657348, 0),
(38, 'Lạng Sơn', 'lang-son', 38, 1, 1397657361, 0),
(39, 'Lâm Đồng', 'lam-dong', 39, 1, 1397657391, 0),
(40, 'Long An', 'long-an', 40, 1, 1397657416, 0),
(41, 'Nam Định', 'nam-dinh', 41, 1, 1397657433, 0),
(42, 'Nghệ An', 'nghe-an', 42, 1, 1397657451, 0),
(43, 'Ninh Bình', 'ninh-binh', 43, 1, 1397657504, 1397657510),
(44, 'Ninh Thuận', 'ninh-thuan', 44, 1, 1397657520, 0),
(45, 'Phú Thọ', 'phu-tho', 45, 1, 1397657613, 0),
(46, 'Phú Yên', 'phu-yen', 46, 1, 1397657688, 0),
(47, 'Quảng Bình', 'quang-binh', 47, 1, 1397657805, 1397657843),
(48, 'Quảng Nam', 'quang-nam', 48, 1, 1397657835, 0),
(49, 'Quảng Ngãi', 'quang-ngai', 49, 1, 1397657889, 0),
(50, 'Quảng Ninh', 'quang-ninh', 50, 1, 1397657916, 0),
(51, 'Quảng Trị', 'quang-tri', 51, 1, 1397657954, 0),
(52, 'Sóc Trăng', 'soc-trang', 52, 1, 1397657969, 0),
(53, 'Sơn La', 'son-la', 53, 1, 1397658003, 0),
(54, 'Tây Ninh ', 'tay-ninh', 54, 1, 1397658024, 0),
(55, 'Thái Bình', 'thai-binh', 55, 1, 1397658044, 0),
(56, 'Thái Nguyên', 'thai-nguyen', 56, 1, 1397658074, 0),
(57, 'Thanh Hóa', 'thanh-hoa', 57, 1, 1397658104, 0),
(58, 'Thừa Thiên Huế', 'thua-thien-hue', 58, 1, 1397658167, 0),
(59, 'Tiền Giang', 'tien-giang', 59, 1, 1397658198, 0),
(60, 'Trà Vinh', 'tra-vinh', 60, 1, 1397658209, 0),
(61, 'Tuyên Quang', 'tuyen-quang', 61, 1, 1397658241, 0),
(62, 'Vĩnh Long', 'vinh-long', 62, 1, 1397658264, 0),
(63, 'Vĩnh Phúc', 'vinh-phuc', 63, 1, 1397658285, 0),
(64, 'Yên Bái', 'yen-bai', 64, 1, 1397658405, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_contact`
--

CREATE TABLE `table_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` longtext NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_contact`
--

INSERT INTO `table_contact` (`id`, `noidung`, `title`, `keywords`, `description`) VALUES
(10, '<p>noi dung</p>\r\n', 'Title', 'Keywords', 'Description');

-- --------------------------------------------------------

--
-- Table structure for table `table_counter`
--

CREATE TABLE `table_counter` (
  `id` int(11) NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_counter`
--

INSERT INTO `table_counter` (`id`, `tm`, `ip`) VALUES
(1, 1532493663, '::1'),
(2, 1532615524, '::1'),
(3, 1532619812, '::1'),
(4, 1532620762, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `table_courses`
--

CREATE TABLE `table_courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_courses`
--

INSERT INTO `table_courses` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(1, 0, 'cac-mon-an-salad', 'CÁC MÓN ĂN SALAD', '', '<p><span dir="ltr">Iceberg Salad with Blue Cheese Dressing.</span></p>\r\n<p><span dir="ltr"><img style="height: 480px; width: 640px;" src="http://localhost/upload/images/Iceberg%20salad%201%20(FILEminimizer).jpg" alt="" /></span></p>\r\n<p><span dir="ltr">Blue Cheese Dressing Salad- How to Make the Best Creamy Blue Cheese Dr.</span></p>\r\n<p><span dir="ltr"><img style="height: 612px; width: 816px;" src="http://localhost/upload/images/Thai%20beef%20salad%20(FILEminimizer).JPG" alt="" /></span></p>\r\n<p><span dir="ltr">M&oacute;n Salad M&igrave; &Yacute; Với Gi&ograve; Thủ.</span></p>\r\n<p><span dir="ltr"><img style="height: 768px; width: 1365px;" src="http://localhost/upload/images/DSCN4894%20(FILEminimizer).JPG" alt="" /></span></p>\r\n<p><span dir="ltr">M&oacute;n Salad Rau Củ Trộn Xốt Mayonnaise.</span></p>\r\n<p><span dir="ltr"><img style="height: 768px; width: 1152px;" src="http://localhost/upload/images/shrimp-salad-1365691744Ksv%20(FILEminimizer).jpg" alt="" /></span></p>\r\n<p>&nbsp;</p>', 'CÁC MÓN ĂN SALAD', 'CÁC MÓN ĂN SALAD', 'CÁC MÓN ĂN SALAD', '', '', '', '', '', '', 'cacmonansalad_1450791147.jpg', 'cacmonansalad_145079114773x73_73x73.jpg', 'cacmonansalad_1450791148268x268_268x268.jpg', 'cacmonansalad_1450791148500x500_500x500.jpg', 'CÁC MÓN ĂN SALAD', 1, 1, 0, 0, 1432958875, 1450791148, 379),
(2, 0, 'mon-an-tu-cu-cai-do', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', '<p><img style="height: 460px; width: 614px;" src="http://localhost/upload/images/radish-and-avocado-salad-mexico%20(FILEminimizer).jpg" alt="" /></p>\r\n<p>Butter radishes.</p>\r\n<p><img style="height: 400px; width: 316px;" src="http://localhost/upload/images/iceberg%20(FILEminimizer).JPG" alt="" /></p>\r\n<p>&nbsp;</p>', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', '', '', '', '', '', '', 'monantucucaido_1450791270.jpg', 'monantucucaido_145079127073x73_73x73.jpg', 'monantucucaido_1450791272268x268_268x268.jpg', 'monantucucaido_1450791274500x500_500x500.jpg', 'MÓN ĂN TỪ CỦ CẢI ĐỎ', 1, 1, 0, 1, 1432958965, 1450791277, 1321),
(3, 0, 'sup-tay-bi-do', 'SÚP TÂY BÍ ĐỎ', 'SÚP TÂY BÍ ĐỎ', '<p>S&uacute;p khoai t&acirc;y b&iacute; đỏ cho b&eacute;</p>\r\n<p>C&aacute;ch nấu s&uacute;p b&iacute; đỏ kh&aacute; đơn giản, mặc d&ugrave; nguy&ecirc;n liệu c&oacute; vẻ cầu k&igrave; &ndash; đ&acirc;y l&agrave; một m&oacute;n ăn rất thơm ngon.<br /> Nguy&ecirc;n liệu nấu m&oacute;n s&uacute;p khoai t&acirc;y b&iacute; đỏ cho b&eacute;: (cho 5-6 người ăn)<br /> - 900g b&iacute; đỏ gọt vỏ, th&aacute;i miếng vu&ocirc;ng<br /> - 3 củ khoai t&acirc;y, gọt vỏ, th&aacute;i khối vu&ocirc;ng<br /> - 1 củ h&agrave;nh t&acirc;y, th&aacute;i nhỏ<br /> - 2 que cần t&acirc;y, th&aacute;i nhỏ<br /> - 850g nước d&ugrave;ng g&agrave;<br /> - 2 th&igrave;a bơ,<br /> - 1 l&aacute; bay leaf (l&aacute; nguyệt quế &ndash; tạo m&ugrave;i thơm cho m&oacute;n s&uacute;p)<br /> - muối, đường<br /> - bột gừng, bột nghệ, bột quế<br /> - 355ml sữa tươi &iacute;t b&eacute;o<br /> C&aacute;ch nấu s&uacute;p khoai t&acirc;y b&iacute; đỏ:<br /> - X&agrave;o h&agrave;nh t&acirc;y v&agrave; cần t&acirc;y với bơ đến khi ch&iacute;n mềm. Cho nước d&ugrave;ng g&agrave;, đường, l&aacute; bay, muối, bột gừng, nghệ v&agrave; quế v&agrave;o, quấy đều. Sau đ&oacute; bỏ b&iacute; đỏ v&agrave; khoai t&acirc;y v&agrave;o, nấu s&ocirc;i rồi giảm nhiệt, hầm khoảng 15-20 ph&uacute;t đến khi b&iacute; v&agrave; khoai mềm.<br /> - Tắt bếp, để nguội bớt, gắp bỏ l&aacute; bay. Cho hỗn hợp v&agrave;o m&aacute;y sinh tố xay nhuyễn rồi đổ lại nồi. Cho sữa tươi v&agrave;o, quấy đều v&agrave; đun cho n&oacute;ng trở lại l&agrave; được.</p>', 'SÚP TÂY BÍ ĐỎ', 'SÚP TÂY BÍ ĐỎ', 'SÚP TÂY BÍ ĐỎ', '', '', '', '', '', '', 'suptaybido_1450791252.jpg', 'suptaybido_145079125273x73_73x73.jpg', 'suptaybido_1450791252268x268_268x268.jpg', 'suptaybido_1450791252500x500_500x500.jpg', 'SÚP TÂY BÍ ĐỎ', 1, 1, 0, 0, 1432959025, 1450791252, 295),
(4, 0, 'sup-khoai-tay-dau-ha-lan', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', '<p>S&uacute;p khoai t&acirc;y đậu H&agrave; Lan cho b&eacute;</p>\r\n<p>Đ&acirc;y l&agrave; m&oacute;n s&uacute;p dễ thực hiện, gi&agrave;u vitamin v&agrave; c&aacute;c dưỡng chất kh&aacute;c.<br /> Lưu &yacute;: Trong hướng dẫn n&agrave;y c&oacute; cho ti&ecirc;u v&agrave;o s&uacute;p, tuy nhi&ecirc;n nếu bạn nấu cho trẻ nhỏ th&igrave; kh&ocirc;ng cho ti&ecirc;u v&agrave; giảm bớt lượng tỏi.<br /> Nguy&ecirc;n liệu l&agrave;m m&oacute;n s&uacute;p khoai t&acirc;y đậu H&agrave; Lan<br /> 4 t&eacute;p tỏi bằm<br /> 2 th&igrave;a dầu oliu<br /> &frac12; ch&eacute;n h&agrave;nh t&acirc;y cắt nhỏ<br /> 2 củ khoai t&acirc;y ruột v&agrave;ng, gọt vỏ, cắt 4<br /> 2 t&ocirc; nước d&ugrave;ng<br /> 1 c&acirc;y th&igrave; l&agrave; nguy&ecirc;n củ, x&eacute; sợi<br /> 1 ch&eacute;n tr&aacute;i đậu h&agrave; lan non<br /> &frac12; th&igrave;a muối, ti&ecirc;u<br /> Sữa chua (t&ugrave;y th&iacute;ch)<br /> C&aacute;ch l&agrave;m s&uacute;p khoai t&acirc;y đậu h&agrave; lan:<br /> 1. X&agrave;o tỏi với dầu cho thơm, th&ecirc;m th&agrave;nh t&acirc;y v&agrave;o x&agrave;o mềm. Sau đ&oacute;, cho khoai t&acirc;y, nước d&ugrave;ng v&agrave;o đun s&ocirc;i, ch&acirc;m th&ecirc;m nước khi cần. Đun nhỏ lửa trong 18 ph&uacute;t cho khoai mềm.<br /> 2. Xay hỗn hợp s&uacute;p tr&ecirc;n cho mịn, tr&uacute;t trở lại nồi. Th&ecirc;m th&igrave; l&agrave; v&agrave; đậu v&agrave;o đun s&ocirc;i, hạ nhiệt, mở nắp, hầm trong 3 ph&uacute;t.<br /> 3. N&ecirc;m gia vị với ti&ecirc;u v&agrave; muối. M&uacute;c ra t&ocirc;, rắc th&ecirc;m th&igrave; l&agrave;, v&agrave; sữa chua.</p>', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', '', '', '', '', '', '', 'supkhoaitaydauhalan_1450791235.jpg', 'supkhoaitaydauhalan_145079123573x73_73x73.jpg', 'supkhoaitaydauhalan_1450791235268x268_268x268.jpg', 'supkhoaitaydauhalan_1450791236500x500_500x500.jpg', 'SÚP KHOAI TÂY ĐẬU HÀ LAN', 1, 1, 0, 0, 1432959119, 1450791236, 588),
(5, 0, 'canh-kho-hoa-nhoi-ca-thac-lac', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', '<p><strong>Canh khổ qua dồn c&aacute; th&aacute;c l&aacute;c</strong></p>\r\n<p>M&oacute;n ăn l&agrave; sự pha trộn giữa hai hương vị, vị đắng đặc trưng của khổ qua lẫn trong c&aacute;i vị ngọt thanh của c&aacute; th&aacute;c l&aacute;c rất dễ chịu.</p>\r\n<p><strong>Nguy&ecirc;n liệu</strong>:</p>\r\n<p>- 3 tr&aacute;i khổ qua sống (khoảng 200-250g), 200g chả c&aacute; th&aacute;c l&aacute;c l&agrave;m sẵn.</p>\r\n<p>- H&agrave;nh l&aacute;, ti&ecirc;u, muối, hạt n&ecirc;m, đường...</p>\r\n<p>C&aacute;ch chế biến:</p>\r\n<p>- H&agrave;nh l&aacute; rửa sạch, th&aacute;i nhỏ. Trộn chả c&aacute; th&aacute;c l&aacute;c với một &iacute;t ti&ecirc;u, muối, đường, hạt n&ecirc;m, h&agrave;nh l&aacute; đ&atilde; th&aacute;i. D&ugrave;ng th&igrave;a lớn đ&aacute;nh thật nhuyễn.</p>\r\n<p>- Khổ qua cắt l&agrave;m đ&ocirc;i, bỏ hết ruột. Nhồi chả c&aacute; th&aacute;c l&aacute;c v&agrave;o trong từng phần khổ qua l&agrave; xong.</p>\r\n<p>- Đặt nồi l&ecirc;n bếp, phi thơm dầu ăn với h&agrave;nh t&iacute;m, cho nước v&agrave;o đun s&ocirc;i, sau đ&oacute; cho tiếp khổ qua v&agrave;o. Đun tiếp đến khi khổ qua ch&iacute;n, n&ecirc;m lại gia vị cho nước d&ugrave;ng vừa ăn. M&uacute;c khổ qua ra b&aacute;t, cho v&agrave;o một &iacute;t ng&ograve; r&iacute; v&agrave; h&agrave;nh l&aacute; để m&oacute;n ăn vừa đẹp mắt vừa thơm.</p>', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', '', '', '', '', '', '', 'canhkhoquanhoicathaclac_1450791218.jpg', 'canhkhoquanhoicathaclac_145079121873x73_73x73.jpg', 'canhkhoquanhoicathaclac_1450791218268x268_268x268.jpg', 'canhkhoquanhoicathaclac_1450791219500x500_500x500.jpg', 'CANH KHỔ HOA NHỒI CÁ THÁC LÁC', 1, 1, 0, 0, 1432959188, 1450791219, 321),
(6, 0, 'canh-cai-xanh-nau-bap-bo', 'CANH CẢI XANH NẤU BẮP BÒ', 'CANH CẢI XANH NẤU BẮP BÒ', '<p><strong>Canh cải xanh nấu bắp b&ograve;</strong></p>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n\r\n<p><strong><u>Nguy&ecirc;n liệu</u></strong></p>\r\n\r\n<p>100g bắp b&ograve;, 300g cải xanh con, 1 nh&aacute;nh gừng nhỏ, 1/2 th&igrave;a s&uacute;p h&agrave;nh t&iacute;m băm, 1 th&igrave;a c&agrave; ph&ecirc; muối, 1 th&igrave;a c&agrave; ph&ecirc; hạt n&ecirc;m, 1/2 th&igrave;a s&uacute;p nước mắm, 1/4 th&igrave;a c&agrave; ph&ecirc; ti&ecirc;u, 1 th&igrave;a s&uacute;p dầu ăn</p>\r\n\r\n<p><strong><u>Thực hiện</u></strong></p>\r\n\r\n<p>1 Bắp b&ograve; rửa sạch, xắt l&aacute;t mỏng, ướp với nước mắm, để 10 ph&uacute;t cho thấm</p>\r\n\r\n<p>2 Cải xanh con nhặt l&aacute; &uacute;a, bỏ gốc, xắt kh&uacute;c vừa ăn</p>\r\n\r\n<p>3 Gừng gọt vỏ, xắt chỉ</p>\r\n\r\n<p>4 Phi thơm h&agrave;nh t&iacute;m băm, cho bắp b&ograve; v&agrave;o x&agrave;o săn, chế v&agrave;o 400ml nước, dun s&ocirc;i khoảng 10 ph&uacute;t, cho cải xanh v&agrave;o nấu vừa s&ocirc;i, n&ecirc;m muối, hạt n&ecirc;m cho vừa ăn, cho gừng v&agrave; ti&ecirc;u v&agrave;o đảo đều</p>\r\n\r\n<p>5 M&uacute;c canh ra b&aacute;t, d&ugrave;ng n&oacute;ng trong bữa cơm.</p>\r\n', 'CANH CẢI XANH NẤU BẮP BÒ', 'CANH CẢI XANH NẤU BẮP BÒ', 'CANH CẢI XANH NẤU BẮP BÒ', '', '', '', '', '', '', 'canhcaixanhnaubapbo_1449791738.jpg', 'canhcaixanhnaubapbo_144979173873x73_73x73.jpg', 'canhcaixanhnaubapbo_1449791738268x268_268x268.jpg', 'canhcaixanhnaubapbo_1449791738500x500_500x500.jpg', 'CANH CẢI XANH NẤU BẮP BÒ', 1, 1, 0, 1, 1432959240, 1449791738, 582),
(7, 0, 'canh-kho-hoa-don-thit', 'CANH KHỔ HOA DỒN THỊT', 'CANH KHỔ HOA DỒN THỊT', '<p><strong>Canh khổ qua dồn thịt</strong>:</p>\r\n<div style="clear: both;">&nbsp;</div>\r\n<p><strong>Nguy&ecirc;n liệu</strong>:</p>\r\n<p>- 2 quả khổ qua, 200g gi&ograve; sống, c&oacute; thể d&ugrave;ng thịt nạc xay.</p>\r\n<p>- V&agrave;i tai mộc nhĩ, 1 lọn miến nhỏ, muối, hạt n&ecirc;m, h&agrave;nh l&aacute; v&agrave; ti&ecirc;u.</p>\r\n<p>chế biến:</p>\r\n<p>- Khổ qua cắt l&agrave;m đ&ocirc;i. D&ugrave;ng mũi dao nhỏ kho&eacute;t bỏ phần hột. Rửa sạch, để r&aacute;o nước.</p>\r\n<p>- Bỏ thịt, nấm m&egrave;o, h&agrave;nh hương phi, dầu m&egrave;, l&ograve;ng trắng trứng g&agrave;, một t&iacute; muối, ti&ecirc;u v&agrave;o m&aacute;y xay nhỏ v&agrave; trộn đều hỗn hợp. D&ugrave;ng một muỗng nhỏ m&uacute;c hỗn hợp nh&eacute;t v&agrave;o ruột khổ qua.</p>\r\n<p>- Bắt nồi nước c&oacute; cho v&agrave;o một t&iacute; muối l&ecirc;n bếp (đừng nhiều qu&aacute; canh sẽ bị mặn). Nước s&ocirc;i to, cho khổ qua nhồi thịt v&agrave;o. Để lửa to cho nước l&uacute;c n&agrave;o cũng s&ocirc;i phủ l&ecirc;n mặt tr&aacute;i khổ qua để giữ được nguy&ecirc;n m&agrave;u xanh của khổ qua.</p>', 'CANH KHỔ HOA DỒN THỊT', 'CANH KHỔ HOA DỒN THỊT', 'CANH KHỔ HOA DỒN THỊT', '', '', '', '', '', '', 'canhkhoquadonthit_1450791200.jpg', 'canhkhoquadonthit_145079120073x73_73x73.jpg', 'canhkhoquadonthit_1450791200268x268_268x268.jpg', 'canhkhoquadonthit_1450791201500x500_500x500.jpg', 'CANH KHỔ HOA DỒN THỊT', 1, 1, 0, 0, 1432959290, 1450791201, 367),
(8, 0, 'kho-hoa-xao-tom', 'KHỔ HOA XÀO TÔM', 'KHỔ HOA XÀO TÔM', '<p><strong>Khổ qua x&agrave;o t&ocirc;m</strong></p>\r\n<p>M&oacute;n ăn l&agrave; sự kết hợp giữa vị đắng của khổ qua v&agrave; vị ngọt của t&ocirc;m.</p>\r\n<div style="clear: both;">&nbsp;</div>\r\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n<p>- 2-3 quả khổ qua, 200g t&ocirc;m.</p>\r\n<p>- Tỏi nghiền n&aacute;t, nước mắm, hạt n&ecirc;m, dầu ăn.</p>\r\n<p>C&aacute;ch chế biến:</p>\r\n<p>- Khổ qua rửa sạch, bổ dọc, bỏ hết m&agrave;ng trắng cho bớt đắng. Sau đ&oacute; cắt th&agrave;nh từng miếng vừa ăn v&agrave; chần sơ qua nước s&ocirc;i.</p>\r\n<p>- T&ocirc;m b&oacute;c vỏ, ướp với ch&uacute;t nước mắm v&agrave; hạt n&ecirc;m. Đun n&oacute;ng dầu, phi thơm tỏi, cho t&ocirc;m v&agrave;o đảo săn, m&uacute;c ra đĩa.</p>\r\n<p>- Đổ th&ecirc;m ch&uacute;t dầu v&agrave;o chảo, x&agrave;o khổ qua. Khi gần ch&iacute;n, đổ t&ocirc;m v&agrave;o x&agrave;o lẫn, n&ecirc;m gia vị cho vừa miệng.</p>', 'KHỔ HOA XÀO TÔM', 'KHỔ HOA XÀO TÔM', 'KHỔ HOA XÀO TÔM', '', '', '', '', '', '', 'khoquaxaotom_1450791181.jpg', 'khoquaxaotom_145079118173x73_73x73.jpg', 'khoquaxaotom_1450791181268x268_268x268.jpg', 'khoquaxaotom_1450791182500x500_500x500.jpg', 'KHỔ HOA XÀO TÔM', 1, 1, 0, 1, 1432959325, 1450791182, 497),
(9, 0, 'lau-ca-thac-lac-kho-qua', 'LẪU CÁ THÁC LÁC KHỔ QUA', 'LẪU CÁ THÁC LÁC KHỔ QUA', '<p>&nbsp;<strong>Lẩu c&aacute; th&aacute;c l&aacute;c khổ qua</strong></p>\r\n<p>M&oacute;n ăn đơn giản nhưng hương vị thơm ngon kh&ocirc;ng thể ch&ecirc; được.</p>\r\n<div style="clear: both;">&nbsp;</div>\r\n<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n<p>- 500g b&uacute;n tươi, 300g c&aacute; th&aacute;c l&aacute;c, 500g xương heo.</p>\r\n<p>- 4 tr&aacute;i khổ qua, 1 tr&aacute;i ớt sừng, gia vị gồm bột n&ecirc;m, mắm, ti&ecirc;u, h&agrave;nh, ng&ograve;, rau thơm&hellip;</p>\r\n<p>C&aacute;ch chế biến:</p>\r\n<p>- Xương nấu s&ocirc;i, lọc lấy nước d&ugrave;ng.</p>\r\n<p>- C&aacute; th&aacute;c l&aacute;c quết nhuyễn, n&ecirc;m &iacute;t muối, h&agrave;nh ng&ograve;, hạt n&ecirc;m, vo vi&ecirc;n tr&ograve;n.</p>\r\n<p>- Khổ qua rửa sạch, cắt đ&ocirc;i, bổ ruột, th&aacute;i mỏng. Rau thơm rửa sạch, nhặt l&aacute; s&acirc;u, h&agrave;nh ng&ograve; xắt nhuyễn. Ớt xắt l&aacute;t mỏng.</p>\r\n<p>- Bắc bếp, đun s&ocirc;i nước d&ugrave;ng, cho c&aacute; th&aacute;c l&aacute;c v&agrave;o, nấu s&ocirc;i, n&ecirc;m gia vị. Đổ khổ qua v&agrave;o, chờ nước s&ocirc;i b&ugrave;ng th&igrave; n&ecirc;m lại lần nữa vừa ăn. Cho h&agrave;nh ng&ograve; v&agrave; ớt xắt v&agrave;o, rắc ti&ecirc;u l&ecirc;n.</p>\r\n<p>M&oacute;n n&agrave;y d&ugrave;ng n&oacute;ng với b&uacute;n, rau thơm, chấm nước mắm v&agrave; ớt xắt rất ngon.</p>', 'LẪU CÁ THÁC LÁC KHỔ QUA', 'LẪU CÁ THÁC LÁC KHỔ QUA', 'LẪU CÁ THÁC LÁC KHỔ QUA', '', '', '', '', '', '', 'laucathaclackhoqua_1450791164.jpg', 'laucathaclackhoqua_145079116473x73_73x73.jpg', 'laucathaclackhoqua_1450791164268x268_268x268.jpg', 'laucathaclackhoqua_1450791164500x500_500x500.jpg', 'LẪU CÁ THÁC LÁC KHỔ QUA', 1, 1, 0, 1, 1432959361, 1450791165, 580),
(10, 0, 'cong-cai-tron-tom-thit', 'CỌNG CẢI TRỘN TÔM THỊT', 'CỌNG CẢI TRỘN TÔM THỊT', '<p><strong>Cọng cải trộn t&ocirc;m thịt</strong></p>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n\r\n<p><strong><u>Nguy&ecirc;n liệu</u></strong></p>\r\n\r\n<p>150g thịt ba rọi, 150g t&ocirc;m s&uacute;, 300g cải xanh</p>\r\n\r\n<p>Nước mắm trộn: H&ograve;a tan 1 th&igrave;a c&agrave; ph&ecirc; tỏi băm + 1/2 th&igrave;a c&agrave; ph&ecirc; ớt băm + 1 th&igrave;a s&uacute;p nước mắm + 1 th&igrave;a s&uacute;p đường + 1/2 th&igrave;a s&uacute;p nước cốt chanh</p>\r\n\r\n<p><strong><u>Thực hiện</u></strong></p>\r\n\r\n<p>1 Thịt ba rọi rửa sạch, luộc ch&iacute;n, xắt l&aacute;t mỏng. T&ocirc;m s&uacute; luộc ch&iacute;n, b&oacute;c n&otilde;n vỏ, chẻ đ&ocirc;i.</p>\r\n\r\n<p>2 Cải bẹ xanh t&aacute;ch từng bẹ, rửa sạch, lấy phần cọng, xắt l&aacute;t x&eacute;o mỏng, cho v&agrave;o ngăn m&aacute;t tủ lạnh 15 ph&uacute;t.</p>\r\n\r\n<p>3 Khi ăn lấy cải trộn đều với thịt, t&ocirc;m v&agrave; nước mắm trộn, d&ugrave;ng ngay rất gi&ograve;n.</p>\r\n', 'CỌNG CẢI TRỘN TÔM THỊT', 'CỌNG CẢI TRỘN TÔM THỊT', 'CỌNG CẢI TRỘN TÔM THỊT', '', '', '', '', '', '', 'congcaitrontomthit_1450790774.jpg', 'congcaitrontomthit_145079077473x73_73x73.jpg', 'congcaitrontomthit_1450790774268x268_268x268.jpg', 'congcaitrontomthit_1450790774500x500_500x500.jpg', 'CỌNG CẢI TRỘN TÔM THỊT', 1, 1, 0, 0, 1449654399, 1450790775, 371),
(12, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 1491618974, 1491618974, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_courses_list`
--

CREATE TABLE `table_courses_list` (
  `tenkodau` varchar(1024) NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_menu` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_tab` int(11) NOT NULL,
  `shows_all` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_custome`
--

CREATE TABLE `table_custome` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `position` varchar(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_custome`
--

INSERT INTO `table_custome` (`id`, `ten_vi`, `ten_en`, `photo`, `thumb`, `alt`, `link`, `position`, `width`, `height`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 'Netzif', '', 'imgdoitac_1414729584.jpg', '', 'netzif', 'http://google.com/', '', 0, 0, 1, 1, 1411716346, 1414729584),
(2, 'Orlip', '', 'imgdoitac1_1414729639.jpg', '', 'orlip', 'http://google.com/', '', 0, 0, 2, 1, 1411716353, 1414729639),
(3, 'Mezka', '', 'imgdoitac3_1414729738.jpg', '', 'mezka', 'http://google.com/', '', 0, 0, 4, 1, 1411716362, 1414729738),
(4, 'Boolga', '', 'imgdoitac2_1414729663.jpg', '', 'boolga', 'http://google.com/', '', 0, 0, 3, 1, 1411893475, 1414729663),
(5, 'Virgo', '', 'imgdoitac4_1414729770.jpg', '', 'virgo', 'http://google.com/', '', 0, 0, 5, 1, 1411893484, 1414729770);

-- --------------------------------------------------------

--
-- Table structure for table `table_district`
--

CREATE TABLE `table_district` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_city` int(11) NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkodau` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `table_district`
--

INSERT INTO `table_district` (`id`, `id_city`, `ten`, `tenkodau`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(3, 2, 'Thị Xã Châu Đốc', 'thi-xa-chau-doc', 1, 1, 1397658603, 1397658509),
(2, 2, 'Thành Phố  Long Xuyên', 'thanh-pho-long-xuyen', 1, 1, 1397660722, 1397658475),
(4, 2, 'Huyện An Phú', 'huyen-an-phu', 1, 1, 1397658608, 1397658525),
(5, 2, 'Huyện Tân Châu', 'huyen-tan-chau', 1, 1, 1397658612, 1397658549),
(6, 2, 'Huyện Phú Tân', 'huyen-phu-tan', 1, 1, 1397658616, 1397658577),
(7, 2, 'Huyện Tịnh Biên', 'huyen-tinh-bien', 1, 1, 1397658621, 1397658592),
(8, 2, 'Huyên Tri Tôn', 'huyen-tri-ton', 1, 1, 1397658645, 1397658640),
(9, 2, 'Huyện Châu Phú', 'huyen-chau-phu', 1, 1, 0, 1397658654),
(10, 2, 'Huyện Chợ Mới', 'huyen-cho-moi', 1, 1, 0, 1397658673),
(11, 2, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397658682),
(12, 2, 'Huyện Thoại Sơn', 'huyen-thoai-son', 1, 1, 0, 1397658694),
(13, 3, 'Thành Phố Vũng Tàu', 'thanh-pho-vung-tau', 1, 1, 1397660727, 1397660703),
(14, 3, 'Thị Xã Bà Rịa', 'thi-xa-ba-ria', 1, 1, 0, 1397660717),
(15, 3, 'Huyện Xuyên Mộc', 'huyen-xuyen-moc', 1, 1, 0, 1397660748),
(16, 3, 'Huyện Long Điền', 'huyen-long-dien', 1, 1, 0, 1397660759),
(17, 3, 'Huyện Côn Đảo', 'huyen-con-dao', 1, 1, 0, 1397660813),
(18, 3, 'Huyện Tân Thành', 'huyen-tan-thanh', 1, 1, 0, 1397660821),
(19, 3, 'Huyện Châu Đức', 'huyen-chau-duc', 1, 1, 0, 1397660835),
(20, 3, 'Huyện Đất Đỏ', 'huyen-dat-do', 1, 1, 0, 1397660847),
(21, 4, 'Thành Phố Bạc Liêu ', 'thanh-pho-bac-lieu', 1, 1, 0, 1397660871),
(22, 4, 'Huyện Vĩnh Lợi', 'huyen-vinh-loi', 1, 1, 1397660891, 1397660883),
(23, 4, 'Huyện Hông Dân', 'huyen-hong-dan', 1, 1, 0, 1397660915),
(24, 4, 'Huyện Giá Rai', 'huyen-gia-rai', 1, 1, 0, 1397660927),
(25, 4, 'Huyện Phước Long', 'huyen-phuoc-long', 1, 1, 0, 1397660941),
(26, 4, 'Huyện Đông Hải', 'huyen-dong-hai', 1, 1, 0, 1397660949),
(27, 4, 'Huyện Hòa Bình', 'huyen-hoa-binh', 1, 1, 0, 1397660958),
(28, 5, 'Thị Xã Bắc Kạn', 'thi-xa-bac-kan', 1, 1, 1397661005, 1397660997),
(29, 5, 'Huyện Chợ Đồn', 'huyen-cho-don', 1, 1, 1397661549, 1397661016),
(30, 5, 'Huyện Bạch Thông', 'huyen-bach-thong', 1, 1, 0, 1397661037),
(31, 5, 'Huyện Na Rì', 'huyen-na-ri', 1, 1, 0, 1397661046),
(32, 5, 'Huyện Ngân Sơn', 'huyen-ngan-son', 1, 1, 0, 1397661352),
(33, 5, 'Huyện Ba Bể', 'huyen-ba-be', 1, 1, 0, 1397661360),
(34, 5, 'Huyện Chợ Mới', 'huyen-cho-moi', 1, 1, 0, 1397661375),
(35, 5, 'Huyện Pác Nặm', 'huyen-pac-nam', 1, 1, 0, 1397661392),
(36, 6, 'Thành Phố Bắc Giang', 'thanh-pho-bac-giang', 1, 1, 0, 1397661578),
(37, 6, 'Huyện Yên Thế', 'huyen-yen-the', 1, 1, 0, 1397661586),
(38, 6, 'Huyện Sơn Động', 'huyen-son-dong', 1, 1, 0, 1397661601),
(39, 6, 'Huyện Lục Ngạn', 'huyen-luc-ngan', 1, 1, 0, 1397661617),
(40, 6, 'Huyện Lục Nam', 'huyen-luc-nam', 1, 1, 0, 1397661629),
(41, 6, 'Huyện Tân Yên', 'huyen-tan-yen', 1, 1, 1397661662, 1397661639),
(42, 6, 'Huyện Hiệp Hào', 'huyen-hiep-hao', 1, 1, 0, 1397661656),
(43, 6, 'Huyện Lạng Giang', 'huyen-lang-giang', 1, 1, 0, 1397661684),
(44, 6, 'Huyện Việt Yên', 'huyen-viet-yen', 1, 1, 0, 1397661698),
(45, 6, 'Huyện Yên Dũng', 'huyen-yen-dung', 1, 1, 0, 1397661707),
(46, 7, 'Thành Phố Bắc Ninh', 'thanh-pho-bac-ninh', 1, 1, 0, 1397664831),
(47, 7, 'Huyện Yên Phong', 'huyen-yen-phong', 1, 1, 0, 1397664840),
(48, 7, 'Huyện Quế Võ', 'huyen-que-vo', 1, 1, 0, 1397664857),
(49, 7, 'Huyện Tuyên Du', 'huyen-tuyen-du', 1, 1, 0, 1397664866),
(50, 7, 'Thị Xã Từ Sơn', 'thi-xa-tu-son', 1, 1, 0, 1397664891),
(51, 7, 'Huyện Thuần Thành', 'huyen-thuan-thanh', 1, 1, 0, 1397664914),
(52, 7, 'Huyện Gia Bình', 'huyen-gia-binh', 1, 1, 0, 1397664924),
(53, 7, 'Huyện Lương Tài', 'huyen-luong-tai', 1, 1, 0, 1397664933),
(54, 8, 'Thành Phố Bến Tre', 'thanh-pho-ben-tre', 1, 1, 0, 1397664962),
(55, 8, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397664972),
(56, 8, 'Huyện Chợ Lách', 'huyen-cho-lach', 1, 1, 0, 1397664995),
(57, 8, 'Huyện Mỏ Cày Bắc', 'huyen-mo-cay-bac', 1, 1, 0, 1397665010),
(58, 8, 'Huyện Giòng Trôm', 'huyen-giong-trom', 1, 1, 0, 1397665025),
(59, 8, 'Huyện Bình Đại', 'huyen-binh-dai', 1, 1, 0, 1397665038),
(60, 8, 'Huyện Ba Tri', 'huyen-ba-tri', 1, 1, 0, 1397665049),
(61, 8, 'Huyện Thạnh Phú', 'huyen-thanh-phu', 1, 1, 0, 1397665072),
(62, 8, 'Huyện Mỏ Cày Nam', 'huyen-mo-cay-nam', 1, 1, 0, 1397665081),
(63, 8, 'Thị Xã Thủ Dầu Một', 'thi-xa-thu-dau-mot', 1, 1, 0, 1397665116),
(64, 9, 'Huyện Bến Cát', 'huyen-ben-cat', 1, 1, 0, 1397665131),
(65, 9, 'Huyện Tân Uyên', 'huyen-tan-uyen', 1, 1, 0, 1397665142),
(66, 9, 'Huyện Thuận An', 'huyen-thuan-an', 1, 1, 0, 1397665151),
(67, 9, 'Huyện Dĩ An', 'huyen-di-an', 1, 1, 0, 1397665167),
(68, 9, 'Huyện Phú Giáo', 'huyen-phu-giao', 1, 1, 0, 1397665177),
(69, 9, 'Huyện Dầu Tiếng', 'huyen-dau-tieng', 1, 1, 0, 1397665187),
(70, 10, 'Thành Phố Quy Nhơn', 'thanh-pho-quy-nhon', 1, 1, 0, 1397666839),
(71, 10, 'Huyện An Lão', 'huyen-an-lao', 1, 1, 0, 1397666851),
(72, 10, 'Huyện Hoài Ân', 'huyen-hoai-an', 1, 1, 0, 1397666866),
(73, 10, 'Huyện Hoài Nhơn', 'huyen-hoai-nhon', 1, 1, 0, 1397666886),
(74, 10, 'Huyện Phù Mỹ ', 'huyen-phu-my', 1, 1, 0, 1397666898),
(75, 10, 'Huyện Phù Cát', 'huyen-phu-cat', 1, 1, 0, 1397666909),
(76, 10, 'Huyện Vĩnh Thạnh', 'huyen-vinh-thanh', 1, 1, 0, 1397666934),
(77, 10, 'Huyện Tây Sơn', 'huyen-tay-son', 1, 1, 0, 1397666943),
(78, 10, 'Huyện Văn Canh', 'huyen-van-canh', 1, 1, 0, 1397666966),
(79, 10, 'Huyện An Nhơn', 'huyen-an-nhon', 1, 1, 0, 1397666981),
(80, 10, 'Huyện Tuy Phước', 'huyen-tuy-phuoc', 1, 1, 0, 1397666995),
(81, 11, 'Thị Xã Đồng Xoài', 'thi-xa-dong-xoai', 1, 1, 0, 1397667072),
(82, 11, 'Huyện Đồng Phú', 'huyen-dong-phu', 1, 1, 0, 1397667083),
(83, 11, 'Huyện Chơn Thành', 'huyen-chon-thanh', 1, 1, 0, 1397667097),
(84, 11, 'Huyện Bình Long', 'huyen-binh-long', 1, 1, 0, 1397667106),
(85, 11, 'Huyện Lộc Ninh', 'huyen-loc-ninh', 1, 1, 0, 1397667126),
(86, 11, 'Huyện Bình Phước', 'huyen-binh-phuoc', 1, 1, 0, 1397667140),
(87, 11, 'Huyện Phước Long', 'huyen-phuoc-long', 1, 1, 0, 1397667154),
(88, 11, 'Huyện Bù Đăng', 'huyen-bu-dang', 1, 1, 0, 1397667169),
(89, 11, 'Huyện Hớn Quản', 'huyen-hon-quan', 1, 1, 0, 1397667186),
(90, 11, 'Huyện Bù Gia Mập', 'huyen-bu-gia-map', 1, 1, 0, 1397667199),
(91, 1, 'Quận Bình Tân', 'quan-binh-tan', 1, 1, 0, 1397667306),
(92, 1, 'Quận Thủ Đức', 'quan-thu-duc', 1, 1, 0, 1397667322),
(93, 1, 'Quận Phú Nhuận', 'quan-phu-nhuan', 1, 1, 0, 1397667339),
(94, 1, 'Quận Bình Thạnh', 'quan-binh-thanh', 1, 1, 0, 1397667350),
(95, 1, 'Quận Tân Phú', 'quan-tan-phu', 1, 1, 0, 1397667367),
(96, 1, 'Quận Tân Bình', 'quan-tan-binh', 1, 1, 0, 1397667376),
(97, 1, 'Quận Gò Vấp', 'quan-go-vap', 1, 1, 0, 1397667386),
(98, 1, 'Quận 12', 'quan-12', 1, 1, 0, 1397667394),
(99, 1, 'Quận 11', 'quan-11', 1, 1, 0, 1397667401),
(100, 1, 'Quận 10', 'quan-10', 1, 1, 0, 1397667407),
(101, 1, 'Quận 9', 'quan-9', 1, 1, 1397667420, 1397667415),
(102, 1, 'Quận 8', 'quan-8', 1, 1, 0, 1397667429),
(103, 1, 'Quận 7', 'quan-7', 1, 1, 0, 1397667435),
(104, 1, 'Quận 6', 'quan-6', 1, 1, 0, 1397667442),
(105, 1, 'Quận 5', 'quan-5', 1, 1, 0, 1397667448),
(106, 1, 'Quận 4', 'quan-4', 1, 1, 0, 1397667456),
(107, 1, 'Quận 3', 'quan-3', 1, 1, 0, 1397667466),
(108, 1, 'Quận 2', 'quan-2', 1, 1, 0, 1397667474),
(109, 1, 'Quận 1', 'quan-1', 1, 1, 0, 1397667481),
(110, 20, 'Huyện Cẩm Mỹ', 'huyen-cam-my', 1, 1, 0, 1397667518),
(111, 20, 'Huyện Trảng Bom', 'huyen-trang-bom', 1, 1, 0, 1397667531),
(112, 20, 'Huyện Nhơn Trạch', 'huyen-nhon-trach', 1, 1, 0, 1397667542),
(113, 20, 'Huyện Long Thành', 'huyen-long-thanh', 1, 1, 0, 1397667557),
(114, 20, 'Huyện Xuân Lộc', 'huyen-xuan-loc', 1, 1, 0, 1397667568),
(115, 20, 'Thị Xã Long Khánh', 'thi-xa-long-khanh', 1, 1, 1397667596, 1397667578),
(116, 20, 'Huyện Thống Nhất', 'huyen-thong-nhat', 1, 1, 0, 1397667611),
(117, 20, 'Huyện Định Quán', 'huyen-dinh-quan', 1, 1, 0, 1397667621),
(118, 20, 'Huyện Tân Phú', 'huyen-tan-phu', 1, 1, 0, 1397667635),
(119, 20, 'Huyện Vĩnh Cửu', 'huyen-vinh-cuu', 1, 1, 0, 1397667651),
(120, 20, 'Thành Phố Biên Hòa', 'thanh-pho-bien-hoa', 1, 1, 0, 1397667661),
(121, 12, 'Thị Xã La Gi', 'thi-xa-la-gi', 1, 1, 0, 1397667694),
(122, 12, 'Huyện Đảo Phú Quý', 'huyen-dao-phu-quy', 1, 1, 0, 1397667708),
(123, 12, 'Huyện Tánh Linh', 'huyen-tanh-linh', 1, 1, 1397667729, 1397667722),
(124, 12, 'Huyện Đức Linh', 'huyen-duc-linh', 1, 1, 0, 1397667739),
(125, 12, 'Huyện Hàm Tân', 'huyen-ham-tan', 1, 1, 0, 1397667764),
(126, 12, 'Huyện Hàm Thuận Nam', 'huyen-ham-thuan-nam', 1, 1, 0, 1397667776),
(127, 12, 'Huyện Hàm Thuận Bắc', 'huyen-ham-thuan-bac', 1, 1, 0, 1397667788),
(128, 12, 'Huyện Bắc Bình', 'huyen-bac-binh', 1, 1, 0, 1397667819),
(129, 12, 'Huyện Tuy Phong', 'huyen-tuy-phong', 1, 1, 0, 1397667834),
(130, 12, 'Thành Phố Phan Thiết', 'thanh-pho-phan-thiet', 1, 1, 0, 1397667848),
(131, 13, 'Huyện Phú Tân', 'huyen-phu-tan', 1, 1, 0, 1397667873),
(132, 13, 'Huyện Năm Căn', 'huyen-nam-can', 1, 1, 0, 1397667883),
(133, 13, 'Huyện Ngọc Hiển', 'huyen-ngoc-hien', 1, 1, 0, 1397667892),
(134, 13, 'Huyện Đầm Dơi', 'huyen-dam-doi', 1, 1, 0, 1397667909),
(135, 13, 'Huyện Cái Nước', 'huyen-cai-nuoc', 1, 1, 0, 1397667923),
(136, 13, 'Huyện Trần Văn Thời', 'huyen-tran-van-thoi', 1, 1, 0, 1397667937),
(137, 13, 'Huyện U Minh', 'huyen-u-minh', 1, 1, 0, 1397667952),
(138, 13, 'Huyện Thới Bình', 'huyen-thoi-binh', 1, 1, 0, 1397667961),
(139, 13, 'Thành Phố Cà Mau', 'thanh-pho-ca-mau', 1, 1, 0, 1397667971),
(140, 14, 'Huyện Phục Hòa', 'huyen-phuc-hoa', 1, 1, 0, 1397668004),
(141, 14, 'Huyện Bảo Lâm', 'huyen-bao-lam', 1, 1, 0, 1397668014),
(142, 14, 'Huyện Hạ Lang', 'huyen-ha-lang', 1, 1, 0, 1397668027),
(143, 14, 'Huyện Thạch An', 'huyen-thach-an', 1, 1, 0, 1397668037),
(144, 14, 'Huyện Quảng Uyên', 'huyen-quang-uyen', 1, 1, 0, 1397668057),
(145, 14, 'Huyện Hòa An', 'huyen-hoa-an', 1, 1, 0, 1397668070),
(146, 14, 'Huyện Nguên Bình', 'huyen-nguen-binh', 1, 1, 0, 1397668079),
(147, 14, 'Huyện Trùng Khánh', 'huyen-trung-khanh', 1, 1, 0, 1397668096),
(148, 14, 'Huyện Trà Lĩnh', 'huyen-tra-linh', 1, 1, 0, 1397668105),
(149, 14, 'Huyện Hà Quảng ', 'huyen-ha-quang', 1, 1, 0, 1397668124),
(150, 14, 'Huyện Thông Nông', 'huyen-thong-nong', 1, 1, 0, 1397668133),
(151, 14, 'Huyện Bảo Lạc', 'huyen-bao-lac', 1, 1, 0, 1397668151),
(152, 14, 'Thị Xã Cao Bằng', 'thi-xa-cao-bang', 1, 1, 0, 1397668165),
(153, 15, 'Huyện Thới Lai', 'huyen-thoi-lai', 1, 1, 0, 1397668193),
(154, 15, 'Quận Thốt Nốt', 'quan-thot-not', 1, 1, 0, 1397668201),
(155, 15, 'Huyện Vĩnh Thạnh', 'huyen-vinh-thanh', 1, 1, 0, 1397668226),
(156, 15, 'Huyện Cờ Đỏ', 'huyen-co-do', 1, 1, 0, 1397668234),
(157, 15, 'Huyện Phong Điền', 'huyen-phong-dien', 1, 1, 0, 1397668245),
(158, 15, 'Quận Ô Môn', 'quan-o-mon', 1, 1, 0, 1397668263),
(159, 15, 'Quận Cái Răng', 'quan-cai-rang', 1, 1, 0, 1397668274),
(160, 15, 'Quận Bình Thủy', 'quan-binh-thuy', 1, 1, 0, 1397668292),
(161, 15, 'Quận Ninh Kiều', 'quan-ninh-kieu', 1, 1, 0, 1397668306),
(162, 16, 'Quận Cẩm Lệ', 'quan-cam-le', 1, 1, 0, 1397668326),
(163, 16, 'Huyện Hòa Vang', 'huyen-hoa-vang', 1, 1, 0, 1397668335),
(164, 16, 'Quận Linh Chiểu', 'quan-linh-chieu', 1, 1, 0, 1397668348),
(165, 16, 'Quận Ngũ Hành Sơn', 'quan-ngu-hanh-son', 1, 1, 0, 1397668362),
(166, 16, 'Quận Sơn Trà', 'quan-son-tra', 1, 1, 0, 1397668376),
(167, 16, 'Quận Thanh Khê', 'quan-thanh-khe', 1, 1, 0, 1397668388),
(168, 16, 'Quận Hải Châu', 'quan-hai-chau', 1, 1, 0, 1397668395),
(169, 17, 'Thị Xã Buôn Hồ', 'thi-xa-buon-ho', 1, 1, 0, 1397668478),
(170, 16, 'Huyện Cư Kuin', 'huyen-cu-kuin', 1, 1, 0, 1397668490),
(171, 17, 'Huyện Buôn Đôn', 'huyen-buon-don', 1, 1, 0, 1397668502),
(172, 17, 'Huyện Lăk', 'huyen-lak', 1, 1, 1397668518, 1397668511),
(173, 17, 'Huyện Krông Bông', 'huyen-krong-bong', 1, 1, 0, 1397668540),
(174, 16, 'Huyện Krông Ana', 'huyen-krong-ana', 1, 1, 0, 1397668564),
(663, 23, 'Huyện Quảng Bình', 'huyen-quang-binh', 1, 1, 0, 1397841112),
(176, 17, 'Huyện Ea Kar', 'huyen-ea-kar', 1, 1, 0, 1397668633),
(177, 17, 'Huyện Krông Pắc', 'huyen-krong-pac', 1, 1, 0, 1397668656),
(178, 17, 'Huyện Cư M''gar', 'huyen-cu-mgar', 1, 1, 0, 1397668675),
(179, 17, 'Huyện Ea Súp', 'huyen-ea-sup', 1, 1, 0, 1397668688),
(180, 17, 'Huyện Krông Năng', 'huyen-krong-nang', 1, 1, 0, 1397668707),
(181, 17, 'Huyện Krông Buk', 'huyen-krong-buk', 1, 1, 0, 1397668725),
(182, 17, 'Huyện Ea H Leo', 'huyen-ea-h-leo', 1, 1, 0, 1397668744),
(183, 17, 'Thành Phố Buôn Mê Thuộc', 'thanh-pho-buon-me-thuoc', 1, 1, 0, 1397668760),
(184, 19, 'Huyện Mường Ăng', 'huyen-muong-ang', 1, 1, 0, 1397668797),
(185, 19, 'Huyện Mường Nhé', 'huyen-muong-nhe', 1, 1, 0, 1397668811),
(186, 19, 'Huyện Điện Biên Đông', 'huyen-dien-bien-dong', 1, 1, 0, 1397668838),
(187, 19, 'Huyện Tủa Chùa', 'huyen-tua-chua', 1, 1, 0, 1397668855),
(188, 19, 'Huyện Mường Chà', 'huyen-muong-cha', 1, 1, 0, 1397668867),
(189, 19, 'Huyện Tuần Giáo', 'huyen-tuan-giao', 1, 1, 1397668899, 1397668889),
(190, 19, 'Huyện Điện Biên', 'huyen-dien-bien', 1, 1, 0, 1397668917),
(191, 19, 'Thị Xã Mường Lay', 'thi-xa-muong-lay', 1, 1, 0, 1397668938),
(192, 19, 'Tp. Điện Biên Phủ', 'tp-dien-bien-phu', 1, 1, 0, 1397668958),
(193, 18, 'Huyện Tuy Đức', 'huyen-tuy-duc', 1, 1, 0, 1397669013),
(194, 18, 'Huyện Đắk GLong', 'huyen-dak-glong', 1, 1, 0, 1397669029),
(195, 18, 'Huyện Krông Nô', 'huyen-krong-no', 1, 1, 0, 1397669054),
(196, 18, 'Huyện Đắk Song', 'huyen-dak-song', 1, 1, 0, 1397669083),
(197, 18, 'Huyện Cư Jút', 'huyen-cu-jut', 1, 1, 0, 1397669101),
(198, 18, 'Huyện Đăk Mil', 'huyen-dak-mil', 1, 1, 0, 1397669113),
(199, 18, 'Huyện Đắk R''Lấp', 'huyen-dak-rlap', 1, 1, 0, 1397669139),
(200, 18, 'Thị Xã Gia Nghĩa', 'thi-xa-gia-nghia', 1, 1, 0, 1397669153),
(201, 21, 'Thị Xã Hồng Ngự', 'thi-xa-hong-ngu', 1, 1, 0, 1397669190),
(202, 21, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397669199),
(203, 21, 'Huyện Lai Vung', 'huyen-lai-vung', 1, 1, 1397669256, 1397669242),
(204, 21, 'Huyện Lấp Vò', 'huyen-lap-vo', 1, 1, 0, 1397669278),
(205, 21, 'Huyện Cao Lãnh', 'huyen-cao-lanh', 1, 1, 0, 1397669292),
(206, 21, 'Huyện Thanh Bình', 'huyen-thanh-binh', 1, 1, 0, 1397669308),
(207, 21, 'Huyện Tam Nông', 'huyen-tam-nong', 1, 1, 0, 1397669324),
(208, 21, 'Huyện Hồng Ngự', 'huyen-hong-ngu', 1, 1, 0, 1397669341),
(209, 21, 'Huyện Tân Hồng ', 'huyen-tan-hong', 1, 1, 0, 1397669358),
(210, 21, 'Thị Xã Sa Đéc', 'thi-xa-sa-dec', 1, 1, 0, 1397669371),
(211, 21, 'Thành Phố Cao Lãnh', 'thanh-pho-cao-lanh', 1, 1, 0, 1397669387),
(215, 25, 'Huyện Thạch Nhất', 'huyen-thach-nhat', 1, 1, 1397669532, 1397669523),
(216, 25, 'Huyện Phú Thọ', 'huyen-phu-tho', 1, 1, 0, 1397669547),
(217, 25, 'Huyện Ba Vì', 'huyen-ba-vi', 1, 1, 0, 1397669561),
(218, 25, 'Thị Xã Sơn Tây', 'thi-xa-son-tay', 1, 1, 0, 1397669580),
(219, 25, 'Quận Hà Đông', 'quan-ha-dong', 1, 1, 0, 1397669598),
(220, 25, 'Huyện Sóc Sơn', 'huyen-soc-son', 1, 1, 0, 1397669622),
(221, 25, 'Huyện Đông Anh', 'huyen-dong-anh', 1, 1, 0, 1397669638),
(222, 25, 'Huyện Gia Lâm', 'huyen-gia-lam', 1, 1, 0, 1397669659),
(223, 25, 'Huyện Thanh Trì', 'huyen-thanh-tri', 1, 1, 0, 1397669675),
(224, 25, 'Huyện Từ Liêm', 'huyen-tu-liem', 1, 1, 0, 1397669697),
(225, 25, 'Quận Long Biên', 'quan-long-bien', 1, 1, 0, 1397669718),
(226, 25, 'Quận Hoàng Mai', 'quan-hoang-mai', 1, 1, 0, 1397669735),
(227, 25, 'Quận Thanh Xuân', 'quan-thanh-xuan', 1, 1, 0, 1397669756),
(228, 25, 'Quận Cầu Giấy', 'quan-cau-giay', 1, 1, 0, 1397669782),
(229, 25, 'Quận Tây Hồ', 'quan-tay-ho', 1, 1, 0, 1397669806),
(230, 25, 'Quận Hoàn Kiếm', 'quan-hoan-kiem', 1, 1, 1397669918, 1397669830),
(231, 25, 'Quận Hai Bà Trưng', 'quan-hai-ba-trung', 1, 1, 0, 1397669849),
(232, 25, 'Quận Hoàn Kiếm', 'quan-hoan-kiem', 1, 1, 0, 1397669870),
(234, 25, 'Quận Ba Đình ', 'quan-ba-dinh', 1, 1, 1397670041, 1397669965),
(235, 62, 'Huyện Bình Tân', 'huyen-binh-tan', 1, 1, 0, 1397670016),
(236, 62, 'Huyện Vũng Liêm ', 'huyen-vung-liem', 1, 1, 0, 1397670032),
(237, 62, 'Huyện Trà Ôn', 'huyen-tra-on', 1, 1, 0, 1397670067),
(238, 62, 'Huyện Tam Bình', 'huyen-tam-binh', 1, 1, 0, 1397670092),
(239, 62, 'Huyện Tam Bình', 'huyen-tam-binh', 1, 1, 0, 1397670116),
(240, 62, 'Huyện Bình Minh', 'huyen-binh-minh', 1, 1, 0, 1397670128),
(241, 62, 'Huyện Manh Thít', 'huyen-manh-thit', 1, 1, 1397670157, 1397670149),
(242, 62, 'Huyện Long Hồ', 'huyen-long-ho', 1, 1, 0, 1397670179),
(243, 62, 'Thành Phố Ving Long', 'thanh-pho-ving-long', 1, 1, 0, 1397670211),
(246, 64, 'Thành phố Yên Bái', 'thanh-pho-yen-bai', 1, 1, 0, 1397697892),
(247, 64, 'Thị xã Nghĩa Lộ', 'thi-xa-nghia-lo', 1, 1, 0, 1397697912),
(248, 64, 'Huyện Yên Bình', 'huyen-yen-binh', 1, 1, 0, 1397697935),
(249, 64, 'Huyện Văn Yên', 'huyen-van-yen', 1, 1, 0, 1397697956),
(250, 64, 'Huyện Lục Yên', 'huyen-luc-yen', 1, 1, 0, 1397698057),
(251, 64, 'Huyện Văn Chấn', 'huyen-van-chan', 1, 1, 0, 1397698074),
(252, 64, 'Huyện Trạm Tấu', 'huyen-tram-tau', 1, 1, 0, 1397698094),
(253, 64, 'Huyện Mù Cang Chải', 'huyen-mu-cang-chai', 1, 1, 0, 1397698112),
(254, 64, 'Huyện Trấn Yên', 'huyen-tran-yen', 1, 1, 0, 1397698148),
(255, 63, 'Thành phố Vĩnh Yên', 'thanh-pho-vinh-yen', 1, 1, 0, 1397698226),
(256, 63, 'Thị xã Phúc Yên', 'thi-xa-phuc-yen', 1, 1, 0, 1397698253),
(257, 63, 'Huyện Bình Xuyên', 'huyen-binh-xuyen', 1, 1, 0, 1397698275),
(258, 63, 'Huyện Lập Thạch', 'huyen-lap-thach', 1, 1, 0, 1397698305),
(259, 63, ' - Huyện Tam Dương', '-huyen-tam-duong', 1, 1, 0, 1397698337),
(260, 63, 'Huyện Tam Đảo', 'huyen-tam-dao', 1, 1, 0, 1397698362),
(261, 63, 'Huyện Vĩnh Tường', 'huyen-vinh-tuong', 1, 1, 0, 1397698385),
(262, 63, 'Huyện Yên Lạc', 'huyen-yen-lac', 1, 1, 0, 1397698411),
(263, 63, 'Huyện Sông Lô', 'huyen-song-lo', 1, 1, 0, 1397698433),
(264, 61, 'Thành phố Tuyên Quang', 'thanh-pho-tuyen-quang', 1, 1, 0, 1397698800),
(265, 61, 'Huyện Chiêm Hóa', 'huyen-chiem-hoa', 1, 1, 0, 1397698830),
(266, 61, 'Huyện Hàm Yên', 'huyen-ham-yen', 1, 1, 0, 1397698853),
(267, 61, 'Huyện Na Hang', 'huyen-na-hang', 1, 1, 0, 1397698876),
(268, 61, 'Huyện Sơn Dương', 'huyen-son-duong', 1, 1, 0, 1397698901),
(269, 61, 'Huyện Yên Sơn', 'huyen-yen-son', 1, 1, 0, 1397698926),
(270, 61, 'Huyện Lâm Bình', 'huyen-lam-binh', 1, 1, 0, 1397698970),
(271, 60, 'Thành phố Trà Vinh', 'thanh-pho-tra-vinh', 1, 1, 0, 1397699247),
(272, 60, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397699271),
(273, 60, 'Huyện Càng Long', 'huyen-cang-long', 1, 1, 0, 1397699292),
(274, 60, 'Huyện Cầu Kè', 'huyen-cau-ke', 1, 1, 0, 1397699314),
(275, 60, 'Huyện Cầu Ngang', 'huyen-cau-ngang', 1, 1, 0, 1397699337),
(276, 59, 'Huyện Tân Phú Đông', 'huyen-tan-phu-dong', 1, 1, 0, 1397708194),
(277, 59, 'Huyện Tân Phước', 'huyen-tan-phuoc', 1, 1, 0, 1397708208),
(278, 59, 'Huyện Gò Công Đông', 'huyen-go-cong-dong', 1, 1, 0, 1397708227),
(279, 59, 'Huyện Gò Công Tây', 'huyen-go-cong-tay', 1, 1, 0, 1397708243),
(280, 59, 'Huyện Chợ Gạo', 'huyen-cho-gao', 1, 1, 0, 1397708259),
(281, 59, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397708299),
(282, 59, 'Huyện Cai Lậy', 'huyen-cai-lay', 1, 1, 0, 1397708318),
(283, 59, 'Huyện Cái Bè', 'huyen-cai-be', 1, 1, 0, 1397708326),
(284, 59, 'Thị Xã Gò Công', 'thi-xa-go-cong', 1, 1, 0, 1397708359),
(285, 59, 'Thành Phố Mỹ Tho', 'thanh-pho-my-tho', 1, 1, 0, 1397708374),
(286, 58, 'Huyện A Lưới', 'huyen-a-luoi', 1, 1, 0, 1397708413),
(287, 58, 'Huyện Nam Đông', 'huyen-nam-dong', 1, 1, 0, 1397708422),
(288, 58, 'Huyện Phú Lộc ', 'huyen-phu-loc', 1, 1, 0, 1397708437),
(289, 58, 'Huyện Phương Thủy', 'huyen-phuong-thuy', 1, 1, 0, 1397708450),
(290, 58, 'Huyện Phú Vang', 'huyen-phu-vang', 1, 1, 0, 1397708460),
(291, 58, 'Huyện Hương Trà', 'huyen-huong-tra', 1, 1, 0, 1397708488),
(292, 58, 'Huyện Quảng Điền', 'huyen-quang-dien', 1, 1, 1397708503, 1397708497),
(293, 58, 'Huyện Phong Điền', 'huyen-phong-dien', 1, 1, 0, 1397708547),
(294, 58, 'Thành Phố Huế', 'thanh-pho-hue', 1, 1, 0, 1397708555),
(295, 57, 'Huyện Nông Cống', 'huyen-nong-cong', 1, 1, 0, 1397708608),
(296, 57, 'Huyện Triệu Sơn', 'huyen-trieu-son', 1, 1, 0, 1397708619),
(297, 57, 'Huyện Triệu Hóa', 'huyen-trieu-hoa', 1, 1, 0, 1397708632),
(298, 57, 'Huyện Vĩnh Lộc', 'huyen-vinh-loc', 1, 1, 0, 1397708744),
(299, 57, 'Huyện Thọ Xuân', 'huyen-tho-xuan', 1, 1, 0, 1397708771),
(300, 57, 'Huyện Cẩm Thủy', 'huyen-cam-thuy', 1, 1, 0, 1397708794),
(301, 57, 'Huyện Thạch Thành', 'huyen-thach-thanh', 1, 1, 0, 1397708811),
(302, 57, 'Huyện Ngọc Lặc', 'huyen-ngoc-lac', 1, 1, 0, 1397708872),
(303, 57, 'Huyện Lanh Chánh', 'huyen-lanh-chanh', 1, 1, 1397708907, 1397708893),
(304, 57, 'Huyện Như Thanh', 'huyen-nhu-thanh', 1, 1, 0, 1397711151),
(305, 57, 'Huyện Như Xuân', 'huyen-nhu-xuan', 1, 1, 0, 1397711163),
(306, 57, 'Huyện Thường Xuân', 'huyen-thuong-xuan', 1, 1, 0, 1397711177),
(307, 57, 'Huyện Bá Thước', 'huyen-ba-thuoc', 1, 1, 0, 1397711192),
(308, 57, 'Huyện Mường Lát', 'huyen-muong-lat', 1, 1, 0, 1397711206),
(309, 57, 'Huyện Quan Sơn', 'huyen-quan-son', 1, 1, 0, 1397711221),
(310, 57, 'Huyện Quan Hóa', 'huyen-quan-hoa', 1, 1, 0, 1397711230),
(311, 57, 'Thị Xã Sầm Sơn', 'thi-xa-sam-son', 1, 1, 0, 1397711252),
(312, 57, 'Thị Xã Bỉm Sơn', 'thi-xa-bim-son', 1, 1, 0, 1397711265),
(313, 56, 'Huyện Phổ Yên', 'huyen-pho-yen', 1, 1, 0, 1397711300),
(314, 56, 'Huyện Phú Bình', 'huyen-phu-binh', 1, 1, 0, 1397711309),
(315, 56, 'Huyện Đồng Hỷ', 'huyen-dong-hy', 1, 1, 0, 1397711325),
(316, 56, 'Huyện Đại Từ', 'huyen-dai-tu', 1, 1, 0, 1397711340),
(317, 56, 'Huyện Võ Nhai', 'huyen-vo-nhai', 1, 1, 0, 1397711349),
(318, 56, 'Huyện Phú Lương', 'huyen-phu-luong', 1, 1, 0, 1397711359),
(319, 56, 'Huyện Định Hóa', 'huyen-dinh-hoa', 1, 1, 0, 1397711372),
(320, 56, 'Thị Xã Sông Công', 'thi-xa-song-cong', 1, 1, 0, 1397711389),
(321, 56, 'Thành Phố Thái Nguyên', 'thanh-pho-thai-nguyen', 1, 1, 0, 1397711405),
(322, 55, 'Huyện Thái Thụy', 'huyen-thai-thuy', 1, 1, 0, 1397717611),
(323, 55, 'Huyện Tiền Hải', 'huyen-tien-hai', 1, 1, 0, 1397717623),
(324, 55, 'Huyện Kiến Xương', 'huyen-kien-xuong', 1, 1, 0, 1397717638),
(325, 55, 'Huyện Vũ Thư', 'huyen-vu-thu', 1, 1, 0, 1397717650),
(326, 55, 'Huyện Đông Hưng', 'huyen-dong-hung', 1, 1, 0, 1397717664),
(327, 55, 'Huyện Hưng Hà', 'huyen-hung-ha', 1, 1, 0, 1397717677),
(328, 55, 'Huyện Huỳnh Phụ', 'huyen-huynh-phu', 1, 1, 0, 1397753848),
(329, 55, 'Thành Phố Thái Bình', 'thanh-pho-thai-binh', 1, 1, 0, 1397753862),
(330, 54, 'Huyện Trảng Bàng', 'huyen-trang-bang', 1, 1, 0, 1397754280),
(331, 54, 'Huyện Gò Dầu', 'huyen-go-dau', 1, 1, 0, 1397754295),
(332, 54, 'Huyện Gò Dầu', 'huyen-go-dau', 1, 1, 0, 1397754296),
(333, 54, 'Huyện Bến Cầu', 'huyen-ben-cau', 1, 1, 0, 1397754312),
(334, 54, 'Huyện Hòa Thành', 'huyen-hoa-thanh', 1, 1, 0, 1397754324),
(335, 54, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397754337),
(336, 54, 'Huyện Dương Minh Châu', 'huyen-duong-minh-chau', 1, 1, 0, 1397754351),
(337, 54, 'Huyện Tân Châu', 'huyen-tan-chau', 1, 1, 0, 1397754362),
(338, 54, 'Huyện Tân Biên', 'huyen-tan-bien', 1, 1, 0, 1397754371),
(339, 54, 'Thị Xã Tây Ninh', 'thi-xa-tay-ninh', 1, 1, 0, 1397754394),
(340, 53, 'Huyện Sốp Cộp', 'huyen-sop-cop', 1, 1, 0, 1397754998),
(341, 53, 'Huyện Mộc Châu', 'huyen-moc-chau', 1, 1, 0, 1397755012),
(342, 53, 'Huyện Sơn Mã', 'huyen-son-ma', 1, 1, 0, 1397755022),
(343, 53, 'Huyện Yên Châu', 'huyen-yen-chau', 1, 1, 0, 1397755035),
(344, 53, 'Huyện Mai Sơn', 'huyen-mai-son', 1, 1, 0, 1397755046),
(345, 53, 'Huyện Phù Yên', 'huyen-phu-yen', 1, 1, 0, 1397755065),
(346, 53, 'Huyện Bắc Yên', 'huyen-bac-yen', 1, 1, 0, 1397755078),
(347, 53, 'Huyện Thuận Châu', 'huyen-thuan-chau', 1, 1, 0, 1397755090),
(348, 53, 'Huyện Mường La', 'huyen-muong-la', 1, 1, 0, 1397755108),
(349, 53, 'Huyện Quỳnh Nhai', 'huyen-quynh-nhai', 1, 1, 0, 1397755125),
(350, 53, 'Thành Phố Sơn La', 'thanh-pho-son-la', 1, 1, 0, 1397755139),
(351, 52, 'Huyện Trần Đề', 'huyen-tran-de', 1, 1, 0, 1397755220),
(352, 52, 'Huyện Châu Thành', 'huyen-chau-thanh', 1, 1, 0, 1397755230),
(353, 52, 'Huyện Ngã Năm', 'huyen-nga-nam', 1, 1, 0, 1397755241),
(354, 52, 'Huyện Cù Lao Dung', 'huyen-cu-lao-dung', 1, 1, 0, 1397755253),
(355, 52, 'Thị Xã Vĩnh Châu', 'thi-xa-vinh-chau', 1, 1, 0, 1397755271),
(356, 52, 'Huyện Long Phú', 'huyen-long-phu', 1, 1, 0, 1397755284);

-- --------------------------------------------------------

--
-- Table structure for table `table_event`
--

CREATE TABLE `table_event` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_event`
--

INSERT INTO `table_event` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(1, 1, 'snatoque-penatibus-et-magnis-dis-partu-rient-montes-ascetur-ridiculus-mus', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', '', '', '', '', '', '', 'depositphotos11505846el4600x380_1432870309.jpg', '', 'depositphotos11505846el4600x380_1432870309270x220_270x220.jpg', 'depositphotos11505846el4600x380_1432870309370x235_370x235.jpg', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 1, 1, 0, 1, 1432865004, 1432870309, 32),
(2, 1, 'fusce-feugiat-malesuada-odio-morbi-nunc-odio-gravida-at-cursus-nec-luctus', 'Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', '<p><span style="color:rgb(59, 59, 59); font-family:roboto; font-size:14px">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>\r\n', 'Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus.', 'Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus.', 'Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus.', '', '', '', '', '', '', 'depositphotos13906702original600x380_1432870009.jpg', '', 'depositphotos13906702original600x380_1432870009270x220_270x220.jpg', 'depositphotos13906702original600x380_1432870009370x235_370x235.jpg', 'Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec luctus.', 2, 1, 0, 1, 1432870009, 0, 2),
(3, 1, 'penatibus-et-magnis-dis-parturient-montes-ascetur-ridiculus-mus', 'Penatibus et magnis dis parturient montes ascetur ridiculus mus.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'Penatibus et magnis dis parturient montes ascetur ridiculus mus.', 'Penatibus et magnis dis parturient montes ascetur ridiculus mus.', 'Penatibus et magnis dis parturient montes ascetur ridiculus mus.', '', '', '', '', '', '', 'depositphotos11444221original600x380_1432870080.jpg', '', 'depositphotos11444221original600x380_1432870080270x220_270x220.jpg', 'depositphotos11444221original600x380_1432870080370x235_370x235.jpg', 'Penatibus et magnis dis parturient montes ascetur ridiculus mus.', 3, 1, 0, 1, 1432870080, 0, 1),
(4, 1, 'morbi-nunc-odio-gravida-at-cursus-nec-luctus-a-lorem-maecenas-tristique-orci', 'Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci.', 'Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci.', 'Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci.', '', '', '', '', '', '', 'depositphotos2034270original600x380_1432870129.jpg', '', 'depositphotos2034270original600x380_1432870129270x220_270x220.jpg', 'depositphotos2034270original600x380_1432870129370x235_370x235.jpg', 'Morbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci.', 4, 1, 0, 1, 1432870129, 0, 0),
(5, 2, 'endrerit-mauris-cum-sociis-natoque-penatibus-et-magn-is-dis-parturient-montes-ascetur-ridiculus-mus', 'Endrerit mauris. Cum sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus.', 'Ectus eleifend purus, eget bibendum nunc turpis tris tique, dui nibh tincidunt sem, ac congue turpis nibh quis est? In lobortis imperdiet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci...', '<p>Ectus eleifend purus, eget bibendum nunc turpis tris tique, dui nibh tincidunt sem, ac congue turpis nibh quis est? In lobortis imperdiet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor, malesuada vel turpis.</p>\r\n\r\n<p>Proin at tortor porta libero posuere congue. Sed sed nulla dignissim augue interdum pulvinar ac eget lorem.</p>\r\n\r\n<div class="clear" style="clear: both; overflow: hidden; visibility: hidden; width: 0px; height: 0px; color: rgb(59, 59, 59); font-family: Roboto; font-size: 14px; line-height: 20px;">&nbsp;</div>\r\n\r\n<p>Nunc turpis tristique, dui nibh tincidunt sem, ac congue turpis nibh quis est? In lobortis imperdiet placerat dictum sagit tis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor, malesuada vel turpis. Proin at tortor porta libero posuere congue. Sed sed nulla dignissim augue interdum pulvinar ac eget lorem.</p>\r\n', 'Endrerit mauris. Cum sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus.', 'Endrerit mauris. Cum sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus.', 'Endrerit mauris. Cum sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus.', '', '', '', '', '', '', 'depositphotos1681559original600x380_1432870438.jpg', '', 'depositphotos1681559original600x380_1432870438270x220_270x220.jpg', 'depositphotos1681559original600x380_1432870439370x235_370x235.jpg', 'Endrerit mauris. Cum sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus.', 1, 1, 0, 0, 1432870439, 1432880634, 0),
(6, 3, 'sociis-natoque-penatibus-et-magn-is-dis-parturient-montes-ascetur-ridiculus-mus-null-dui', 'Sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus. Null dui.', 'Sem, ac congue turpis nibh quis est? In lobortis imper diet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor.', '<p><span style="color:rgb(59, 59, 59); font-family:roboto; font-size:14px">Sem, ac congue turpis nibh quis est? In lobortis imper diet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor.&nbsp;Sem, ac congue turpis nibh quis est? In lobortis imper diet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor.&nbsp;Sem, ac congue turpis nibh quis est? In lobortis imper diet placerat dictum sagittis, at viverra ipsum tincidunt nisi orci, sagittis eget dictum porttitor.</span></p>\r\n', 'Sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus. Null dui.', 'Sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus. Null dui.', 'Sociis natoque penatibus et magn is dis parturient montes ascetur ridiculus mus. Null dui.', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 1432870548, 0, 0),
(7, 3, 'snatoque-penatibus-et-magnis-dis-partu-rient-montes-ascetur-ridiculus-mus', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi...', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', '', '', '', '', '', '', 'depositphotos11505846el4600x380_1432870990.jpg', '', 'depositphotos11505846el4600x380_1432870990270x220_270x220.jpg', 'depositphotos11505846el4600x380_1432870991370x235_370x235.jpg', 'Snatoque penatibus et magnis dis partu rient montes ascetur ridiculus mus.', 2, 1, 0, 0, 1432870991, 1432879194, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_event_list`
--

CREATE TABLE `table_event_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_menu` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_tab` int(11) NOT NULL,
  `shows_all` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_event_list`
--

INSERT INTO `table_event_list` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `shows_menu`, `shows_index`, `shows_tab`, `shows_all`, `date_create`, `date_update`) VALUES
(1, 'recent-events', 'Recent events', '', 'Recent events', 'Recent events', 'Recent events', '', '', '', '', '', '', '', '', 1, 1, 0, 1, 0, 0, 1432864924, 1432864924),
(2, 'featured-event', 'Featured event', '', 'Featured event', 'Featured event', 'Featured event', '', '', '', '', '', '', '', '', 2, 1, 0, 1, 0, 0, 1432864935, 1432864935),
(3, 'special-events', 'Special events', '', 'Special events', 'Special events', 'Special events', '', '', '', '', '', '', '', '', 3, 1, 0, 1, 0, 0, 1432864943, 1432870582),
(4, 'category-blog-1', 'Category Blog 1', '', 'Category Blog 1', 'Category Blog 1', 'Category Blog 1', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 0, 0, 1443232416, 1443232416);

-- --------------------------------------------------------

--
-- Table structure for table `table_faqs`
--

CREATE TABLE `table_faqs` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_faqs`
--

INSERT INTO `table_faqs` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(1, 0, 'cau-hoi-1-', 'Câu hỏi 1 ?', 'Nằm ở tầng 2, căn phòng có diện tích khoảng 50 m2 được thiết kế thành một bãi biển nhân tạo. Dưới nền phủ đầy cát. Diện tích lớn nhưng quán chỉ có 12 ghế để đảm bảo cho khách có không gian thư giãn thoải mái. Không tiết lộ chi phí đầu tư, song theo lời nhân viên, các công đoạn tạo nên bãi biển trong nhà tương đối mất thời gian.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 1432957110, 1432957670, 0),
(2, 0, 'cau-hoi-2-', 'Câu hỏi 2 ?', 'Nằm ở tầng 2, căn phòng có diện tích khoảng 50 m2 được thiết kế thành một bãi biển nhân tạo. Dưới nền phủ đầy cát. Diện tích lớn nhưng quán chỉ có 12 ghế để đảm bảo cho khách có không gian thư giãn thoải mái. Không tiết lộ chi phí đầu tư, song theo lời nhân viên, các công đoạn tạo nên bãi biển trong nhà tương đối mất thời gian.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 0, 1432957121, 1432957674, 0),
(3, 0, 'cau-hoi-3-', 'Câu hỏi 3 ?', 'Nằm ở tầng 2, căn phòng có diện tích khoảng 50 m2 được thiết kế thành một bãi biển nhân tạo. Dưới nền phủ đầy cát. Diện tích lớn nhưng quán chỉ có 12 ghế để đảm bảo cho khách có không gian thư giãn thoải mái. Không tiết lộ chi phí đầu tư, song theo lời nhân viên, các công đoạn tạo nên bãi biển trong nhà tương đối mất thời gian.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 0, 1432957134, 1432957678, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_farm`
--

CREATE TABLE `table_farm` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(255) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` longtext NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` longtext NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_farm`
--

INSERT INTO `table_farm` (`id`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `link`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(1, 'he-thong-trang-trai', 'HỆ THỐNG TRANG TRẠI', 'HỆ THỐNG TRANG TRẠI', '<p><img style="height: 960px; width: 717px;" src="http://thegioinongsan.com.vn/upload/hinhanh/Dau.jpg" alt="" width="717" height="960" /></p>\r\n<p><img style="height: 768px; width: 1028px;" src="http://thegioinongsan.com.vn/upload/hinhanh/Vuon%20cai%20bo%20xoi.JPG" alt="" width="1028" height="768" /></p>\r\n<p><img style="height: 768px; width: 1028px;" src="http://thegioinongsan.com.vn/upload/hinhanh/Vuon%20Dua%20Baby.JPG" alt="" width="1028" height="768" /></p>\r\n<p><img style="height: 768px; width: 1028px;" src="http://thegioinongsan.com.vn/upload/hinhanh/Vuon%20Dua%20Baby.JPG" alt="" width="1028" height="768" /></p>\r\n<p>&nbsp;</p>', 'HỆ THỐNG TRANG TRẠI', 'HỆ THỐNG TRANG TRẠI', 'HỆ THỐNG TRANG TRẠI', '', '', '', '', '', '', 'vuoncaiboxoi2_1449792503.jpg', 'vuoncaiboxoi2_1449792503_500x500.jpg', 'HỆ THỐNG TRANG TRẠI', '', 1, 1, 1, 1, 1414742858, 1449794707, 1769),
(3, 'quy-trinh-xu-ly', 'QUY TRÌNH XỬ LÝ', 'QUY TRÌNH XỬ LÝ', '<p>Một số h&igrave;nh ảnh của xưởng xử l&iacute; v&agrave; đ&oacute;ng g&oacute;i của c&ocirc;ng ty An Ph&uacute; Đ&agrave; Lạt.</p>\r\n<p><img style="height: 720px; width: 960px;" src="http://thegioinongsan.com.vn/upload/hinhanh/quy-trinh-xu-ly-1.jpg" alt="" width="960" height="720" /></p>\r\n<p><img style="height: 720px; width: 960px;" src="http://thegioinongsan.com.vn/upload/hinhanh/quy-trinh-xu-ly-2.jpg" alt="" width="960" height="720" /></p>\r\n<p><img style="height: 717px; width: 960px;" src="http://thegioinongsan.com.vn/upload/hinhanh/quy-trinh-xu-ly-3.jpg" alt="" width="960" height="717" /></p>\r\n<p>&nbsp;</p>', 'QUY TRÌNH XỬ LÝ', 'QUY TRÌNH XỬ LÝ', 'QUY TRÌNH XỬ LÝ', '', '', '', '', '', '', 'quytrinhxuly_1449792628.jpg', 'quytrinhxuly_1449792628_500x500.jpg', 'QUY TRÌNH XỬ LÝ', '', 1, 1, 0, 0, 1449652496, 1450829948, 1209),
(4, 'mo-rong-dien-tich-nong-trai', 'Mở rộng diện tích nông trại', '', '', '', '', '', '', '', '', '', '', '', 'nong-trai-an-phu-dalat-app-farm_1483681465.jpg', 'nong-trai-an-phu-dalat-app-farm_1483681465_500x500.jpg', '', '', 1, 0, 0, 0, 1483681465, 0, 11),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', 'dau-ha-lan-trong-gia-the_1483696768.jpg', 'dau-ha-lan-trong-gia-the_1483696768_500x500.jpg', 'Đậu Hòa Lan Ngọt APP trồng trên giá thể', '', 1, 0, 0, 0, 1483696768, 0, 0),
(6, '', '', '', '', '', 'Nước tưới cho cây trồng trong Nông trại An Phú Đà Lạt được bơm từ lòng đất với độ sâu trên 50m, chất lượng tương đương nước uống với độ trong tuyệt đối, sạch và được kiểm tra phân tích mẫu định ký tại Viện Nghiên Cứu Hạt Nhân Đà Lạt.', '', '', '', '', '', '', '', 'ho-nuoc-tuoi-cho-cay-trong_1483697023.jpg', 'ho-nuoc-tuoi-cho-cay-trong_1483697023_500x500.jpg', 'Hồ nước tưới trong nông trại', '', 1, 1, 0, 0, 1483697024, 0, 0),
(7, 'ho-chua-nuoc-tuoi-cho-nong-trai-app', 'Hồ chứa nước tươi cho nông trại APP', '', '', '', '', 'He thong trang trai', '', '', '', '', '', '', 'ho-nuoc-tuoi-cho-cay-trong_1483697390.jpg', 'ho-nuoc-tuoi-cho-cay-trong_1483697390_500x500.jpg', '', '', 4, 0, 0, 0, 1483697188, 1483697390, 1),
(8, 'he-thong-trang-trai', 'HE THONG TRANG TRAI', '', '', '', '', '', '', '', '', '', '', '', 'xa-lach-oceberg_1483697578.jpg', 'xa-lach-oceberg_1483697578_500x500.jpg', '', '', 1, 1, 0, 0, 1483697578, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_footer`
--

CREATE TABLE `table_footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` longtext NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_footer`
--

INSERT INTO `table_footer` (`id`, `noidung`, `title`, `keywords`, `description`) VALUES
(2, '<p>Nội dung</p>\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_helper`
--

CREATE TABLE `table_helper` (
  `id` int(11) UNSIGNED NOT NULL,
  `column_1_vi` varchar(255) NOT NULL,
  `column_2_vi` varchar(255) NOT NULL,
  `column_3_vi` varchar(255) NOT NULL,
  `column_1_en` varchar(255) NOT NULL,
  `column_2_en` varchar(255) NOT NULL,
  `column_3_en` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_helper`
--

INSERT INTO `table_helper` (`id`, `column_1_vi`, `column_2_vi`, `column_3_vi`, `column_1_en`, `column_2_en`, `column_3_en`, `type`) VALUES
(1, 'Miễn phí giao hàng', 'đơn hàng trên 400.000 đ', 'Các khu vực trong Thành phố', '', '', '', 'Miễn phí giao hàng'),
(2, 'Thời gian làm việc', '07:30 am - 19:30 pm', 'Các ngày trong tuần', '', '', '', 'Thời gian làm việc'),
(3, 'Hãy gọi cho chúng tôi ngay', '', '0963.837.947', '', '', '', 'Hotline'),
(4, 'Fanpage', '', 'Hãy like fanpage để nhận những ưu đãi', '', '', '', 'Follow us');

-- --------------------------------------------------------

--
-- Table structure for table `table_info`
--

CREATE TABLE `table_info` (
  `id` int(10) NOT NULL,
  `policy` longtext NOT NULL,
  `guide` longtext NOT NULL,
  `contact` text NOT NULL,
  `contact1` text NOT NULL,
  `footer` text NOT NULL,
  `certificate_quality` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_info`
--

INSERT INTO `table_info` (`id`, `policy`, `guide`, `contact`, `contact1`, `footer`, `certificate_quality`) VALUES
(1, '<p><span style="font-size:14px">Để đặt h&agrave;ng , c&aacute;c bạn vui l&ograve;ng&nbsp;li&ecirc;n hệ qua số điện thoại&nbsp;<strong>0909.488.709 </strong>hoặc<strong> email : cherishcakesg@gmail.com</strong></span></p>\r\n\r\n<p><span style="font-size:14px">Nội dung : </span></p>\r\n\r\n<p><span style="font-size:14px"><span style="color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif">1/Chọn h&igrave;nh trong c&aacute;c Album của tiệm, hoặc h&igrave;nh b&aacute;nh c&aacute;c bạn t&igrave;m t</span><span style="color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif">r&ecirc;n Internet.&nbsp;<br />\r\n2/ Gửi h&igrave;nh b&aacute;nh m&agrave; bạn chọn v&agrave;o email : cherishcakesg@gmail.com<br />\r\nK&egrave;m theo:<br />\r\n<br />\r\n-T&ecirc;n bạn<br />\r\n<br />\r\n-Số đt (*cực kỳ quan trọng nh&eacute; c&aacute;c bạn ^^)&nbsp;<br />\r\n<br />\r\n-Ng&agrave;y&nbsp;lấy b&aacute;nh<br />\r\n<br />\r\n-Lời ch&uacute;c bạn muốn ghi tr&ecirc;n b&aacute;nh</span></span></p>\r\n\r\n<p><span style="font-size:14px">Để phục vụ được tốt nhất , kh&aacute;ch vui l&ograve;ng đặt trước một ng&agrave;y&nbsp;</span></p>\r\n\r\n<p><span style="font-size:14px">Cherish Cake sẽ giao h&agrave;ng tận nơi đến địa chỉ m&agrave; kh&aacute;ch y&ecirc;u cầu ( ph&iacute; ship t&ugrave;y khu vực )</span></p>\r\n\r\n<p><span style="font-size:14px">Đối với đơn h&agrave;ng tr&ecirc;n 300.000 VNĐ , kh&aacute;ch vui l&ograve;ng chuyển khoản trước v&agrave;o t&agrave;i khoản</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Th&ocirc;ng tin chuyển khoản&nbsp;</strong></span></p>\r\n\r\n<p><span style="font-size:14px">Ng&acirc;n h&agrave;ng Vietcombank - Ng&acirc;n h&agrave;ng thương mại cổ phần ngoại thương Việt Nam</span></p>\r\n\r\n<p><span style="font-size:14px">Chủ t&agrave;i khoản : Trương Ho&agrave;ng Đăng Tuấn</span></p>\r\n\r\n<p><span style="font-size:14px">Số t&agrave;i khoản :&nbsp;0421000430287</span></p>\r\n\r\n<p><span style="font-size:14px">Chi nh&aacute;nh Ph&uacute; Thọ , TP.HCM</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '<p><strong>Cửa h&agrave;ng Thế Giới N&ocirc;ng Sản Phan Văn Trị<br />1407 Phan Văn Trị, Phường 10, Quận G&ograve; Vấp</strong><br />Hotline: 0963 837 947<br />Phone: (08) 6 282 5777 (Văn ph&ograve;ng) - 08 6282 4777 (Cửa h&agrave;ng)<br />01688.535.762 (Ngọc nvbh)<br />E-mail: thegioinongsan.pvt@gmail.com</p>', 'Praesent vestibulum aenean noummy endrerit mauris. Cum sociis natoque\r\npenatibus et magnis dis parturient montes ascetur ridiculus mus. Null dui. Fusce feugiat malesuada odio. Morbi nunc odio gravida at cursus nec1.', '<p><strong>Cửa h&agrave;ng Thế Giới N&ocirc;ng Sản Phan Văn Trị<br />1407 Phan Văn Trị, Phường 10, Quận G&ograve; Vấp</strong><br />Hotline: 0963 837 947&nbsp;<br />Phone: (08) 6 282 5777 (Văn ph&ograve;ng) - 08 6282 4777 (Cửa h&agrave;ng)<br />Fax:&nbsp;<br />E-mail: thegioinongsan.pvt@gmail.com</p>', '<p><a href="http://thegioinongsan.com.vn/Images/News/Sub/file/CHUNG%20CHI%20CHAT%20LUONG/cn%20rau%20da%20lat.jpg"><strong><span>- Giấy chứng nhận: Quyền sử dụng nh&atilde;n hiệu: RAU Đ&Agrave; LẠT;</span></strong></a></p>\r\n<p><img src="http://thegioinongsan.com.vn/upload/hinhanh/giay-chung-nhan-quyen-su-dung-rau-da-lat.jpg" alt="" width="1264" height="1752" /></p>\r\n<p><a href="http://thegioinongsan.com.vn/Images/News/Sub/file/CHUNG%20CHI%20CHAT%20LUONG/Vietgap_1.jpg"><strong><span>- Giấy chứng nhận VietGap 1;</span></strong></a></p>\r\n<p><strong><span><img src="http://thegioinongsan.com.vn/upload/hinhanh/giay-chung-nhan-Vietgap-1.jpg" alt="" width="1752" height="1264" /><a href="http://thegioinongsan.com.vn/Images/News/Sub/file/CHUNG%20CHI%20CHAT%20LUONG/Vietgap_1.jpg"><strong><span>- Giấy chứng nhận VietGap 2;</span></strong></a><br /></span></strong></p>\r\n<p><strong><span><strong><span><img src="http://thegioinongsan.com.vn/upload/hinhanh/giay-chung-nhan-vietgap-2.jpg" alt="" width="1752" height="1264" /></span></strong></span></strong></p>\r\n<p><a href="http://thegioinongsan.com.vn/Images/News/Sub/file/CHUNG%20CHI%20CHAT%20LUONG/vstp.jpg"><strong><span>- Giấy chứng nhận cơ sở sản xuất đủ điều kiện.</span></strong></a></p>\r\n<p><img src="http://thegioinongsan.com.vn/upload/hinhanh/giay-chung-nhan-vietgap-2.jpg" alt="" width="1752" height="1264" /><strong style="line-height: 1.5;">C&ocirc;ng ty Xuất khẩu N&ocirc;ng sản AN PH&Uacute; Đ&Agrave; LẠT đ&atilde; đạt danh hiệu H&Agrave;NG VIỆT NAM CHẤT LƯỢNG CAO - 2015&nbsp;</strong><strong style="line-height: 1.5;">do người ti&ecirc;u d&ugrave;ng b&igrave;nh chọn.</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `table_library`
--

CREATE TABLE `table_library` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_library_list`
--

CREATE TABLE `table_library_list` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_menu` int(11) NOT NULL,
  `shows_tab` int(11) NOT NULL,
  `shows_footer` int(11) NOT NULL,
  `shows_all` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_links`
--

CREATE TABLE `table_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(225) NOT NULL,
  `stt` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `link` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_links`
--

INSERT INTO `table_links` (`id`, `ten`, `stt`, `hienthi`, `link`) VALUES
(1, 'Google', 1, 1, 'http://google.com.vn');

-- --------------------------------------------------------

--
-- Table structure for table `table_news`
--

CREATE TABLE `table_news` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(1) NOT NULL,
  `shows_hot` int(1) DEFAULT NULL,
  `shows_popular` int(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_news`
--

INSERT INTO `table_news` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `thumb3`, `alt`, `numberic`, `shows`, `shows_hot`, `shows_popular`, `date_create`, `date_update`, `viewed`) VALUES
(4, 3, 'mauris-dapibus-quam-id-turpis-dignissim-rutrum', 'Mauris dapibus quam id turpis dignissim rutrum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum.', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'paris_1532618261.png', 'paris_1532618261180x135_180x135.png', 'paris_1532618261300x162_300x162.png', 'paris_1532618261380x217_380x217.png', 'paris_1532618261540x372_540x372.png', '', 1, 1, 0, 0, 1410164237, 1532618261, 437),
(5, 3, 'etiam-scelerisque-molestie-purus-vel-mollis', 'Etiam scelerisque molestie purus vel mollis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum.', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'arbol_1532618293.jpg', 'arbol_1532618293180x135_180x135.jpg', 'arbol_1532618293300x162_300x162.jpg', 'arbol_1532618293380x217_380x217.jpg', 'arbol_1532618293540x372_540x372.jpg', '', 1, 1, 0, 0, 1410164276, 1532618293, 1565),
(6, 5, 'phasellus-placerat-nunc-in-nulla-pretium-pellentesque', 'Phasellus placerat nunc in nulla pretium pellentesque', 'Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'britainsoccer_1532618419.jpg', 'britainsoccer_1532618419180x135_180x135.jpg', 'britainsoccer_1532618419300x162_300x162.jpg', 'britainsoccer_1532618419380x217_380x217.jpg', 'britainsoccer_1532618419540x372_540x372.jpg', '', 1, 1, 0, 0, 1410164301, 1532618419, 409),
(22, 1, 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', '4_1532617540.png', '4_1532617540180x135_180x135.png', '4_1532617540300x162_300x162.png', '4_1532617540380x217_380x217.png', '4_1532617540540x372_540x372.png', '', 1, 1, 1, 1, 1483681026, 1532617935, 183),
(9, 3, 'in-sodales-dapibus-dui', 'In sodales dapibus dui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum.', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'marsilya_1532618228.jpg', 'marsilya_1532618228180x135_180x135.jpg', 'marsilya_1532618228300x162_300x162.jpg', 'marsilya_1532618228380x217_380x217.jpg', 'marsilya_1532618228540x372_540x372.jpg', '', 1, 1, 0, 0, 1411624881, 1532618228, 402),
(10, 1, 'consectetur-adipiscing-elit', 'Consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum.', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', '5_1532617583.png', '5_1532617583180x135_180x135.png', '5_1532617583300x162_300x162.png', '5_1532617583380x217_380x217.png', '5_1532617583540x372_540x372.png', '', 1, 1, 1, 1, 1411783445, 1532617929, 1025),
(12, 5, 'vestibulum-ante-ipsum-primis-in-faucibus-orci-luctus-et-ultrices-posuere-cubilia-curae', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 'Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'rosscounty_1532618501.jpg', 'rosscounty_1532618501180x135_180x135.jpg', 'rosscounty_1532618501300x162_300x162.jpg', 'rosscounty_1532618501380x217_380x217.jpg', 'rosscounty_1532618501540x372_540x372.jpg', '', 1, 0, 0, 0, 1449648589, 1532618501, 239),
(23, 1, 'stress-may-cause-cravings', 'Stress may cause cravings', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', '3_1532617498.png', '3_1532617498180x135_180x135.png', '3_1532617498300x162_300x162.png', '3_1532617498380x217_380x217.png', '3_1532617498540x372_540x372.png', '', 1, 1, 1, 1, 1487063213, 1532617952, 227),
(24, 1, 'blandit-rutrum-erat-et-sagittis-lorem-ipsum-dolor-sit-amet-adipsing', 'Blandit Rutrum, Erat et Sagittis. Lorem Ipsum Dolor, Sit Amet Adipsing.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis.', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</span></p>', '', '', '', '', '', '', '', '', '', '1_1532616950.png', '1_1532616950180x135_180x135.png', '1_1532616950300x162_300x162.png', '1_1532616950380x217_380x217.png', '1_1532616950540x372_540x372.png', '', 1, 1, 1, 1, 1487064740, 1532617907, 415),
(21, 5, 'aliquam-erat-volutpat-in-nec-enim-dui-in-hendrerit-enim', 'Aliquam erat volutpat. In nec enim dui, in hendrerit enim', 'Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', 'redhot_1532618455.jpg', 'redhot_1532618455180x135_180x135.jpg', 'redhot_1532618455300x162_300x162.jpg', 'redhot_1532618455380x217_380x217.jpg', 'redhot_1532618455540x372_540x372.jpg', '', 1, 1, 0, 0, 1449649211, 1532618455, 1727),
(25, 1, 'blandit-rutrum-erat-et-sagittis', 'Blandit Rutrum, Erat et Sagittis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales dapibus dui, sed iaculis metus facilisis sed. Etiam scelerisque molestie purus vel mollis. Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus at tortor at est mattis aliquam non id est. Quisque pretium suscipit faucibus. Fusce vestibulum mollis interdum. Duis a nibh at odio aliquet varius. Pellen tesque feugiat nulla nec ipsum suscipit ut varius elit posuere. Nunc tellus urna, viverra ac porta ac, com modo et libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Pellentesque ullam corper nisl id justo ultrices hendrerit. Vivamus dignissim ultrices erat, vitae placerat ligula lacinia non. In arcu nunc, aliquet a condimentum et, tempor eget nisl.</p>', '', '', '', '', '', '', '', '', '', '2_1532617459.png', '2_1532617459180x135_180x135.png', '2_1532617459300x162_300x162.png', '2_1532617459380x217_380x217.png', '2_1532617459540x372_540x372.png', '', 1, 1, 1, 1, 1490179321, 1532617962, 298);

-- --------------------------------------------------------

--
-- Table structure for table `table_news_list`
--

CREATE TABLE `table_news_list` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(1) NOT NULL,
  `shows_menu` int(1) NOT NULL,
  `shows_tab` int(1) NOT NULL,
  `shows_footer` int(1) NOT NULL,
  `shows_all` int(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_news_list`
--

INSERT INTO `table_news_list` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `shows_menu`, `shows_tab`, `shows_footer`, `shows_all`, `date_create`, `date_update`) VALUES
(1, 'pages', 'Pages.', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 1, 1, 0, 1409130495, 1532617917),
(2, 'world', 'World.', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 1, 1, 1, 0, 1409130534, 1532616490),
(3, 'business', 'Business.', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 1, 1, 1, 1, 1409130627, 1532616501),
(4, 'politics', 'Politics.', '', '', '', '', '', '', '', '', '', '', '', '', 4, 1, 1, 0, 1, 0, 1409130657, 1532616510),
(5, 'sports', 'Sports.', '', '', '', '', '', '', '', '', '', '', '', '', 5, 1, 1, 0, 1, 0, 1409132167, 1532616519),
(6, 'health', 'Health.', '', '', '', '', '', '', '', '', '', '', '', '', 6, 1, 1, 0, 1, 0, 1409132200, 1532616533),
(8, 'music', 'Music.', '', '', '', '', '', '', '', '', '', '', '', '', 8, 1, 0, 0, 0, 0, 1532616578, 0),
(7, 'science', 'Science.', '', '', '', '', '', '', '', '', '', '', '', '', 7, 1, 0, 0, 0, 0, 1532616542, 1532616560);

-- --------------------------------------------------------

--
-- Table structure for table `table_news_photo`
--

CREATE TABLE `table_news_photo` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `thumb1` varchar(100) NOT NULL,
  `thumb2` varchar(100) NOT NULL,
  `thumb3` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_news_photo`
--

INSERT INTO `table_news_photo` (`id`, `id_news`, `photo`, `thumb`, `thumb1`, `thumb2`, `thumb3`, `alt`, `numberic`, `shows`) VALUES
(1, 24, '2_1532617261.png', '2_1532617261180x135_1_180x135.png', '2_1532617261300x162_1_300x162.png', '2_1532617261380x217_1_380x217.png', '2_1532617261540x372_1_540x372.png', '', 1, 1),
(2, 24, '3_1532617261.png', '3_1532617261180x135_2_180x135.png', '3_1532617262300x162_2_300x162.png', '3_1532617262380x217_2_380x217.png', '3_1532617262540x372_2_540x372.png', '', 2, 1),
(3, 24, '4_1532617262.png', '4_1532617262180x135_3_180x135.png', '4_1532617262300x162_3_300x162.png', '4_1532617262380x217_3_380x217.png', '4_1532617262540x372_3_540x372.png', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE `table_order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `madonhang` varchar(20) NOT NULL,
  `hoten_nn` varchar(255) NOT NULL,
  `hoten_tt` varchar(255) NOT NULL,
  `dienthoai` varchar(255) NOT NULL,
  `diachi_nn` varchar(255) NOT NULL,
  `diachi_tt` varchar(255) NOT NULL,
  `city_nn` int(11) NOT NULL,
  `city_tt` int(11) NOT NULL,
  `district_nn` int(11) NOT NULL,
  `district_tt` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `httt` int(11) NOT NULL,
  `htvc` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `ghichu` text NOT NULL,
  `noidung` text NOT NULL,
  `donhang` text NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `id_trangthai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_order`
--

INSERT INTO `table_order` (`id`, `id_user`, `madonhang`, `hoten_nn`, `hoten_tt`, `dienthoai`, `diachi_nn`, `diachi_tt`, `city_nn`, `city_tt`, `district_nn`, `district_tt`, `weight`, `height`, `email`, `httt`, `htvc`, `tonggia`, `ghichu`, `noidung`, `donhang`, `ngaytao`, `id_trangthai`) VALUES
(3, 0, 'WVWWG9', 'Trương Ngọc Thủy', 'Trương Ngọc Thủy', '0907470720', '18/7 Thanh Đa, P 27 Quận Bình Thạnh', '18/7 Thanh Đa, P 27 Quận Bình Thạnh', 1, 1, 94, 94, '', '', 'ngocthuy2204@gmail.com', 2, 2, 206850, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203205_145432311873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/thap-cam-say-gion.html" style="font-weight: bold;" class="transitionAll" >Thập cẩm sấy giòn</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">50.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/20160119114649resized_145440217073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Mix" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-mix.html" style="font-weight: bold;" class="transitionAll" >Cà chua Mix</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cainhung_145390762773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải nhúng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-nhung.html" style="font-weight: bold;" class="transitionAll" >Cải nhúng</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">27.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/binhatnon_145390687873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật non" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-nhat-non.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật non</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bong-cai-xanh_145113919473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bông cải xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bong-cai-xanh.html" style="font-weight: bold;" class="transitionAll" >Bông cải xanh</a></td><td width="10%" align="center" valign="middle">40.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">40.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">206.850 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">206.850 vnđ</span></strong></td>\n					</tr>\n					</table>', 1455782890, 1),
(2, 0, 'SWDWGG', 'Ngoc', 'Ngoc', '01285268889', '90/24 duong so 6 phuong 7', '90/24 duong so 6 phuong 7', 1, 1, 97, 97, '', '', 'hoangthiminh.ngoc@yahoo.com', 2, 2, 204750, 'Đã giao hàng ngày 25/01/2016', 'co the giao thu 2 hay thu 3 duoc ko. sao giao ca tuan le vay', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/rau-muong-baby_145114198273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Rau muống Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/rau-muong-baby.html" style="font-weight: bold;" class="transitionAll" >Rau muống Baby</a></td><td width="10%" align="center" valign="middle">37.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">37.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/su-su_145114217773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Su su" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/su-su.html" style="font-weight: bold;" class="transitionAll" >Su su</a></td><td width="10%" align="center" valign="middle">14.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">14.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/rau-den-baby_145114184373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Rau dền Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/rau-den-baby.html" style="font-weight: bold;" class="transitionAll" >Rau dền Baby</a></td><td width="10%" align="center" valign="middle">37.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">37.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cai-thia-bok-choi_145114013173x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải thìa Bok choi" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-thia-bok-choi.html" style="font-weight: bold;" class="transitionAll" >Cải thìa Bok choi</a></td><td width="10%" align="center" valign="middle">31.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">31.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dua-leo-bayby_145114066673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dua-leo-baby.html" style="font-weight: bold;" class="transitionAll" >Dưa leo Baby</a></td><td width="10%" align="center" valign="middle">30.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">30.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bi-dao_145113915273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí đao" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-dao.html" style="font-weight: bold;" class="transitionAll" >Bí đao</a></td><td width="10%" align="center" valign="middle">19.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">19.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bap-cai-trang_145113911873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bắp cải trắng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bap-cai-trang.html" style="font-weight: bold;" class="transitionAll" >Bắp cải trắng</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">27.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">204.750 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">204.750 vnđ</span></strong></td>\n					</tr>\n					</table>', 1453028370, 4),
(4, 0, 'MYV3PH', 'Đặng  Hữu Thắng ', 'Đặng  Hữu Thắng ', '0938187055', '19/2 Dong Hoa ', '19/2 Dong Hoa ', 9, 9, 67, 67, '', '', 'sleuth251004@gmail.com', 2, 2, 0, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-chua-beef_145113948373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Beef" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-beef.html" style="font-weight: bold;" class="transitionAll" >Cà chua Beef</a></td><td width="10%" align="center" valign="middle">0 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">0 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">0 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">0 vnđ</span></strong></td>\n					</tr>\n					</table>', 1457786537, 1),
(5, 0, 'ZA7BXX', 'Nguyễn Thị Hồng Mai', 'Nguyễn Thị Hồng Mai', '0917150061', '30 Trần Cao Vân P6 Q3', '30 Trần Cao Vân P6 Q3', 1, 1, 107, 107, '', '', 'hongmai1978@yahoo.com', 2, 2, 73500, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">70.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">73.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">73.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1458527564, 1),
(6, 0, '3XCXTC', 'Nguyen Thi Thanh Lan', 'Nguyen Thi Thanh Lan', '0988924923', '78/26 Hoàng Văn Hợp, P. An Lạc A, Bình Tân', '78/26 Hoàng Văn Hợp, P. An Lạc A, Bình Tân', 1, 1, 91, 91, '', '', 'nguyenlan3788@gmail.com', 2, 2, 319200, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cucaitrang_145390901673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Củ cải trắng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cu-cai-trang.html" style="font-weight: bold;" class="transitionAll" >Củ cải trắng</a></td><td width="10%" align="center" valign="middle">18.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caixanhnon_145390787373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải xanh non" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-xanh-non.html" style="font-weight: bold;" class="transitionAll" >Cải xanh non</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">27.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cainhung_145390762773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải nhúng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-nhung.html" style="font-weight: bold;" class="transitionAll" >Cải nhúng</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">27.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caingot_145390748773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-ngot.html" style="font-weight: bold;" class="transitionAll" >Cải ngọt</a></td><td width="10%" align="center" valign="middle">26.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">26.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caingong_145390726673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải ngồng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-ngong.html" style="font-weight: bold;" class="transitionAll" >Cải ngồng</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">27.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cai-bo-xoi_145114002473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải bó xôi" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-bo-xoi.html" style="font-weight: bold;" class="transitionAll" >Cải bó xôi</a></td><td width="10%" align="center" valign="middle">39.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">39.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bong-cai-xanh_145113919473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bông cải xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bong-cai-xanh.html" style="font-weight: bold;" class="transitionAll" >Bông cải xanh</a></td><td width="10%" align="center" valign="middle">40.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">40.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">8</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/daucovenhat_145390919673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Cove Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-cove-nhat.html" style="font-weight: bold;" class="transitionAll" >Đậu Cove Nhật</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">9</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bingoi_145390677073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí ngòi" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-ngoi.html" style="font-weight: bold;" class="transitionAll" >Bí ngòi</a></td><td width="10%" align="center" valign="middle">40.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">40.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">10</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-chua-anna_145113926673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Anna" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-anna.html" style="font-weight: bold;" class="transitionAll" >Cà chua Anna</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">319.200 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">319.200 vnđ</span></strong></td>\n					</tr>\n					</table>', 1460999182, 1),
(7, 0, 'BR8HML', 'Tran thi kim phú', '', '0939787652', 'tổ9,số nha 0879,thị xã binh minh- vĩnh long', '', 62, 0, 0, 0, '', '', '', 2, 0, 52500, '', 'Điện thoại ra lấy đừng đưa về nhà', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dua-leo_145114074773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dua-leo.html" style="font-weight: bold;" class="transitionAll" >Dưa leo</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">50.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">52.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">52.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1461301130, 1),
(8, 0, 'JP5FQ', 'nguyen thi ngoc han', 'nguyen thi ngoc han', '0942103200', '290E an duong vuong P4Q5', '290E an duong vuong P4Q5', 1, 1, 105, 105, '', '', 'ngochan_beut@yahoo.com', 2, 2, 641550, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203128_145432264273x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dua-luoi-vang.html" style="font-weight: bold;" class="transitionAll" >Dưa lưới vàng</a></td><td width="10%" align="center" valign="middle">55.000 vnđ</td><td width="10%" align="center" valign="middle">3</td><td width="10%" align="center" valign="middle">165.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203208_145432298973x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/khoai-lang-say-gion.html" style="font-weight: bold;" class="transitionAll" >Khoai lang sấy giòn</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/rau-muong-baby_145114198273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Rau muống Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/rau-muong-baby.html" style="font-weight: bold;" class="transitionAll" >Rau muống Baby</a></td><td width="10%" align="center" valign="middle">37.000 vnđ</td><td width="10%" align="center" valign="middle">3</td><td width="10%" align="center" valign="middle">111.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caixanhnon_145390787373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải xanh non" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-xanh-non.html" style="font-weight: bold;" class="transitionAll" >Cải xanh non</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">54.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dua-leo_145114074773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dua-leo.html" style="font-weight: bold;" class="transitionAll" >Dưa leo</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">3</td><td width="10%" align="center" valign="middle">75.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-chua-anna_145113926673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Anna" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-anna.html" style="font-weight: bold;" class="transitionAll" >Cà chua Anna</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">3</td><td width="10%" align="center" valign="middle">75.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caingot_145390748773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-ngot.html" style="font-weight: bold;" class="transitionAll" >Cải ngọt</a></td><td width="10%" align="center" valign="middle">26.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">52.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">8</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cai-be-xanh_145113999573x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải bẹ xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-be-xanh.html" style="font-weight: bold;" class="transitionAll" >Cải bẹ xanh</a></td><td width="10%" align="center" valign="middle">27.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">54.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">641.550 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">641.550 vnđ</span></strong></td>\n					</tr>\n					</table>', 1461756786, 1),
(9, 0, 'LWWE1U', 'HUỲNH HẢI', 'HUỲNH HẢI', '0933489884', '105 ĐIỆN BIÊN PHỦ', '105 ĐIỆN BIÊN PHỦ', 1, 1, 94, 94, '', '', 'toiphaithanhcong30@gmail.com', 2, 2, 194250, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img1908_145432012873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Xà lách giống Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/xa-lach-giong-nhat.html" style="font-weight: bold;" class="transitionAll" >Xà lách giống Nhật</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dua-leo_145114074773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dua-leo.html" style="font-weight: bold;" class="transitionAll" >Dưa leo</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/lolo-xanh_145114097073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Lô lô xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/lo-lo-xanh.html" style="font-weight: bold;" class="transitionAll" >Lô lô xanh</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-tim_145113961473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà tím" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-tim.html" style="font-weight: bold;" class="transitionAll" >Cà tím</a></td><td width="10%" align="center" valign="middle">18.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img2439_145432036573x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/thanh-long-ruot-do.html" style="font-weight: bold;" class="transitionAll" >Thanh long ruột đỏ</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dsc2190_145432152073x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/trai-thom.html" style="font-weight: bold;" class="transitionAll" >Trái thơm</a></td><td width="10%" align="center" valign="middle">17.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">17.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">194.250 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">194.250 vnđ</span></strong></td>\n					</tr>\n					</table>', 1464235401, 1),
(10, 0, 'JRYJX2', 'Trần Thị Bình', 'Trần Thị Bình', '0912075434', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 1, 1, 94, 94, '', '', 'tranthibinh0961@gmail.com', 2, 2, 47250, '', 'Mua bí', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/binhatnon_145390687873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật non" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bi-nhat-non.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật non</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">47.250 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">47.250 vnđ</span></strong></td>\n					</tr>\n					</table>', 1469622746, 1),
(11, 0, 'GYENPM', 'Trần Thị Bình', 'Trần Thị Bình', '0912075434', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 1, 1, 94, 94, '', '', 'tranthibinh0961@gmail.com', 2, 2, 47250, '', 'Mua dưa leo', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/dua-leo-bayby_145114066673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dua-leo-baby.html" style="font-weight: bold;" class="transitionAll" >Dưa leo Baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">47.250 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">47.250 vnđ</span></strong></td>\n					</tr>\n					</table>', 1469623247, 1),
(12, 0, 'YQSCX', 'Trần Thị Bình', 'Trần Thị Bình', '0912075434', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 1, 1, 94, 94, '', '', 'tranthibinh0961@gmail.com', 2, 2, 94500, '', 'Bi non nhát , đùa leo bybi', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/dua-leo-bayby_145114066673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dua-leo-baby.html" style="font-weight: bold;" class="transitionAll" >Dưa leo Baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/binhatnon_145390687873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật non" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bi-nhat-non.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật non</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">94.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">94.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1470055628, 1),
(13, 0, '21FLQ4', 'Trần Thị Bình', 'Trần Thị Bình', '0912075434', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 1, 1, 94, 94, '', '', 'tranthibinh0961@gmail.com', 2, 2, 0, '', 'Bi non nhát , đùa leo bybi', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"></table>', 1470056436, 1);
INSERT INTO `table_order` (`id`, `id_user`, `madonhang`, `hoten_nn`, `hoten_tt`, `dienthoai`, `diachi_nn`, `diachi_tt`, `city_nn`, `city_tt`, `district_nn`, `district_tt`, `weight`, `height`, `email`, `httt`, `htvc`, `tonggia`, `ghichu`, `noidung`, `donhang`, `ngaytao`, `id_trangthai`) VALUES
(14, 0, 'MJBWPY', 'Trần Thị Bình', 'Trần Thị Bình', '0912075434', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 'P1608 chung cư Thanh Đa View, P. 27, Q. Bình Thạnh', 1, 1, 94, 94, '', '', 'tranthibinh0961@gmail.com', 2, 2, 178500, '', 'Dấu co ve nhát , su su baby bi nhát non , đùa leo baby', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/daucovenhat_145390919673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Cove Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dau-cove-nhat.html" style="font-weight: bold;" class="transitionAll" >Đậu Cove Nhật</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203224_145432317273x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/susu-baby.html" style="font-weight: bold;" class="transitionAll" >Susu baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/binhatnon_145390687873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật non" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bi-nhat-non.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật non</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/dua-leo-bayby_145114066673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Dưa leo Baby" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dua-leo-baby.html" style="font-weight: bold;" class="transitionAll" >Dưa leo Baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">178.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">178.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1470369511, 1),
(15, 0, 'IIPSHL', 'HUỲNH THỊ HỒNG ĐÀO', 'HUỲNH THỊ HỒNG ĐÀO', '0919659099', '540 ÂU CƠ, P10, TÂN BÌNH ( CTY TRUNG HẬU)', '540 ÂU CƠ, P10, TÂN BÌNH ( CTY TRUNG HẬU)', 1, 1, 96, 96, '', '', 'hongdao352@yahoo.com', 2, 2, 299250, '', 'VUI LÒNG GIAO HÀNG TRƯỚC 10 GIỜ SÁNG, VÌ SAU GIỜ ĐÓ SẼ KHÔNG CÓ NGƯỜI NHẬN HÀNG.', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img5239_146969141873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/rau-cai-mam-app.html" style="font-weight: bold;" class="transitionAll" >Rau cải mầm APP</a></td><td width="10%" align="center" valign="middle">10.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">10.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/daucovenhat_145390919673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Cove Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dau-cove-nhat.html" style="font-weight: bold;" class="transitionAll" >Đậu Cove Nhật</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203224_145432317273x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/susu-baby.html" style="font-weight: bold;" class="transitionAll" >Susu baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203205_145432311873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/thap-cam-say-gion.html" style="font-weight: bold;" class="transitionAll" >Thập cẩm sấy giòn</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203203_145432303673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/chuoi-say-gion.html" style="font-weight: bold;" class="transitionAll" >Chuối sấy giòn</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/caixanh_145390780073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/cai-xanh.html" style="font-weight: bold;" class="transitionAll" >Cải xanh</a></td><td width="10%" align="center" valign="middle">33.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">33.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/caingong_145390726673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải ngồng" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/cai-ngong.html" style="font-weight: bold;" class="transitionAll" >Cải ngồng</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">8</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/cainhung_145390762773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải nhúng" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/cai-nhung.html" style="font-weight: bold;" class="transitionAll" >Cải nhúng</a></td><td width="10%" align="center" valign="middle">32.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">32.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">9</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/binhatnon_145390687873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật non" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bi-nhat-non.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật non</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">299.250 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">299.250 vnđ</span></strong></td>\n					</tr>\n					</table>', 1470457188, 1),
(16, 0, 'UC7YQC', 'trương  mỹ luyện', 'trương  mỹ luyện', '0919676770', 'số 1, phạm văn hai p 1 tân bình', 'số 1, phạm văn hai p 1 tân bình', 1, 1, 96, 96, '', '', 'myluyen@gmail.com', 2, 2, 36750, '', '35.000 1 ký hay 1 gói bao nhiêu gram vậy bạn ơi?', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">36.750 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">36.750 vnđ</span></strong></td>\n					</tr>\n					</table>', 1473150570, 1),
(17, 0, 'TXOBR2', 'le thi dung', 'le thi dung', '0985838716', 'so 55 to 8 phường phúc lợi quận long biên ha nội', 'so 55 to 8 phường phúc lợi quận long biên ha nội', 25, 25, 225, 225, '', '', 'dung1992hy@gmail.com', 2, 2, 73500, '', 'giao gjo hành chính', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">70.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">73.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">73.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1474076824, 1),
(18, 0, 'JGEUXA', 'Trần Khánh Linh', 'Trần Khánh Linh', '0924193798', '497/24/20B, phan văn trị, P5, quận Gò Vấp,', '497/24/20B, Phan Văn Trị, P5', 1, 1, 97, 97, '', '', 'khanhlinhtran226@gmail.com', 2, 2, 36750, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">36.750 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">36.750 vnđ</span></strong></td>\n					</tr>\n					</table>', 1476127905, 1),
(19, 0, 'XLGM9K', 'Trần Khánh Linh', 'Trần Khánh Linh', '0924193798', '497/24/20B, phan văn trị, P5, quận Gò Vấp,', '497/24/20B, Phan Văn Trị, P5', 1, 1, 97, 97, '', '', 'khanhlinhtran226@gmail.com', 2, 2, 0, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"></table>', 1476127941, 1),
(20, 0, 'WRXSKC', 'Nguyễn văn Thìn', 'Nguyễn văn Thìn', '0983197611', 'Ngọc Hồi, Thanh Trì, Hà Nội', 'Ngọc Hồi, Thanh Trì, Hà Nội', 25, 25, 223, 223, '', '', 'thienngu76@gmail.com', 2, 2, 73500, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203156_145432273673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/ot-sung-bo.html" style="font-weight: bold;" class="transitionAll" >Ớt sừng bò</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">70.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">73.500 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">73.500 vnđ</span></strong></td>\n					</tr>\n					</table>', 1476538520, 1),
(21, 0, 'WSU6GE', 'Huỳnh Lê Kim Hà', 'Huỳnh Lê Kim hà', '0906932000', '351/98 Lê Đại Hành Phường 13 Quận 11', '351/98 Lê Đại Hành Phường 13 Quận 11', 1, 1, 99, 99, '', '', 'huynhlekimha@gmail.com', 2, 2, 147000, '', 'Lấy hạn sử dụng xa. Tôi muốn hỏi trọng lượng 1 gói là bao nhiêu?', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">4</td><td width="10%" align="center" valign="middle">140.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">147.000 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">147.000 vnđ</span></strong></td>\n					</tr>\n					</table>', 1478489683, 1),
(22, 0, 'WTDCFZ', 'Huỳnh Lê Kim Hà', 'Huỳnh Lê Kim hà', '0906932000', '351/98 Lê Đại Hành Phường 13 Quận 11', '351/98 Lê Đại Hành Phường 13 Quận 11', 1, 1, 99, 99, '', '', 'huynhlekimha@gmail.com', 2, 2, 0, '', 'Lấy hạn sử dụng xa. Tôi muốn hỏi trọng lượng 1 gói là bao nhiêu?', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"></table>', 1478489699, 1),
(23, 0, 'ZQJSEN', 'Tuong Anh Tuan', 'Tuong Anh Tuan', '0903789950', 'Nhà máy sữa Frislandcampina(cô gái Hà Lan) - Xã Bình Hòa', 'Nhà máy sữa Frislandcampina(cô gái Hà Lan) - Xã Bình Hòa', 9, 9, 66, 66, '', '', 'anhtuan.tuong@gmail.com', 2, 2, 147000, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">4</td><td width="10%" align="center" valign="middle">140.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">147.000 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">147.000 vnđ</span></strong></td>\n					</tr>\n					</table>', 1479883289, 1),
(24, 0, 'HLTTQF', 'Trần Xuân Hương', 'Trần Xuân Hương', '0902577094', '116/15 Nguyễn Văn Lượng', '116/15 Nguyễn Văn Lượng p.17', 1, 1, 97, 97, '', '', 'yourfriend1610@yahoo.com', 2, 2, 147000, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">4</td><td width="10%" align="center" valign="middle">140.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">147.000 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">147.000 vnđ</span></strong></td>\n					</tr>\n					</table>', 1482254591, 1),
(25, 0, '63Q9KD', 'Quỳnh Ty', 'Quỳnh Ty', '0907424250', '7E( Hẻm 843 ) Nguyễn Kiệm', '7E( Hẻm 843 ) Nguyễn Kiệm', 1, 1, 97, 97, '', '', 'phuongquynh.ly@gmail.com', 2, 2, 207900, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/binhat_145390682873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bi-nhat.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật</a></td><td width="10%" align="center" valign="middle">19.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">19.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/dau-ha-lan-ngot_145114046773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Hà Lan ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/dau-ha-lan-ngot.html" style="font-weight: bold;" class="transitionAll" >Đậu Hà Lan ngọt</a></td><td width="10%" align="center" valign="middle">30.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">30.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/cai-bo-xoi_145114002473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải bó xôi" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/cai-bo-xoi.html" style="font-weight: bold;" class="transitionAll" >Cải bó xôi</a></td><td width="10%" align="center" valign="middle">42.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">42.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/bong-cai-xanh_145113919473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bông cải xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bong-cai-xanh.html" style="font-weight: bold;" class="transitionAll" >Bông cải xanh</a></td><td width="10%" align="center" valign="middle">49.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">49.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/bap-cai-tim_145113814873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bắp cải tím" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/bap-cai-tim.html" style="font-weight: bold;" class="transitionAll" >Bắp cải tím</a></td><td width="10%" align="center" valign="middle">40.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">40.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/cucaitrang_145390901673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Củ cải trắng" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/cu-cai-trang.html" style="font-weight: bold;" class="transitionAll" >Củ cải trắng</a></td><td width="10%" align="center" valign="middle">18.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">207.900 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">207.900 vnđ</span></strong></td>\n					</tr>\n					</table>', 1482637124, 1),
(26, 0, 'NPG2PA', 'Hương', 'Hương', '0919989768', '53/34/107 Bình Lợi (đi vào hẻm 127 Bình Lợi) P13', '53/34/107 Bình Lợi (đi vào hẻm 127 Bình Lợi) P13', 1, 1, 94, 94, '', '', 'phamhuongptit2001@yahoo.com', 2, 2, 410550, '', 'đi vào hẻm 127 Bình Lợi, ngã 4 thứ 2 rẽ phải. Giao hàng vào thứ 7, CN. Nếu ngày làm việc giao sau 5h chiều.', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img5301_147082218473x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/rau-cai-mam-app.html" style="font-weight: bold;" class="transitionAll" >Rau cải mầm APP</a></td><td width="10%" align="center" valign="middle">15.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">30.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img1183_147082246373x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/rau-muong-mam-app.html" style="font-weight: bold;" class="transitionAll" >Rau muống mầm APP</a></td><td width="10%" align="center" valign="middle">15.000 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">30.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cucaitrang_145390901673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Củ cải trắng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cu-cai-trang.html" style="font-weight: bold;" class="transitionAll" >Củ cải trắng</a></td><td width="10%" align="center" valign="middle">18.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203224_145432317273x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/susu-baby.html" style="font-weight: bold;" class="transitionAll" >Susu baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dsc2191_145432138573x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/mit.html" style="font-weight: bold;" class="transitionAll" >Mít </a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bingoi_145390677073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí ngòi" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-ngoi.html" style="font-weight: bold;" class="transitionAll" >Bí ngòi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">35.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/binhat_145390682873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-nhat.html" style="font-weight: bold;" class="transitionAll" >Bí Nhật</a></td><td width="10%" align="center" valign="middle">19.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">19.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">8</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/kho-qua_145114082673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Khổ qua" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/kho-qua.html" style="font-weight: bold;" class="transitionAll" >Khổ qua</a></td><td width="10%" align="center" valign="middle">25.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">25.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">9</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/biholo_145390673273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí hồ lô" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-ho-lo.html" style="font-weight: bold;" class="transitionAll" >Bí hồ lô</a></td><td width="10%" align="center" valign="middle">22.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">22.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">10</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/su-su_145114217773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Su su" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/su-su.html" style="font-weight: bold;" class="transitionAll" >Su su</a></td><td width="10%" align="center" valign="middle">16.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">16.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">11</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-tim_145113961473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà tím" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-tim.html" style="font-weight: bold;" class="transitionAll" >Cà tím</a></td><td width="10%" align="center" valign="middle">20.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">20.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">12</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caithao_145390770173x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải thảo" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-thao.html" style="font-weight: bold;" class="transitionAll" >Cải thảo</a></td><td width="10%" align="center" valign="middle">29.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">13</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-chua-anna_145113926673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Anna" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-anna.html" style="font-weight: bold;" class="transitionAll" >Cà chua Anna</a></td><td width="10%" align="center" valign="middle">29.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">14</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caixanhnon_145390787373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải xanh non" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-xanh-non.html" style="font-weight: bold;" class="transitionAll" >Cải xanh non</a></td><td width="10%" align="center" valign="middle">28.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">28.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">410.550 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">410.550 vnđ</span></strong></td>\n					</tr>\n					</table>', 1483677009, 1),
(27, 0, '9YYRIU', 'Trần Huyền Trâm', 'Trần Huyền Trâm', '0979804895', '245 Trương vĩnh ký, P.tân thành,q.tân phú', '245 Trương vĩnh ký', 1, 1, 95, 95, '', '', 'lantram88@gmail.com', 2, 2, 47250, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/img20160122203224_145432317273x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/susu-baby.html" style="font-weight: bold;" class="transitionAll" >Susu baby</a></td><td width="10%" align="center" valign="middle">45.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">45.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">47.250 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">47.250 vnđ</span></strong></td>\n					</tr>\n					</table>', 1485395146, 1);
INSERT INTO `table_order` (`id`, `id_user`, `madonhang`, `hoten_nn`, `hoten_tt`, `dienthoai`, `diachi_nn`, `diachi_tt`, `city_nn`, `city_tt`, `district_nn`, `district_tt`, `weight`, `height`, `email`, `httt`, `htvc`, `tonggia`, `ghichu`, `noidung`, `donhang`, `ngaytao`, `id_trangthai`) VALUES
(28, 0, '2SDUNN', 'NGUYỄN THÙY TRANG', 'NGUYỄN THÙY TRANG', '0908207208', '554/1/3 NGUYỄN ĐÌNH CHIỂU F4 Q3', '554/1/3 NGUYỄN ĐÌNH CHIỂU F4 Q3', 1, 1, 107, 107, '', '', 'trang79cs@gmail.com', 2, 2, 147000, '', 'giao hàng buổi sáng 11h', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">35.000 vnđ</td><td width="10%" align="center" valign="middle">4</td><td width="10%" align="center" valign="middle">140.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">147.000 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">147.000 vnđ</span></strong></td>\n					</tr>\n					</table>', 1487661271, 1),
(29, 0, 'Y38B0I', 'thanh Hậu', 'thanh Hậu', '01212282888', '72/14 đs 4 tam phú', '72/14 đs 4 tam phú', 1, 1, 92, 92, '', '', 'nhocquay.az@gmail.com', 2, 2, 136710, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">65.100 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">130.200 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">136.710 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">136.710 vnđ</span></strong></td>\n					</tr>\n					</table>', 1489411088, 1),
(30, 0, 'USYH9U', 'Tran Sam', 'Tran Sam', '0903385985', '10 tran khanh du q1', '8 tran khanh du', 1, 1, 109, 109, '', '', 'samcathy2012@yahoo.com', 2, 2, 68355, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">65.100 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">65.100 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">68.355 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">68.355 vnđ</span></strong></td>\n					</tr>\n					</table>', 1490280718, 1),
(31, 0, 'PNKWZW', 'Nguyễn Ngọc Lý', 'Nguyễn Ngọc Lý', '0904566886', 'M6-17, CC H3, Đường Hoàng Diệu, F6', 'M6-17, CC H3, Đường Hoàng Diệu, F6', 1, 1, 0, 0, '', '', 'ngocly79@gmail.com', 2, 2, 309855, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/nuocepdautam_149066652773x73_73x73.png" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/nuoc-ep-dau-tam.html" style="font-weight: bold;" class="transitionAll" >Nước ép dâu tằm</a></td><td width="10%" align="center" valign="middle">39.900 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">39.900 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/daucovenhat_145390919673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Cove Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-cove-nhat.html" style="font-weight: bold;" class="transitionAll" >Đậu Cove Nhật</a></td><td width="10%" align="center" valign="middle">36.800 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">36.800 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dau-ha-lan-ngot_145114046773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Hà Lan ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-ha-lan.html" style="font-weight: bold;" class="transitionAll" >Đậu Hà Lan</a></td><td width="10%" align="center" valign="middle">29.400 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.400 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dsc2195_145432126673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/tao-envy.html" style="font-weight: bold;" class="transitionAll" >Táo Envy </a></td><td width="10%" align="center" valign="middle">189.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">189.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">309.855 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">309.855 vnđ</span></strong></td>\n					</tr>\n					</table>', 1490757016, 1),
(32, 0, 'E7MIIR', 'Nguyễn Ngọc Lý', 'Nguyễn Ngọc Lý', '0904566886', 'M6-17, CC H3, Đường Hoàng Diệu, F6', 'M6-17, CC H3, Đường Hoàng Diệu, F6', 1, 1, 0, 0, '', '', 'ngocly79@gmail.com', 2, 2, 309855, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/nuocepdautam_149066652773x73_73x73.png" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/nuoc-ep-dau-tam.html" style="font-weight: bold;" class="transitionAll" >Nước ép dâu tằm</a></td><td width="10%" align="center" valign="middle">39.900 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">39.900 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/daucovenhat_145390919673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Cove Nhật" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-cove-nhat.html" style="font-weight: bold;" class="transitionAll" >Đậu Cove Nhật</a></td><td width="10%" align="center" valign="middle">36.800 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">36.800 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dau-ha-lan-ngot_145114046773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Hà Lan ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-ha-lan.html" style="font-weight: bold;" class="transitionAll" >Đậu Hà Lan</a></td><td width="10%" align="center" valign="middle">29.400 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.400 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dsc2195_145432126673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/tao-envy.html" style="font-weight: bold;" class="transitionAll" >Táo Envy </a></td><td width="10%" align="center" valign="middle">189.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">189.000 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">309.855 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">309.855 vnđ</span></strong></td>\n					</tr>\n					</table>', 1490757029, 1),
(33, 0, '3WIJBU', 'thanh Hậu', 'thanh Hậu', '01212282888', '72/14 đs 4 tam phú', '72/14 đs 4 tam phú', 1, 1, 92, 92, '', '', 'nhocquay.az@gmail.com', 2, 2, 196350, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">65.100 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">130.200 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203205_145432311873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/thap-cam-say-gion.html" style="font-weight: bold;" class="transitionAll" >Thập cẩm sấy giòn</a></td><td width="10%" align="center" valign="middle">28.400 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">56.800 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">196.350 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">196.350 vnđ</span></strong></td>\n					</tr>\n					</table>', 1491532423, 1),
(36, 0, '3WPB9X', 'le tien dung', 'le tien dung', '0123456789', 'dffa 456', 'dffa 456', 25, 25, 234, 234, '', '', 'dungltojb@gmail.com', 1, 0, 99330, '', 'fdfsaf', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/gia-do_149138475173x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/gia-do.html" style="font-weight: bold;" class="transitionAll" >Giá đỗ</a></td><td width="10%" align="center" valign="middle">47.300 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">94.600 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">99.330 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">99.330 vnđ</span></strong></td>\n					</tr>\n					</table>', 1500951409, 1),
(37, 0, 'ACV6J', 'Tran thi lan phuong', 'Tran thi lan phuong', '0909988240', '543/29 nguyen dinh chieu, phuong 2, quan 3', '543/29 nguyen dinh chieu, phuong 2, quan 3', 1, 1, 107, 107, '', '', 'anhsaodem29052008@yahoo.com', 2, 2, 72765, '', 'Vui long goi dien truoc khi giao hang vi so khong co ai o nha', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/img20160122203030_145432253873x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ngu-coc-nguyen-chat-que-toi.html" style="font-weight: bold;" class="transitionAll" >Ngũ cốc nguyên chất Quê tôi</a></td><td width="10%" align="center" valign="middle">69.300 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">69.300 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">72.765 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">72.765 vnđ</span></strong></td>\n					</tr>\n					</table>', 1504374207, 1),
(39, 0, 'C2BFJ8', 'Nguyễn ngọc diệu thiện', 'Nguyễn ngọc diệu thiện', '0914680024', '58/27 thống nhất', '58/27', 1, 1, 97, 97, '', '', 'thiennguyen17081991@yahoo.com', 2, 2, 30870, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dau-ha-lan-ngot_145114046773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu Hà Lan ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-ha-lan.html" style="font-weight: bold;" class="transitionAll" >Đậu Hà Lan</a></td><td width="10%" align="center" valign="middle">29.400 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.400 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">30.870 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">30.870 vnđ</span></strong></td>\n					</tr>\n					</table>', 1506093572, 1),
(40, 0, '7DJIDD', 'Olebuzz', 'Olebuzz', '01225511845', '48 Hung Vuong', '48 Hung Vuong', 58, 58, 294, 294, '', '', 'olebuzz@gmail.com', 1, 0, 60690, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dsc2167_145432159673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-beef.html" style="font-weight: bold;" class="transitionAll" >Cà chua beef</a></td><td width="10%" align="center" valign="middle">57.800 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">57.800 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">60.690 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">60.690 vnđ</span></strong></td>\n					</tr>\n					</table>', 1506764924, 1),
(41, 0, 'CL01RW', 'Hồng Phượng ', 'Hồng Phượng', '0937252388', '145/2 đường số 1, phường 4, quận gò vấp ', '145/2 đường số1, phường 4 ', 1, 1, 97, 97, '', '', 'hongphuongk29@yahoo.com', 2, 2, 272475, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bi-dao_145113915273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bầu xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bau-xanh.html" style="font-weight: bold;" class="transitionAll" >Bầu xanh</a></td><td width="10%" align="center" valign="middle">18.900 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.900 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/ca-chua-cherry_145113957373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Cherry" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/ca-chua-cherry.html" style="font-weight: bold;" class="transitionAll" >Cà chua Cherry</a></td><td width="10%" align="center" valign="middle">47.300 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">47.300 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caithao_145390770173x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải thảo" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-thao.html" style="font-weight: bold;" class="transitionAll" >Cải thảo</a></td><td width="10%" align="center" valign="middle">26.300 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">26.300 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/hanh-la_145114078073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Hành lá" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/hanh-la.html" style="font-weight: bold;" class="transitionAll" >Hành lá</a></td><td width="10%" align="center" valign="middle">52.500 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">52.500 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/tan-o_149077405473x73_73x73.jpg" style="width: 70px; height: auto;" alt="Tần ô" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/tan-o.html" style="font-weight: bold;" class="transitionAll" >Tần ô</a></td><td width="10%" align="center" valign="middle">44.100 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">44.100 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">6</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/caingot_145390748773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cải ngọt" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-ngot.html" style="font-weight: bold;" class="transitionAll" >Cải ngọt</a></td><td width="10%" align="center" valign="middle">29.400 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">29.400 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">7</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/su-su_145114217773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Su su" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/su-su.html" style="font-weight: bold;" class="transitionAll" >Su su</a></td><td width="10%" align="center" valign="middle">16.800 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">16.800 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">8</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/chuoilaba_145390891773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Chuối Laba" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/chuoi-laba.html" style="font-weight: bold;" class="transitionAll" >Chuối Laba</a></td><td width="10%" align="center" valign="middle">24.200 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">24.200 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">272.475 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">272.475 vnđ</span></strong></td>\n					</tr>\n					</table>', 1507984493, 1),
(42, 0, 'UWA5LZ', 'le van', 'le van', '123457890', 'ha noi', 'ha noi', 17, 19, 183, 185, '', '', 'qq1ww2rr3@gmail.com', 2, 2, 19845, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bap-cai-trang_145113911873x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bắp cải trắng" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bap-cai-trang.html" style="font-weight: bold;" class="transitionAll" >Bắp cải trắng</a></td><td width="10%" align="center" valign="middle">18.900 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">18.900 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">19.845 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">19.845 vnđ</span></strong></td>\n					</tr>\n					</table>', 1511771259, 1),
(43, 0, 'XRIQB6', 'Lê Thảo', 'Lê Thảo', '0976861227', '66/6 đường số 30 phường 6', '66/6 đường số 30 phường 6', 1, 1, 97, 97, '', '', 'lethaokthh@gmail.com', 2, 2, 242340, '', 'Giao càng sớm càng tốt', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/gia-do_149138475173x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/gia-do.html" style="font-weight: bold;" class="transitionAll" >Giá đỗ</a></td><td width="10%" align="center" valign="middle">40.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">40.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cai-kale_149075195373x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-kale-cai-xoan.html" style="font-weight: bold;" class="transitionAll" >Cải Kale ( cải xoăn)</a></td><td width="10%" align="center" valign="middle">84.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">84.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/cu-cai-do_151624759373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Củ cải đỏ" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cu-cai-do.html" style="font-weight: bold;" class="transitionAll" >Củ cải đỏ</a></td><td width="10%" align="center" valign="middle">70.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">70.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/dau-bap_145114023373x73_73x73.jpg" style="width: 70px; height: auto;" alt="Đậu bắp" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/dau-bap.html" style="font-weight: bold;" class="transitionAll" >Đậu bắp</a></td><td width="10%" align="center" valign="middle">36.800 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">36.800 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">242.340 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">242.340 vnđ</span></strong></td>\n					</tr>\n					</table>', 1518180929, 1),
(44, 0, '6X671X', 'Dau Thi Mui', 'Dau Thi Mui', '0908191168', '22 Vũ Huy Tấn , f3', '22 Vu Huy Tan, f3', 1, 1, 94, 94, '', '', 'muitdau@gmail.com', 2, 2, 103635, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/lolo-xanh_145114097073x73_73x73.jpg" style="width: 70px; height: auto;" alt="Lô lô xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/xa-lach-lo-lo-xanh.html" style="font-weight: bold;" class="transitionAll" >Xà lách Lô lô xanh</a></td><td width="10%" align="center" valign="middle">31.500 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">31.500 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://www.thegioinongsan.com.vn/upload/products/ca-chua-anna_145113926673x73_73x73.jpg" style="width: 70px; height: auto;" alt="Cà chua Anna" /></td><td width="15%" align="center" valign="middle"><a href="http://www.thegioinongsan.com.vn/san-pham/ca-chua-anna.html" style="font-weight: bold;" class="transitionAll" >Cà chua Anna</a></td><td width="10%" align="center" valign="middle">33.600 vnđ</td><td width="10%" align="center" valign="middle">2</td><td width="10%" align="center" valign="middle">67.200 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">103.635 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">103.635 vnđ</span></strong></td>\n					</tr>\n					</table>', 1520700551, 1),
(48, 0, 'UE6QH2', 'Phương', 'Phương', '0975050847', '15/5 đường an phú đông 25 phường an phú đông ', '15/5 đường An phú đông 25 phường an phú đông', 1, 1, 98, 98, '', '', 'ninhphuong247@gmail.com', 2, 2, 172200, '', '', '<table cellpadding="0" cellspacing="0" style="width:100%; border: none;"><tr bgcolor="#f8f8f8" style="font-weight:bold;height: 30px;"><td align="center" >Stt</td><td align="center" >Hình ảnh</td><td align="center" >Tên</td><td align="center" >Giá</td><td align="center" >Số lượng</td><td align="center" >Tổng giá</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">1</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/biholo_145390673273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bí hồ lô" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-ho-lo.html" style="font-weight: bold;" class="transitionAll" >Bí hồ lô</a></td><td width="10%" align="center" valign="middle">24.200 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">24.200 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">2</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/bi-dao_149077444673x73_73x73.jpg" style="width: 70px; height: auto;" alt="" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bi-dao.html" style="font-weight: bold;" class="transitionAll" >Bí đao</a></td><td width="10%" align="center" valign="middle">21.000 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">21.000 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">3</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/chuoilaba_145390891773x73_73x73.jpg" style="width: 70px; height: auto;" alt="Chuối Laba" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/chuoi-laba.html" style="font-weight: bold;" class="transitionAll" >Chuối Laba</a></td><td width="10%" align="center" valign="middle">24.200 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">24.200 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">4</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/sup-lo_149077371273x73_73x73.jpg" style="width: 70px; height: auto;" alt="Bông cải xanh" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/bong-cai-xanh.html" style="font-weight: bold;" class="transitionAll" >Bông cải xanh</a></td><td width="10%" align="center" valign="middle">47.300 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">47.300 vnđ</td></tr><tr style="text-align: center;background: #fff;"><td width="5%" align="center" valign="middle">5</td><td width="15%" align="center" valign="middle"><img src="http://thegioinongsan.com.vn/upload/products/rau-bo-xoi_149078004373x73_73x73.png" style="width: 70px; height: auto;" alt="Cải bó xôi" /></td><td width="15%" align="center" valign="middle"><a href="http://thegioinongsan.com.vn/san-pham/cai-bo-xoi.html" style="font-weight: bold;" class="transitionAll" >Cải bó xôi</a></td><td width="10%" align="center" valign="middle">47.300 vnđ</td><td width="10%" align="center" valign="middle">1</td><td width="10%" align="center" valign="middle">47.300 vnđ</td></tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>VAT 5%</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">5%</span></td>\n					</tr>\n                    <tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;"><strong>Thành tiền</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;"><span class="load-price">172.200 vnđ</span></td>\n					</tr>\n					<tr style="text-align: center;background: #fff;">\n						<td colspan="5" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;">Tổng cộng</strong></td>\n						<td colspan="1" align="right" style="height:30px;padding-right: 5px;font-size: 13px;"><strong style="color: #f00;"><span class="load-price">172.200 vnđ</span></strong></td>\n					</tr>\n					</table>', 1531067131, 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_pricelist`
--

CREATE TABLE `table_pricelist` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pricelist`
--

INSERT INTO `table_pricelist` (`id`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`, `viewed`) VALUES
(1, 'chuong-trinh-khuyen-mai-may-ao-thun-nam-2015', 'Chương trình khuyến mãi may áo thun năm 2015', 'Với mong muốn cung cấp cho khách hàng chiếc áo thun đẹp, chất lượng với nhiều ưu đãi hấp dẫn. Công ty chúng luôn có chương trình khuyến mãi khi khách hàng đăt may áo thun năm 2015. Liên hệ 0982476002 để biết thêm chi tiết.\r\nTrân trọng cảm ơn\r\n\r\n\r\n', '<p>Với mong muốn cung cấp cho kh&aacute;ch h&agrave;ng chiếc &aacute;o thun đẹp, chất lượng với nhiều ưu đ&atilde;i hấp dẫn. C&ocirc;ng ty ch&uacute;ng lu&ocirc;n c&oacute; chương tr&igrave;nh khuyến m&atilde;i khi kh&aacute;ch h&agrave;ng đăt may &aacute;o thun năm 2015. Li&ecirc;n hệ <strong>0982476002</strong> để biết th&ecirc;m chi tiết.<br />\r\nTr&acirc;n trọng cảm ơn</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Khuyến mãi may áo thun 2015, khuyen mai may ao thun dong phuc 2015, khuyen mai may ao thun 2015', 'Khuyến mãi may áo thun 2015, khuyen mai may ao thun dong phuc 2015, khuyen mai may ao thun 2015', 'Khuyến mãi may áo thun 2015, khuyen mai may ao thun dong phuc 2015, khuyen mai may ao thun 2015', '', '', '', '', '', '', 'imgitem_1414728508.jpg', 'imgitem_1414728508_300x215.jpg', 'Khuyến mãi may áo thun 2015, khuyen mai may ao thun dong phuc 2015, khuyen mai may ao thun 2015', 1, 1, 1414728508, 1429524313, 162);

-- --------------------------------------------------------

--
-- Table structure for table `table_product`
--

CREATE TABLE `table_product` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_provider` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` text NOT NULL,
  `noidung_vi` longtext NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` text NOT NULL,
  `noidung_en` longtext NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `thumb4` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `images` text NOT NULL,
  `quatang` varchar(1024) NOT NULL,
  `video_link` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `shows_top` int(11) NOT NULL,
  `shows_new` int(11) NOT NULL,
  `shows_like` int(11) NOT NULL,
  `shows_sale` int(11) NOT NULL,
  `type_format` varchar(20) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product`
--

INSERT INTO `table_product` (`id`, `id_list`, `id_cat`, `id_item`, `id_provider`, `code`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `thumb3`, `thumb4`, `alt`, `images`, `quatang`, `video_link`, `price`, `sale`, `unit`, `numberic`, `shows`, `shows_popup`, `shows_top`, `shows_new`, `shows_like`, `shows_sale`, `type_format`, `date_create`, `date_update`, `viewed`) VALUES
(1, 1, 0, 0, 0, 'MSP-', 'bap-cai-tim', 'Bắp cải tím', 'Bắp cải tím', '<p>L&yacute; do bắp cải t&iacute;m cần c&oacute; trong bữa ăn h&agrave;ng ng&agrave;y của bạn:</p>\r\n<p>- Ngăn ngừa ung thư</p>\r\n<p>- Giảm c&acirc;n</p>\r\n<p>- Mắt s&aacute;ng</p>\r\n<p>- Tăng cường hệ miễn dịchh</p>\r\n<p>- Ngăn ngừa lo&atilde;ng xương</p>\r\n<p>- Cải thiện bệnh vi&ecirc;m lo&eacute;t dạ d&agrave;y</p>', 'Bắp cải tím', 'Bắp cải tím', 'Bắp cải tím', '', '', '', '', '', '', 'cachlammutduatubapcaitim1_1490774263.jpg', 'cachlammutduatubapcaitim1_149077426373x73_73x73.jpg', 'cachlammutduatubapcaitim1_1490774263268x268_268x268.jpg', 'cachlammutduatubapcaitim1_1490774263500x500_500x500.jpg', 'cachlammutduatubapcaitim1_1490774263800x800_800x800.jpg', 'red-velvet-cupcake_14472005091024x1024_1024x1024.jpg', 'Bắp cải tím', '', '', '', 42000, 0, 'kg', 2, 1, 1, 0, 0, 1, 0, 'image', 1443249583, 1490774914, 567),
(18, 15, 0, 0, 0, 'MSP-', 'dua-leo-baby', 'Dưa leo Baby', 'Dưa leo Baby', '<p>Dưa leo Baby</p>', 'Dưa leo Baby', 'Dưa leo Baby', 'Dưa leo Baby', '', '', '', '', '', '', 'dua-leo-bayby_1451140666.jpg', 'dua-leo-bayby_145114066673x73_73x73.jpg', 'dua-leo-bayby_1451140667268x268_268x268.jpg', 'dua-leo-bayby_1451140667500x500_500x500.jpg', 'dua-leo-bayby_1451140668800x800_800x800.jpg', '', 'Dưa leo Baby', '', '', '', 42000, 0, 'kg', 49, 1, 0, 0, 0, 1, 0, '', 1451140668, 1494925714, 316),
(19, 15, 0, 0, 0, 'MSP-', 'dua-leo', 'Dưa leo', 'Dưa leo', '<p>Dưa leo</p>', 'Dưa leo', 'Dưa leo', 'Dưa leo', '', '', '', '', '', '', 'dua-leo_1451140747.jpg', 'dua-leo_145114074773x73_73x73.jpg', 'dua-leo_1451140747268x268_268x268.jpg', 'dua-leo_1451140748500x500_500x500.jpg', 'dua-leo_1451140748800x800_800x800.jpg', '', 'Dưa leo', '', '', '', 31500, 0, 'kg', 50, 1, 0, 0, 0, 1, 0, '', 1451140749, 1532302995, 289),
(2, 1, 0, 0, 0, 'MSP-', 'bap-cai-trai-tim', 'Bắp cải trái tim', 'Bắp cải trái tim', '<p><strong>Bắp cải tr&aacute;i tim</strong>&nbsp;c&oacute; t&iacute;nh m&aacute;t, vị ngọt c&oacute; c&ocirc;ng dụng tẩy giun, lọc m&aacute;u, bồi dưỡng cơ thể, nhanh l&agrave;nh vết thương, trị vi&ecirc;m lo&eacute;t dạ d&agrave;y... Ở nhiều nước Ch&acirc;u &Acirc;u, bắp cải được xem l&agrave; loại thuốc chữa b&aacute;ch bệnh cho người ngh&egrave;o.</p>\r\n<p>Bắp cải c&oacute; gi&aacute; trị dinh dưỡng cao, chứa vitamin A, P, C, E, H v&agrave; một số kho&aacute;ng chất thiết yếu tăng cường năng lượng cho cơ thể. Đặc biệt, h&agrave;m lượng vitamin C trong bắp cải cao gấp 4 lần so với c&agrave; rốt.</p>\r\n<p>C&aacute;c nghi&ecirc;n cứu đ&atilde; chứng minh, bắp cải chứa nhiều chất chống ung thư. Một tuần ăn 3 đến 4 bắp cải sẽ c&oacute; t&aacute;c dụng chống ung thư dạ d&agrave;y, ung thư ruột.</p>', 'Bắp cải trái tim', 'Bắp cải trái tim', 'Bắp cải trái tim', '', '', '', '', '', '', 'su-tim_1490774238.jpg', 'su-tim_149077423873x73_73x73.jpg', 'su-tim_1490774238268x268_268x268.jpg', 'su-tim_1490774238500x500_500x500.jpg', 'su-tim_1490774238800x800_800x800.jpg', 'matcha-cupcake_14471985521024x1024_1024x1024.jpg', 'Bắp cải trái tim', '', '', '', 40000, 0, 'kg', 3, 1, 1, 0, 0, 0, 0, 'image', 1443402563, 1516248045, 461),
(15, 15, 0, 0, 0, 'MSP-', 'dau-bap', 'Đậu bắp', 'Đậu bắp', '<p>Đậu bắp</p>', 'Đậu bắp', 'Đậu bắp', 'Đậu bắp', '', '', '', '', '', '', 'dau-bap_1451140233.jpg', 'dau-bap_145114023373x73_73x73.jpg', 'dau-bap_1451140233268x268_268x268.jpg', 'dau-bap_1451140234500x500_500x500.jpg', 'dau-bap_1451140234800x800_800x800.jpg', '', 'Đậu bắp', '', '', '', 36800, 0, 'kg', 42, 1, 0, 0, 0, 1, 0, '', 1451140235, 1493007430, 300),
(16, 15, 0, 0, 0, 'MSP-', 'dau-cove-thuong', 'Đậu Cove Thường', 'Đậu Cove', '<p>Đậu Cove Thường</p>', 'Đậu Cove Thường', 'Đậu Cove Thường', 'Đậu Cove Thường', '', '', '', '', '', '', 'dau-cove_1451140278.jpg', 'dau-cove_145114027873x73_73x73.jpg', 'dau-cove_1451140278268x268_268x268.jpg', 'dau-cove_1451140278500x500_500x500.jpg', 'dau-cove_1451140279800x800_800x800.jpg', '', 'Đậu Cove Thường', '', '', '', 31500, 0, 'kg', 43, 1, 0, 0, 0, 1, 0, '', 1451140280, 1489738979, 277),
(17, 15, 0, 0, 0, 'MSP-', 'dau-ha-lan', 'Đậu Hà Lan', 'Đậu Hà Lan ngọt', '<p>Đậu H&agrave; Lan c&oacute; m&agrave;u xanh l&aacute; tươi, gi&ograve;n ngọt, c&oacute; gi&aacute; trị dinh dưỡng cao. Chế biến đậu h&agrave; lan vừa ch&iacute;n tới sẽ gi&uacute;p giữ lại lượng dinh dưỡng cao.</p>', 'Đậu Hà Lan ngọt', 'Đậu Hà Lan ngọt', 'Đậu Hà Lan ngọt', '', '', '', '', '', '', 'dau-ha-lan-ngot_1451140467.jpg', 'dau-ha-lan-ngot_145114046773x73_73x73.jpg', 'dau-ha-lan-ngot_1451140468268x268_268x268.jpg', 'dau-ha-lan-ngot_1451140468500x500_500x500.jpg', 'dau-ha-lan-ngot_1451140468800x800_800x800.jpg', '', 'Đậu Hà Lan ngọt', '', '', '', 30000, 0, 'goi200g', 45, 1, 0, 1, 0, 1, 0, '', 1451140469, 1532302915, 575),
(3, 1, 0, 0, 0, 'MSP-', 'bap-cai-trang', 'Bắp cải trắng', 'Bắp cải trắng', '<p><span>Th&agrave;nh phần : &nbsp;Gi&agrave;u muối kho&aacute;ng, nhất l&agrave; canxi (48mg%) v&agrave; lượng vitamin C trong cải bắp &iacute;t hơn c&agrave; chua nhưng nhiều gấp 4,5 lần c&agrave; rốt, 3,6 lần khoai t&acirc;y, h&agrave;nh t&acirc;y. Bởi vậy&nbsp;</span><strong><a href="http://mimosa.farm/products/bap-cai-trang">bắp cải trắng</a></strong><span>&nbsp;c&oacute; rất nhiều c&ocirc;ng dụng: h&ograve;a huyết, thanh nhiệt, thanh phế, m&aacute;t dạ d&agrave;y, giải độc, lợi tiểu, &nbsp;hạ cholesterol trong m&aacute;u, giảm rối loạn mỡ m&aacute;u, chống kh&ocirc; da, chống l&atilde;o h&oacute;a da, tốt cho bệnh nh&acirc;n gout. &nbsp;Tuy nhi&ecirc;n, ai bị bệnh bướu gi&aacute;p hay tăng kali m&aacute;u kh&ocirc;ng n&ecirc;n d&ugrave;ng nh&eacute; v&igrave; bắp cải chứa một h&agrave;m lượng nhỏ goitrin. Chất n&agrave;y c&oacute; t&aacute;c dụng chống &ocirc;xy h&oacute;a nhưng lại c&oacute; thể g&acirc;y bướu cổ. Bệnh nh&acirc;n suy thận nặng, phải chạy thận nh&acirc;n tạo cũng kh&ocirc;ng n&ecirc;n d&ugrave;ng.</span></p>', 'Bắp cải trắng', 'Bắp cải trắng', 'Bắp cải trắng', '', '', '', '', '', '', 'bap-cai-trang_1451139118.jpg', 'bap-cai-trang_145113911873x73_73x73.jpg', 'bap-cai-trang_1451139118268x268_268x268.jpg', 'bap-cai-trang_1451139118500x500_500x500.jpg', 'bap-cai-trang_1451139119800x800_800x800.jpg', 'mocha-cupcake_14471969181024x1024_1024x1024.jpg', 'Bắp cải trắng', '', '', '', 22000, 0, 'kg', 4, 1, 1, 0, 0, 1, 0, 'image', 1443403419, 1516246072, 687),
(13, 1, 0, 0, 0, 'MSP-', 'cai-thia-bok-choi', 'Cải thìa Bok choi', 'Cải thìa Bok choi', '<p>Cải th&igrave;a Bok choi</p>', 'Cải thìa Bok choi', 'Cải thìa Bok choi', 'Cải thìa Bok choi', '', '', '', '', '', '', 'cai-thia_1490773918.jpg', 'cai-thia_149077391873x73_73x73.jpg', 'cai-thia_1490773918268x268_268x268.jpg', 'cai-thia_1490773918500x500_500x500.jpg', 'cai-thia_1490773918800x800_800x800.jpg', '', 'Cải thìa Bok choi', '', '', '', 33600, 0, 'kg', 31, 1, 0, 0, 0, 1, 0, '', 1451140134, 1490773918, 377),
(14, 15, 0, 0, 0, 'MSP-', 'cu-cai-do', 'Củ cải đỏ', 'Củ cải đỏ', '<p>Củ cải đỏ (củ cải đường) kh&ocirc;ng chỉ cung cấp cho bạn nhiều vitamin m&agrave; c&ograve;n gi&uacute;p giải độc tố một c&aacute;ch hiệu quả.</p>\r\n<p>Củ cải c&oacute; chứa nhiều loại vitamin B, nhiều loại kho&aacute;ng chất c&oacute; lợi cho cơ thể.&nbsp;<span>Nước &eacute;p củ cải đỏ </span><span>c&oacute; t&aacute;c dụng rất tốt trong việc điều trị v&agrave; ức chế sự ph&aacute;t triển của tế b&agrave;o ung thư. Ăn củ cải đường được coi l&agrave; c&aacute;ch giảm cholesterol rất hiệu quả.</span></p>', 'Củ cải đỏ', 'Củ cải đỏ', 'Củ cải đỏ', '', '', '', '', '', '', 'cu-cai-do_1516247593.jpg', 'cu-cai-do_151624759373x73_73x73.jpg', 'cu-cai-do_1516247593268x268_268x268.jpg', 'cu-cai-do_1516247593500x500_500x500.jpg', 'cu-cai-do_1516247593800x800_800x800.jpg', '', 'Củ cải đỏ', '', '', '', 70000, 0, 'kg', 39, 1, 0, 0, 0, 1, 0, '', 1451140195, 1516247593, 401),
(4, 15, 0, 0, 0, 'MSP-', 'bau-xanh', 'Bầu xanh', 'Bầu xanh', '<p>Bầu xanh</p>', 'Bầu xanh', 'Bầu xanh', 'Bầu xanh', '', '', '', '', '', '', 'bi-dao_1451139152.jpg', 'bi-dao_145113915273x73_73x73.jpg', 'bi-dao_1451139152268x268_268x268.jpg', 'bi-dao_1451139153500x500_500x500.jpg', 'bi-dao_1451139153800x800_800x800.jpg', 'lemon-cupcake_14470018791024x1024_1024x1024.jpg', 'Bầu xanh', '', '', '', 18000, 0, 'kg', 6, 1, 1, 0, 0, 1, 0, 'image', 1443403707, 1532302779, 552),
(11, 1, 0, 0, 0, 'MSP-', 'cai-be-xanh', 'Cải bẹ xanh', 'Cải bẹ xanh', '<p>Cải bẹ xanh</p>', 'Cải bẹ xanh', 'Cải bẹ xanh', 'Cải bẹ xanh', '', '', '', '', '', '', 'cai-be-xanh_1516247206.jpg', 'cai-be-xanh_151624720673x73_73x73.jpg', 'cai-be-xanh_1516247206268x268_268x268.jpg', 'cai-be-xanh_1516247206500x500_500x500.jpg', 'cai-be-xanh_1516247206800x800_800x800.jpg', '', 'Cải bẹ xanh', '', '', '', 30000, 0, 'kg', 25, 1, 0, 0, 0, 1, 0, '', 1451139996, 1532302803, 401),
(12, 1, 0, 0, 0, 'MSP-', 'cai-bo-xoi', 'Cải bó xôi', 'Cải bó xôi', '<p><span>Cải b&oacute; x&ocirc;i c&ograve;n gọi l&agrave; rau ch&acirc;n vịt, c&oacute; t&ecirc;n khoa học l&agrave; Spinacia oleracea L. Chenopodiaceae. Cải b&oacute; x&ocirc;i thường c&oacute; cuống nhỏ v&agrave; l&aacute; xanh đậm, l&aacute; mọc chụm lại ở một gốc b&eacute; x&iacute;u. Th&acirc;n v&agrave; l&aacute; d&ograve;n, dễ g&atilde;y, dập. Cải b&oacute; x&ocirc;i kh&ocirc;ng những l&agrave; một m&oacute;n ăn ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng rất &ldquo;thần kỳ&rdquo; trong y học để ph&ograve;ng v&agrave; chữa nhiều bệnh</span></p>\r\n<p><span>C&ocirc;ng dụng:</span></p>\r\n<p><span>- Chống ung thư tiền liệt tuyến</span></p>\r\n<p><span>- Chống ung thư buồng trứng</span></p>\r\n<p><span>- Gi&uacute;p xương chắc khỏe</span></p>\r\n<p><span>- Tốt cho mắt</span></p>\r\n<p><span>- Bảo vệ tim mạch</span></p>', 'Cải bó xôi', 'Cải bó xôi', 'Cải bó xôi', '', '', '', '', '', '', 'rau-bo-xoi_1490780043.png', 'rau-bo-xoi_149078004373x73_73x73.png', 'rau-bo-xoi_1490780043268x268_268x268.png', 'rau-bo-xoi_1490780043500x500_500x500.png', 'rau-bo-xoi_1490780043800x800_800x800.png', '', 'Cải bó xôi', '', '', '', 45000, 0, 'kg', 26, 1, 0, 0, 0, 1, 0, '', 1451140026, 1532308561, 458),
(5, 1, 0, 0, 0, 'MSP-', 'bong-cai-xanh', 'Bông cải xanh', 'Bông cải xanh', '<p>B&ocirc;ng cải xanh l&agrave; một c&acirc;y thuộc họ cải, c&oacute; vị gi&ograve;n ngọt.</p>\r\n<p>Những lợi &iacute;ch tuyệt vời của B&ocirc;ng cải xanh:</p>\r\n<p>- Ngăn ngừa tho&aacute;i h&oacute;a khớp</p>\r\n<p>- Ngăn ngừa ung thư</p>\r\n<p>- Tốt cho huyết &aacute;p v&agrave; thận</p>\r\n<p>- Chống l&atilde;o h&oacute;a v&agrave; hệ thống miễn dịch</p>\r\n<p>- Hỗ trợ giải độc cơ thể</p>', 'Bông cải xanh', 'Bông cải xanh', 'Bông cải xanh', '', '', '', '', '', '', 'sup-lo_1490773712.jpg', 'sup-lo_149077371273x73_73x73.jpg', 'sup-lo_1490773712268x268_268x268.jpg', 'sup-lo_1490773712500x500_500x500.jpg', 'sup-lo_1490773712800x800_800x800.jpg', 'chocolate-cupcake_14465060851024x1024_1024x1024.jpg', 'Bông cải xanh', '', '', '', 50000, 0, 'kg', 14, 1, 1, 0, 0, 1, 0, 'gallery', 1443403877, 1532308507, 535),
(7, 15, 0, 0, 0, 'MSP-', 'ca-chua-anna', 'Cà chua Anna', 'Cà chua Anna', '<p>C&agrave; chua Anna</p>', 'Cà chua Anna', 'Cà chua Anna', 'Cà chua Anna', '', '', '', '', '', '', 'ca-chua-anna_1451139266.jpg', 'ca-chua-anna_145113926673x73_73x73.jpg', 'ca-chua-anna_1451139266268x268_268x268.jpg', 'ca-chua-anna_1451139267500x500_500x500.jpg', 'ca-chua-anna_1451139267800x800_800x800.jpg', '', 'Cà chua Anna', '', '', '', 28000, 0, 'kg', 17, 1, 0, 0, 0, 1, 0, '', 1451139268, 1532302764, 548),
(77, 1, 0, 0, 0, '', 'rau-muong-mam-app', 'Rau muống mầm APP', 'Rau muống mầm APP', '', 'Rau muống mầm APP', 'Rau muống mầm APP', 'Rau muống mầm APP', '', '', '', '', '', '', 'img1183_1470822463.JPG', 'img1183_147082246373x73_73x73.jpg', 'img1183_1470822464268x268_268x268.jpg', 'img1183_1470822464500x500_500x500.jpg', 'img1183_1470822464800x800_800x800.jpg', '', '', '', '', '', 15000, 0, 'hop150g', 132, 1, 0, 0, 1, 1, 0, '', 1470822464, 1489736011, 362),
(9, 15, 0, 0, 0, 'MSP-', 'ca-chua-cherry', 'Cà chua Cherry', 'Cà chua Cherry', '<p>C&agrave; chua Cherry quả tr&ograve;n nhỏ, vị chua nhưng ngọt hơn so với c&agrave; chua thường.</p>\r\n<p>Tuy nhỏ nhưng c&ocirc;ng dụng của c&agrave; chua cherry hơn hẳn những loại c&agrave; chua th&ocirc;ng thường, giảm lượng đường trong m&aacute;u, ngăn ngừa ung thư, gi&uacute;p đẹp da, s&aacute;ng mắt v&agrave; gi&uacute;p giảm c&acirc;n</p>', 'Cà chua Cherry', 'Cà chua Cherry', 'Cà chua Cherry', '', '', '', '', '', '', 'ca-chua-cherry_1451139573.jpg', 'ca-chua-cherry_145113957373x73_73x73.jpg', 'ca-chua-cherry_1451139574268x268_268x268.jpg', 'ca-chua-cherry_1451139574500x500_500x500.jpg', 'ca-chua-cherry_1451139575800x800_800x800.jpg', '', 'Cà chua Cherry', '', '', '', 47300, 0, 'kg', 20, 1, 0, 1, 0, 1, 0, '', 1451139576, 1490778681, 530),
(10, 15, 0, 0, 0, 'MSP-', 'ca-tim', 'Cà tím', 'Cà tím', '<p>C&agrave; t&iacute;m</p>', 'Cà tím', 'Cà tím', 'Cà tím', '', '', '', '', '', '', 'ca-tim-thuong_1516247531.jpg', 'ca-tim-thuong_151624753173x73_73x73.jpg', 'ca-tim-thuong_1516247531268x268_268x268.jpg', 'ca-tim-thuong_1516247531500x500_500x500.jpg', 'ca-tim-thuong_1516247531800x800_800x800.jpg', '', 'Cà tím', '', '', '', 21000, 0, 'kg', 22, 1, 0, 0, 0, 1, 0, '', 1451139617, 1516247531, 376),
(20, 1, 0, 0, 0, 'MSP-', 'hanh-la', 'Hành lá', 'Hành lá', '<p>H&agrave;nh l&aacute;</p>', 'Hành lá', 'Hành lá', 'Hành lá', '', '', '', '', '', '', 'hanh-la_1516247400.jpg', 'hanh-la_151624740073x73_73x73.jpg', 'hanh-la_1516247400268x268_268x268.jpg', 'hanh-la_1516247400500x500_500x500.jpg', 'hanh-la_1516247400800x800_800x800.jpg', '', 'Hành lá', '', '', '', 35000, 0, 'kg', 57, 1, 0, 0, 0, 1, 0, '', 1451140782, 1532391494, 301),
(21, 15, 0, 0, 0, 'MSP-', 'kho-qua', 'Khổ qua', 'Khổ qua', '<p>Khổ qua</p>', 'Khổ qua', 'Khổ qua', 'Khổ qua', '', '', '', '', '', '', 'kho-qua_1451140826.jpg', 'kho-qua_145114082673x73_73x73.jpg', 'kho-qua_1451140826268x268_268x268.jpg', 'kho-qua_1451140827500x500_500x500.jpg', 'kho-qua_1451140827800x800_800x800.jpg', '', 'Khổ qua', '', '', '', 31500, 0, 'kg', 62, 1, 0, 0, 0, 1, 0, '', 1451140828, 1493003877, 277),
(22, 1, 0, 0, 0, 'MSP-', 'xa-lach-lo-lo-xanh', 'Xà lách Lô lô xanh', 'Lô lô xanh', '<p>L&ocirc; l&ocirc; xanh</p>', 'Lô lô xanh', 'Lô lô xanh', 'Lô lô xanh', '', '', '', '', '', '', 'lolo-xanh_1451140970.jpg', 'lolo-xanh_145114097073x73_73x73.jpg', 'lolo-xanh_1451140970268x268_268x268.jpg', 'lolo-xanh_1451140970500x500_500x500.jpg', 'lolo-xanh_1451140971800x800_800x800.jpg', '', 'Lô lô xanh', '', '', '', 36000, 0, 'kg', 122, 1, 0, 0, 0, 1, 0, '', 1451140971, 1521185848, 322),
(23, 15, 0, 0, 0, 'MSP-', 'ot-chuong-vang', 'Ớt chuông vàng', 'Ớt chuông vàng', '<p>Ớt chu&ocirc;ng v&agrave;ng</p>', 'Ớt chuông vàng', 'Ớt chuông vàng', 'Ớt chuông vàng', '', '', '', '', '', '', 'ot-chuong-vang_1451141051.jpg', 'ot-chuong-vang_145114105173x73_73x73.jpg', 'ot-chuong-vang_1451141051268x268_268x268.jpg', 'ot-chuong-vang_1451141051500x500_500x500.jpg', 'ot-chuong-vang_1451141052800x800_800x800.jpg', '', 'Ớt chuông vàng', '', '', '', 57800, 0, 'kg', 92, 1, 0, 0, 0, 1, 0, '', 1451141053, 1489739065, 313),
(24, 15, 0, 0, 0, 'MSP-', 'ot-chuong-xanh', 'Ớt chuông xanh', 'Ớt chuông xanh', '<p>Ớt chu&ocirc;ng xanh</p>', 'Ớt chuông xanh', 'Ớt chuông xanh', 'Ớt chuông xanh', '', '', '', '', '', '', 'ot-chuong-xanh_1451141171.jpg', 'ot-chuong-xanh_145114117173x73_73x73.jpg', 'ot-chuong-xanh_1451141172268x268_268x268.jpg', 'ot-chuong-xanh_1451141172500x500_500x500.jpg', 'ot-chuong-xanh_1451141172800x800_800x800.jpg', '', 'Ớt chuông xanh', '', '', '', 50000, 0, 'kg', 93, 1, 0, 0, 0, 1, 0, '', 1451141172, 1532391554, 268),
(25, 15, 0, 0, 0, 'MSP-', 'ot-chuong-do', 'Ớt chuông đỏ', 'Ớt chuông đỏ', '<p>Ớt chu&ocirc;ng đỏ</p>', 'Ớt chuông đỏ', 'Ớt chuông đỏ', 'Ớt chuông đỏ', '', '', '', '', '', '', 'ot-chuong-do_1451141357.jpg', 'ot-chuong-do_145114135773x73_73x73.jpg', 'ot-chuong-do_1451141357268x268_268x268.jpg', 'ot-chuong-do_1451141357500x500_500x500.jpg', 'ot-chuong-do_1451141357800x800_800x800.jpg', '', 'Ớt chuông đỏ', '', '', '', 55000, 0, 'kg', 91, 1, 0, 0, 0, 1, 0, '', 1451141358, 1532303033, 302),
(26, 1, 0, 0, 0, 'MSP-', 'paro-hanh', 'Paro hành', 'Paro hành', '<p>Paro h&agrave;nh</p>', 'Paro hành', 'Paro hành', 'Paro hành', '', '', '', '', '', '', 'paro-hanh_1451141423.jpg', 'paro-hanh_145114142373x73_73x73.jpg', 'paro-hanh_1451141423268x268_268x268.jpg', 'paro-hanh_1451141424500x500_500x500.jpg', 'paro-hanh_1451141424800x800_800x800.jpg', '', 'Paro hành', '', '', '', 47300, 0, 'kg', 95, 1, 0, 0, 0, 1, 0, '', 1451141425, 1489736539, 287),
(27, 1, 0, 0, 0, 'MSP-', 'rau-den-baby', 'Rau dền Baby', 'Rau dền Baby', '<p>Rau dền Baby</p>', 'Rau dền Baby', 'Rau dền Baby', 'Rau dền Baby', '', '', '', '', '', '', 'rau-den_1516247299.png', 'rau-den_151624729973x73_73x73.png', 'rau-den_1516247299268x268_268x268.png', 'rau-den_1516247299500x500_500x500.png', 'rau-den_1516247299800x800_800x800.png', '', 'Rau dền Baby', '', '', '', 36800, 0, 'kg', 99, 1, 0, 0, 0, 1, 0, '', 1451141846, 1516247300, 374),
(28, 1, 0, 0, 0, 'MSP-', 'rau-mong-toi', 'Rau mồng tơi', 'Rau mồng tơi', '<p>Rau mồng tơi</p>', 'Rau mồng tơi', 'Rau mồng tơi', 'Rau mồng tơi', '', '', '', '', '', '', 'mong-toi_1516247275.jpg', 'mong-toi_151624727573x73_73x73.jpg', 'mong-toi_1516247275268x268_268x268.jpg', 'mong-toi_1516247275500x500_500x500.jpg', 'mong-toi_1516247275800x800_800x800.jpg', '', 'Rau mồng tơi', '', '', '', 30000, 0, 'kg', 103, 1, 0, 0, 0, 1, 0, '', 1451141903, 1532303054, 343),
(29, 1, 0, 0, 0, 'MSP-', 'rau-muong-baby', 'Rau muống Baby', 'Rau muống Baby', '<p>Rau muống Baby</p>', 'Rau muống Baby', 'Rau muống Baby', 'Rau muống Baby', '', '', '', '', '', '', 'rau-muong_1516247332.jpg', 'rau-muong_151624733273x73_73x73.jpg', 'rau-muong_1516247332268x268_268x268.jpg', 'rau-muong_1516247333500x500_500x500.jpg', 'rau-muong_1516247334800x800_800x800.jpg', '', 'Rau muống Baby', '', '', '', 33600, 0, 'kg', 104, 1, 0, 0, 0, 1, 0, '', 1451141985, 1516247334, 437),
(30, 1, 0, 0, 0, 'MSP-', 'rau-thom-hon-hop', 'Rau thơm hỗn hợp', 'Rau thơm', '<p>Rau thơm</p>', 'Rau thơm', 'Rau thơm', 'Rau thơm', '', '', '', '', '', '', 'rau-thom_1451142048.jpg', 'rau-thom_145114204873x73_73x73.jpg', 'rau-thom_1451142048268x268_268x268.jpg', 'rau-thom_1451142049500x500_500x500.jpg', 'rau-thom_1451142049800x800_800x800.jpg', '', 'Rau thơm', '', '', '', 45000, 0, 'kg', 109, 1, 0, 0, 0, 1, 0, '', 1451142050, 1532391621, 400),
(31, 15, 0, 0, 0, 'MSP-', 'su-hao', 'Su hào', 'Su hào', '<p>Su h&agrave;o</p>', 'Su hào', 'Su hào', 'Su hào', '', '', '', '', '', '', 'su-hao_1451142101.jpg', 'su-hao_145114210173x73_73x73.jpg', 'su-hao_1451142102268x268_268x268.jpg', 'su-hao_1451142104500x500_500x500.jpg', 'su-hao_1451142105800x800_800x800.jpg', '', 'Su hào', '', '', '', 35000, 0, 'kg', 111, 1, 0, 0, 0, 1, 0, '', 1451142106, 1532391414, 379),
(32, 15, 0, 0, 0, 'MSP-', 'su-su', 'Su su', 'Su su', '<p>Su su</p>', 'Su su', 'Su su', 'Su su', '', '', '', '', '', '', 'su-su_1451142177.jpg', 'su-su_145114217773x73_73x73.jpg', 'su-su_1451142177268x268_268x268.jpg', 'su-su_1451142177500x500_500x500.jpg', 'su-su_1451142178800x800_800x800.jpg', '', 'Su su', '', '', '', 16000, 0, 'kg', 112, 1, 0, 0, 0, 1, 0, '', 1451142178, 1532391583, 331),
(33, 1, 0, 0, 0, 'MSP-', 'tan-o', 'Tần ô', 'Tần ô', '<p>Tần &ocirc;</p>', 'Tần ô', 'Tần ô', 'Tần ô', '', '', '', '', '', '', 'tan-o_1490774054.jpg', 'tan-o_149077405473x73_73x73.jpg', 'tan-o_1490774054268x268_268x268.jpg', 'tan-o_1490774054500x500_500x500.jpg', 'tan-o_1490774054800x800_800x800.jpg', '', 'Tần ô', '', '', '', 44100, 0, 'kg', 107, 1, 0, 0, 0, 1, 0, '', 1451142245, 1490774055, 428),
(34, 1, 0, 0, 0, 'MSP-', 'xa-lach-giong-nhat', 'Xà lách giống Nhật', 'Xà lách giống Nhật', '<p>X&agrave; l&aacute;ch giống Nhật</p>', 'Xà lách giống Nhật', 'Xà lách giống Nhật', 'Xà lách giống Nhật', '', '', '', '', '', '', 'img1908_1454320128.JPG', 'img1908_145432012873x73_73x73.jpg', 'img1908_1454320128268x268_268x268.jpg', 'img1908_1454320128500x500_500x500.jpg', 'img1908_1454320129800x800_800x800.jpg', '', 'Xà lách giống Nhật', '', '', '', 52500, 0, 'kg', 121, 1, 0, 1, 0, 1, 0, '', 1451142293, 1494925840, 787),
(35, 15, 0, 0, 0, 'MSP-', 'bi-ho-lo-non', 'Bí hồ lô non', 'Bí hồ lô non', '<p>B&iacute; hồ l&ocirc; non</p>', 'Bí hồ lô non', 'Bí hồ lô non', 'Bí hồ lô non', '', '', '', '', '', '', 'biholonon_1453906675.jpg', 'biholonon_145390667573x73_73x73.jpg', 'biholonon_1453906675268x268_268x268.jpg', 'biholonon_1453906675500x500_500x500.jpg', 'biholonon_1453906675800x800_800x800.jpg', '', 'Bí hồ lô non', '', '', '', 35000, 0, 'kg', 9, 0, 0, 0, 0, 1, 0, '', 1453906676, 1489738842, 217),
(36, 15, 0, 0, 0, 'MSP-', 'bi-ho-lo', 'Bí hồ lô', 'Bí hồ lô', '<p>B&iacute; hồ l&ocirc;</p>', 'Bí hồ lô', 'Bí hồ lô', 'Bí hồ lô', '', '', '', '', '', '', 'biholo_1453906732.jpg', 'biholo_145390673273x73_73x73.jpg', 'biholo_1453906732268x268_268x268.jpg', 'biholo_1453906732500x500_500x500.jpg', 'biholo_1453906733800x800_800x800.jpg', '', 'Bí hồ lô', '', '', '', 23000, 0, 'kg', 7, 1, 0, 0, 0, 1, 0, '', 1453906733, 1532302934, 457),
(37, 15, 0, 0, 0, 'MSP-', 'bi-ngoi', 'Bí ngòi', 'Bí ngòi', '<p><span>B&iacute; ng&ograve;i xanh</span><span> c&oacute; h&igrave;nh dạng thu&ocirc;n, d&agrave;i. Da m&agrave;u xanh đậm với đốm trắng. B&iacute; ng&ograve;i gi&uacute;p chữa c&aacute;c bệnh về h&ocirc; hấp như hen suyễn, gi&uacute;p tr&aacute;nh nhồi m&aacute;u cơ tim v&agrave; đột quỵ, ngăn ngừa c&aacute;c bệnh về hoại huyết, th&acirc;m t&iacute;m bị g&acirc;y ra do thiếu hụt vitamin C. Chống l&atilde;o h&oacute;a, giảm c&acirc;n</span></p>', 'Bí ngòi', 'Bí ngòi', 'Bí ngòi', '', '', '', '', '', '', 'bi-ngoi-xanh_1490789922.jpg', 'bi-ngoi-xanh_149078992273x73_73x73.jpg', 'bi-ngoi-xanh_1490789922268x268_268x268.jpg', 'bi-ngoi-xanh_1490789922500x500_500x500.jpg', 'bi-ngoi-xanh_1490789922800x800_800x800.jpg', '', 'Bí ngòi', '', '', '', 33600, 0, 'kg', 10, 1, 0, 0, 0, 1, 0, '', 1453906771, 1490789923, 471),
(38, 15, 0, 0, 0, 'MSP-', 'bi-do-tron', 'Bí đỏ tròn', 'Bí Nhật', '<p>B&iacute; đỏ tr&ograve;n</p>', 'Bí đỏ tròn', 'Bí đỏ tròn', 'Bí đỏ tròn', '', '', '', '', '', '', 'binhat_1453906828.jpg', 'binhat_145390682873x73_73x73.jpg', 'binhat_1453906828268x268_268x268.jpg', 'binhat_1453906828500x500_500x500.jpg', 'binhat_1453906828800x800_800x800.jpg', '', 'Bí Nhật', '', '', '', 24200, 0, 'kg', 12, 1, 0, 0, 0, 1, 0, '', 1453906829, 1490774213, 466),
(39, 15, 0, 0, 0, 'MSP-', 'bi-nhat', 'Bí Nhật', 'Bí Nhật non', '<p>B&iacute; Nhật&nbsp;</p>', 'Bí Nhật ', 'Bí Nhật', 'Bí Nhật', '', '', '', '', '', '', 'binhatnon_1453906878.jpg', 'binhatnon_145390687873x73_73x73.jpg', 'binhatnon_1453906878268x268_268x268.jpg', 'binhatnon_1453906878500x500_500x500.jpg', 'binhatnon_1453906878800x800_800x800.jpg', '', 'Bí Nhật ', '', '', '', 36800, 0, 'kg', 11, 1, 0, 0, 1, 1, 0, '', 1453906878, 1490776373, 520),
(40, 15, 0, 0, 0, 'MSP-', 'ca-chua-chocolate', 'Cà chua Chocolate', 'Cà chua Chocolate', '<p>C&agrave; chua Chocolate</p>', 'Cà chua Chocolate', 'Cà chua đen', 'Cà chua Chocolate', '', '', '', '', '', '', 'img3643_1454319424.JPG', 'img3643_145431942473x73_73x73.jpg', 'img3643_1454319424268x268_268x268.jpg', 'img3643_1454319424500x500_500x500.jpg', 'img3643_1454319424800x800_800x800.jpg', '', 'Cà chua đen', '', '', '', 45000, 0, 'kg', 135, 0, 0, 0, 1, 1, 0, '', 1453907032, 1489739159, 348),
(41, 15, 0, 0, 0, 'MSP-', 'ca-chua-mix', 'Cà chua Mix', 'Cà chua Mix', '<p>C&agrave; chua Mix</p>', 'Cà chua Mix', 'Cà chua Mix', 'Cà chua Mix', '', '', '', '', '', '', '20160119114649resized_1454402170.jpg', '20160119114649resized_145440217073x73_73x73.jpg', '20160119114649resized_1454402170268x268_268x268.jpg', '20160119114649resized_1454402171500x500_500x500.jpg', '20160119114649resized_1454402171800x800_800x800.jpg', '', 'Cà chua Mix', '', '', '', 45000, 0, 'kg', 134, 0, 0, 0, 1, 1, 0, '', 1453907094, 1489739154, 296),
(42, 15, 0, 0, 0, 'MSP-', 'ca-chua-trang', 'Cà chua trắng', 'Cà chua trắng', '<p>C&agrave; chua trắng</p>', 'Cà chua trắng', 'Cà chua trắng', 'Cà chua trắng', '', '', '', '', '', '', 'img3642_1454320026.JPG', 'img3642_145432002673x73_73x73.jpg', 'img3642_1454320027268x268_268x268.jpg', 'img3642_1454320027500x500_500x500.jpg', 'img3642_1454320027800x800_800x800.jpg', '', 'Cà chua trắng', '', '', '', 40000, 0, 'kg', 133, 0, 0, 0, 0, 1, 0, '', 1453907178, 1489739149, 340),
(43, 1, 0, 0, 0, 'MSP-', 'cai-ngong', 'Cải ngồng', 'Cải ngồng', '<p>Cải ngồng</p>', 'Cải ngồng', 'Cải ngồng', 'Cải ngồng', '', '', '', '', '', '', 'cai-ngong_1516247229.jpg', 'cai-ngong_151624722973x73_73x73.jpg', 'cai-ngong_1516247229268x268_268x268.jpg', 'cai-ngong_1516247229500x500_500x500.jpg', 'cai-ngong_1516247229800x800_800x800.jpg', '', 'Cải ngồng', '', '', '', 30000, 0, 'kg', 27, 1, 0, 0, 0, 1, 0, '', 1453907266, 1532302884, 577),
(44, 1, 0, 0, 0, 'MSP-', 'cai-ngot', 'Cải ngọt', 'Cải ngọt', '<p>Cải ngọt</p>', 'Cải ngọt', 'Cải ngọt', 'Cải ngọt', '', '', '', '', '', '', 'cai-ngot_1516247250.jpg', 'cai-ngot_151624725073x73_73x73.jpg', 'cai-ngot_1516247250268x268_268x268.jpg', 'cai-ngot_1516247250500x500_500x500.jpg', 'cai-ngot_1516247250800x800_800x800.jpg', '', 'Cải ngọt', '', '', '', 30000, 0, 'kg', 28, 1, 0, 0, 0, 1, 0, '', 1453907487, 1532302901, 530),
(45, 1, 0, 0, 0, 'MSP-', 'cai-nhung', 'Cải nhúng', 'Cải nhúng', '<p>Cải nh&uacute;ng</p>', 'Cải nhúng', 'Cải nhúng', 'Cải nhúng', '', '', '', '', '', '', 'cainhung_1453907627.jpg', 'cainhung_145390762773x73_73x73.jpg', 'cainhung_1453907628268x268_268x268.jpg', 'cainhung_1453907628500x500_500x500.jpg', 'cainhung_1453907628800x800_800x800.jpg', '', 'Cải nhúng', '', '', '', 30000, 0, 'kg', 29, 1, 0, 0, 0, 1, 0, '', 1453907628, 1532302966, 1433),
(46, 1, 0, 0, 0, 'MSP-', 'cai-thao', 'Cải thảo', 'Cải thảo', '<p>Cải thảo</p>', 'Cải thảo', 'Cải thảo', 'Cải thảo', '', '', '', '', '', '', 'cai-thao_1516247438.jpg', 'cai-thao_151624743873x73_73x73.jpg', 'cai-thao_1516247438268x268_268x268.jpg', 'cai-thao_1516247438500x500_500x500.jpg', 'cai-thao_1516247438800x800_800x800.jpg', '', 'Cải thảo', '', '', '', 35000, 0, 'kg', 30, 1, 0, 0, 0, 1, 0, '', 1453907701, 1521185805, 499),
(83, 15, 0, 0, 0, '', 'bi-dao', 'Bí đao', '', '<p><span>B&iacute; đao</span><span> hay b&iacute; phấn hoặc b&iacute; trắng, l&agrave; lo&agrave;i thực vật thuộc họ Bầu B&iacute;, dạng d&acirc;y leo, tr&aacute;i ăn được. B&iacute; đao c&oacute; h&igrave;nh dạng tr&ograve;n, d&agrave;i, m&agrave;u xanh nhạt. B&iacute; đao l&agrave; một loại quả qu&yacute;, vừa c&oacute; thể d&ugrave;ng l&agrave;m thực phẩm lại c&oacute; thể l&agrave;m thuốc</span></p>', '', '', '', '', '', '', '', '', '', 'bi-dao_1490774446.jpg', 'bi-dao_149077444673x73_73x73.jpg', 'bi-dao_1490774446268x268_268x268.jpg', 'bi-dao_1490774446500x500_500x500.jpg', 'bi-dao_1490774446800x800_800x800.jpg', '', '', '', '', '', 18000, 0, 'kg', 15, 1, 0, 0, 0, 0, 0, '', 1490774446, 1532308520, 135),
(48, 1, 0, 0, 0, 'MSP-', 'cai-xanh-non', 'Cải xanh non', 'Cải xanh non', '<p>Cải xanh non</p>', 'Cải xanh non', 'Cải xanh non', 'Cải xanh non', '', '', '', '', '', '', 'caixanhnon_1453907873.jpg', 'caixanhnon_145390787373x73_73x73.jpg', 'caixanhnon_1453907873268x268_268x268.jpg', 'caixanhnon_1453907873500x500_500x500.jpg', 'caixanhnon_1453907873800x800_800x800.jpg', '', 'Cải xanh non', '', '', '', 28000, 0, 'kg', 130, 0, 0, 0, 0, 1, 0, '', 1453907874, 1489735995, 433),
(49, 0, 0, 0, 0, 'MSP-', 'chau-cay-hung-que', 'Chậu cây húng quế', 'Chậu cây húng quế', '<p>Chậu c&acirc;y h&uacute;ng quế</p>', 'Chậu cây húng quế', 'Chậu cây húng quế', 'Chậu cây húng quế', '', '', '', '', '', '', 'chaucayhungque_1453908417.jpg', 'chaucayhungque_145390841773x73_73x73.jpg', 'chaucayhungque_1453908417268x268_268x268.jpg', 'chaucayhungque_1453908417500x500_500x500.jpg', 'chaucayhungque_1453908417800x800_800x800.jpg', '', 'Chậu cây húng quế', '', '', '', 50000, 0, 'kg', 129, 0, 0, 0, 1, 1, 0, '', 1453908417, 1489735982, 282),
(50, 0, 0, 0, 0, 'MSP-', 'chau-cay-ot-hiem', 'Chậu cây ớt hiểm', 'Chậu cây ớt hiểm', '<p>Chậu c&acirc;y ớt hiểm</p>', 'Chậu cây ớt hiểm', 'Chậu cây ớt hiểm', 'Chậu cây ớt hiểm', '', '', '', '', '', '', 'img3631_1454319306.JPG', 'img3631_145431930773x73_73x73.jpg', 'img3631_1454319307268x268_268x268.jpg', 'img3631_1454319307500x500_500x500.jpg', 'img3631_1454319308800x800_800x800.jpg', '', 'Chậu cây ớt hiểm', '', '', '', 50000, 0, 'kg', 128, 0, 0, 0, 1, 1, 0, '', 1453908691, 1489735973, 813),
(51, 15, 0, 0, 0, 'MSP-', 'chanh-khong-hat', 'Chanh không hạt', 'Chanh có hạt', '<p>Chanh c&oacute; hạt</p>', 'Chanh có hạt', 'Chanh có hạt', 'Chanh có hạt', '', '', '', '', '', '', 'chanh-khong-hat_1516247566.jpg', 'chanh-khong-hat_151624756673x73_73x73.jpg', 'chanh-khong-hat_1516247566268x268_268x268.jpg', 'chanh-khong-hat_1516247566500x500_500x500.jpg', 'chanh-khong-hat_1516247566800x800_800x800.jpg', '', 'Chanh có hạt', '', '', '', 45000, 0, 'kg', 36, 1, 0, 0, 0, 1, 0, '', 1453908812, 1521185784, 513),
(52, 3, 0, 0, 0, 'MSP-', 'chuoi-laba-king', 'Chuối Laba king', 'Chuối Laba', '<p>Chuối Laba</p>', 'Chuối Laba', 'Chuối Laba', 'Chuối Laba', '', '', '', '', '', '', 'chuoilaba_1453908917.jpg', 'chuoilaba_145390891773x73_73x73.jpg', 'chuoilaba_1453908917268x268_268x268.jpg', 'chuoilaba_1453908917500x500_500x500.jpg', 'chuoilaba_1453908917800x800_800x800.jpg', '', 'Chuối Laba', '', '', '', 45000, 0, 'kg', 38, 1, 0, 0, 0, 1, 0, '', 1453908918, 1532302828, 581),
(53, 15, 0, 0, 0, 'MSP-', 'cu-cai-trang', 'Củ cải trắng', 'Củ cải trắng', '<p>Củ cải trắng</p>', 'Củ cải trắng', 'Củ cải trắng', 'Củ cải trắng', '', '', '', '', '', '', 'cu-cai-trang_1516247663.jpg', 'cu-cai-trang_151624766373x73_73x73.jpg', 'cu-cai-trang_1516247663268x268_268x268.jpg', 'cu-cai-trang_1516247663500x500_500x500.jpg', 'cu-cai-trang_1516247664800x800_800x800.jpg', '', 'Củ cải trắng', '', '', '', 21000, 0, 'kg', 40, 1, 0, 0, 0, 1, 0, '', 1453909017, 1516247664, 474),
(54, 15, 0, 0, 0, 'MSP-', 'cu-den', 'Củ dền', 'Củ dền', '<p>Củ dền</p>', 'Củ dền', 'Củ dền', 'Củ dền', '', '', '', '', '', '', 'cu-den_1516247640.jpg', 'cu-den_151624764073x73_73x73.jpg', 'cu-den_1516247640268x268_268x268.jpg', 'cu-den_1516247640500x500_500x500.jpg', 'cu-den_1516247640800x800_800x800.jpg', '', 'Củ dền', '', '', '', 26300, 0, 'kg', 41, 1, 0, 0, 0, 1, 0, '', 1453909054, 1516247641, 448),
(55, 15, 0, 0, 0, 'MSP-', 'dau-cove-nhat', 'Đậu Cove Nhật', 'Đậu Cove Nhật', '<p>Đậu Cove Nhật</p>', 'Đậu Cove Nhật', 'Đậu Cove Nhật', 'Đậu Cove Nhật', '', '', '', '', '', '', 'daucovenhat_1453909196.jpg', 'daucovenhat_145390919673x73_73x73.jpg', 'daucovenhat_1453909196268x268_268x268.jpg', 'daucovenhat_1453909196500x500_500x500.jpg', 'daucovenhat_1453909196800x800_800x800.jpg', '', 'Đậu Cove Nhật', '', '', '', 36800, 0, 'kg', 44, 1, 0, 0, 0, 1, 0, '', 1453909196, 1489738986, 486),
(56, 15, 0, 0, 0, 'MSP-', 'dau-ha-lan-hot', 'Đậu Hà Lan hột', 'Đậu Hà Lan hột', '<p>Đậu H&agrave; Lan hột</p>', 'Đậu Hà Lan hột', 'Đậu Hà Lan hột', 'Đậu Hà Lan hột', '', '', '', '', '', '', 'dauhalanhot_1453909277.jpg', 'dauhalanhot_145390927773x73_73x73.jpg', 'dauhalanhot_1453909277268x268_268x268.jpg', 'dauhalanhot_1453909277500x500_500x500.jpg', 'dauhalanhot_1453909278800x800_800x800.jpg', '', 'Đậu Hà Lan hột', '', '', '', 504000, 0, 'kg', 46, 0, 0, 1, 0, 1, 0, '', 1453909278, 1489739021, 643),
(57, 3, 0, 0, 0, '', 'thanh-long-ruot-trang', 'Thanh long ruột trắng', '', '<p>Tr&aacute;i thanh long ruột đỏ</p>', 'Thanh long ruột trắng', 'Thanh long ruột trắng', 'Thanh long ruột trắng', '', '', '', '', '', '', 'img2439_1454320365.JPG', 'img2439_145432036573x73_73x73.jpg', 'img2439_1454320365268x268_268x268.jpg', 'img2439_1454320365500x500_500x500.jpg', 'img2439_1454320366800x800_800x800.jpg', '', '', '', '', '', 35000, 0, 'kg', 117, 1, 0, 0, 0, 0, 0, '', 1454320366, 1494925826, 293),
(58, 15, 0, 0, 0, '', 'ca-chua-cam', 'Cà chua cam', 'Cà chua cam', '<p>C&agrave; chua cam</p>', 'Cà chua cam', 'Cà chua cam', 'Cà chua cam', '', '', '', '', '', '', 'img3641_1454320509.JPG', 'img3641_145432050973x73_73x73.jpg', 'img3641_1454320510268x268_268x268.jpg', 'img3641_1454320510500x500_500x500.jpg', 'img3641_1454320510800x800_800x800.jpg', '', '', '', '', '', 45000, 0, 'kg', 127, 0, 0, 0, 0, 0, 0, '', 1454320511, 1489739139, 169),
(59, 3, 0, 0, 0, '', 'tao-envy', 'Táo Envy ', '', '<p>T&aacute;o Envy</p>', 'Táo Envy', 'Táo Envy', 'Táo Envy', '', '', '', '', '', '', 'dsc2195_1454321266.JPG', 'dsc2195_145432126673x73_73x73.jpg', 'dsc2195_1454321267268x268_268x268.jpg', 'dsc2195_1454321267500x500_500x500.jpg', 'dsc2195_1454321268800x800_800x800.jpg', '', '', '', '', '', 189000, 0, 'kg', 114, 1, 0, 1, 0, 0, 0, '', 1454321270, 1489737791, 418),
(60, 3, 0, 0, 0, '', 'mit', 'Mít ', '', '<p>M&iacute;t ta</p>', 'Mít ', 'Mít ', 'Mít ', '', '', '', '', '', '', 'dsc2191_1454321385.JPG', 'dsc2191_145432138573x73_73x73.jpg', 'dsc2191_1454321386268x268_268x268.jpg', 'dsc2191_1454321387500x500_500x500.jpg', 'dsc2191_1454321388800x800_800x800.jpg', '', '', '', '', '', 45000, 0, 'kg', 140, 0, 0, 0, 0, 0, 0, '', 1454321389, 1489737775, 288),
(61, 3, 0, 0, 0, '', 'trai-thom', 'Trái thơm', '', '', 'Trái thơm', 'Trái thơm', 'Trái thơm', '', '', '', '', '', '', 'dsc2190_1454321520.JPG', 'dsc2190_145432152073x73_73x73.jpg', 'dsc2190_1454321521268x268_268x268.jpg', 'dsc2190_1454321522500x500_500x500.jpg', 'dsc2190_1454321523800x800_800x800.jpg', '', '', '', '', '', 17000, 0, 'kg', 139, 0, 0, 0, 0, 0, 0, '', 1454321524, 1489737767, 228),
(62, 15, 0, 0, 0, '', 'ca-chua-beef', 'Cà chua beef', '', '<p>C&agrave; chua beef c&ograve;n gọi l&agrave; c&agrave; chua H&agrave; Lan, tr&aacute;i to, dẹt, k&iacute;ch thước lớn, c&oacute; m&agrave;u đỏ tươi. Trọng lượng c&oacute; khi l&ecirc;n tới 600 ~ 700gr 1 quả. C&agrave; chua beef c&oacute; gi&aacute; trị dinh dưỡng cao, do đ&oacute; c&ocirc;ng dụng rất phong ph&uacute;.</p>\r\n<p><span><span><span><span><span>C&agrave; chua</span>&nbsp;c&oacute; rất nhiều c&ocirc;ng dụng tuyệt vời như sau :</span></span></span></span></p>\r\n<p><span><span><span>- C&agrave; chua&nbsp;dồi d&agrave;o nguồn viatmin A v&agrave; C gi&uacute;p tăng cường thị lực v&agrave; ph&ograve;ng bệnh qu&aacute;ng g&agrave;.</span></span></span></p>\r\n<p><span><span><span>- Ăn nhiều c&agrave; chua gi&uacute;p giảm nguy cơ mắc một số bệnh ung thư như dạ d&agrave;y, đại tr&agrave;ng, ung thư buồng trứng.</span></span></span></p>\r\n<p><span><span><span>- Một số nghi&ecirc;n cứu đ&atilde; chứng minh rằng c&agrave; chua chống oxy h&oacute;a, gi&uacute;p kiểm so&aacute;t lượng đường trong m&aacute;u.</span></span></span></p>\r\n<p><span><span><span>- C&agrave; chua c&oacute; chứa vitamin K v&agrave; canxi hỗ trợ cho xương chắc khỏe</span></span></span></p>\r\n<p><span><span><span>- C&aacute;c chất&nbsp;carotenoid v&agrave; bioflavonoid trong c&agrave; chua gi&uacute;p l&agrave;m những cơn đau m&atilde;n t&iacute;nh hiệu quả</span></span></span></p>\r\n<p><span><span><span>- C&agrave; chua&nbsp;chứa nhiều chất xơ v&agrave; nước n&ecirc;n rất l&iacute; tưởng cho những ai muốn giảm c&acirc;n</span></span></span></p>\r\n<p><span><span><span>- C&agrave; chua dồi d&agrave;o vitamin v&agrave; chất sắt gi&uacute;p phục hồi t&oacute;c hư tổn l&agrave;m đẹp da mịn m&agrave;ng.</span></span></span><br />&nbsp;</p>', 'Cà chua beef', 'Cà chua beef', 'Cà chua beef', '', '', '', '', '', '', 'dsc2167_1454321596.JPG', 'dsc2167_145432159673x73_73x73.jpg', 'dsc2167_1454321596268x268_268x268.jpg', 'dsc2167_1454321597500x500_500x500.jpg', 'dsc2167_1454321598800x800_800x800.jpg', '', '', '', '', '', 50000, 0, 'kg', 18, 1, 0, 0, 0, 1, 0, '', 1454321599, 1532308535, 362),
(63, 3, 0, 0, 0, '', 'xoai-cat-hoa-loc', 'Xoài cát Hòa Lộc', '', '', 'Xoài cát Hòa Lộc', 'Xoài cát Hòa Lộc', 'Xoài cát Hòa Lộc', '', '', '', '', '', '', 'dsc2204-1_1454321887.JPG', 'dsc2204-1_145432188773x73_73x73.jpg', 'dsc2204-1_1454321888268x268_268x268.jpg', 'dsc2204-1_1454321889500x500_500x500.jpg', 'dsc2204-1_1454321890800x800_800x800.jpg', '', '', '', '', '', 60000, 0, 'kg', 138, 0, 0, 0, 0, 0, 0, '', 1454321665, 1489737498, 350),
(64, 13, 0, 0, 0, '', 'nuoc-ep-mang-cau', 'Nước ép mãng cầu', '', '', 'Nước ép mãng cầu', 'Nước ép mãng cầu', 'Nước ép mãng cầu', '', '', '', '', '', '', 'nuocepmangcau_1490666565.png', 'nuocepmangcau_149066656573x73_73x73.png', 'nuocepmangcau_1490666566268x268_268x268.png', 'nuocepmangcau_1490666566500x500_500x500.png', 'nuocepmangcau_1490666566800x800_800x800.png', '', '', '', '', '', 39900, 0, 'chai250ml', 88, 1, 0, 0, 0, 0, 0, '', 1454321953, 1495763001, 375),
(65, 13, 0, 0, 0, '', 'nuoc-ep-chanh-day', 'Nước ép chanh dây', '', '', 'Nước ép chanh dây', 'Nước ép chanh dây', 'Nước ép chanh dây', '', '', '', '', '', '', 'nuocepchanhday_1490666497.png', 'nuocepchanhday_149066649773x73_73x73.png', 'nuocepchanhday_1490666497268x268_268x268.png', 'nuocepchanhday_1490666497500x500_500x500.png', 'nuocepchanhday_1490666497800x800_800x800.png', '', '', '', '', '', 39900, 0, 'chai250ml', 84, 1, 0, 0, 0, 0, 0, '', 1454322003, 1495762963, 327),
(66, 13, 0, 0, 0, '', 'nuoc-ep-dau-tam', 'Nước ép dâu tằm', '', '', 'Nước ép dâu tằm', 'Nước ép dâu tằm', 'Nước ép dâu tằm', '', '', '', '', '', '', 'nuocepdautam_1490666527.png', 'nuocepdautam_149066652773x73_73x73.png', 'nuocepdautam_1490666527268x268_268x268.png', 'nuocepdautam_1490666527500x500_500x500.png', 'nuocepdautam_1490666527800x800_800x800.png', '', '', '', '', '', 39900, 0, 'chai250ml', 85, 1, 0, 0, 0, 0, 0, '', 1454322106, 1495762976, 389),
(67, 15, 0, 0, 0, '', 'hanh-tim', 'Hành tím', '', '', 'Hành tím', 'Hành tím', 'Hành tím', '', '', '', '', '', '', 'dsc2214_1454322204.JPG', 'dsc2214_145432220473x73_73x73.jpg', 'dsc2214_1454322205268x268_268x268.jpg', 'dsc2214_1454322205500x500_500x500.jpg', 'dsc2214_1454322206800x800_800x800.jpg', '', '', '', '', '', 60000, 0, 'kg', 60, 1, 0, 0, 0, 0, 0, '', 1454322207, 1532302953, 340),
(68, 14, 0, 0, 0, '', 'ngu-coc-nguyen-chat-que-toi', 'Ngũ cốc nguyên chất Quê tôi', '', '', 'Ngũ cốc nguyên chất Quê tôi', 'Ngũ cốc nguyên chất Quê tôi', 'Ngũ cốc nguyên chất Quê tôi', '', '', '', '', '', '', 'img20160122203030_1454322538.jpg', 'img20160122203030_145432253873x73_73x73.jpg', 'img20160122203030_1454322538268x268_268x268.jpg', 'img20160122203030_1454322538500x500_500x500.jpg', 'img20160122203030_1454322539800x800_800x800.jpg', '', '', '', '', '', 69300, 0, 'goi200g', 82, 1, 0, 0, 0, 0, 0, '', 1454322473, 1495763158, 1216),
(69, 3, 0, 0, 0, '', 'dua-luoi-xanh', 'Dưa lưới xanh', '', '', 'Dưa lưới xanh', 'Dưa lưới xanh', 'Dưa lưới xanh', '', '', '', '', '', '', 'img20160122203119_1454322595.jpg', 'img20160122203119_145432259573x73_73x73.jpg', 'img20160122203119_1454322595268x268_268x268.jpg', 'img20160122203119_1454322595500x500_500x500.jpg', 'img20160122203119_1454322595800x800_800x800.jpg', '', '', '', '', '', 65000, 0, 'kg', 137, 0, 0, 0, 0, 0, 0, '', 1454322595, 1489737485, 182),
(70, 3, 0, 0, 0, '', 'dua-luoi-vang', 'Dưa lưới vàng', '', '', 'Dưa lưới vàng', 'Dưa lưới vàng', 'Dưa lưới vàng', '', '', '', '', '', '', 'img20160122203128_1454322642.jpg', 'img20160122203128_145432264273x73_73x73.jpg', 'img20160122203128_1454322642268x268_268x268.jpg', 'img20160122203128_1454322642500x500_500x500.jpg', 'img20160122203128_1454322642800x800_800x800.jpg', '', '', '', '', '', 55000, 0, 'kg', 136, 0, 0, 0, 0, 0, 0, '', 1454322643, 1489737478, 413),
(71, 15, 0, 0, 0, '', 'ot-sung-bo', 'Ớt sừng bò', '', '', 'Ớt sừng bò', 'Ớt sừng bò', 'Ớt sừng bò', '', '', '', '', '', '', 'img20160122203156_1454322736.jpg', 'img20160122203156_145432273673x73_73x73.jpg', 'img20160122203156_1454322736268x268_268x268.jpg', 'img20160122203156_1454322736500x500_500x500.jpg', 'img20160122203156_1454322737800x800_800x800.jpg', '', '', '', '', '', 35000, 0, 'kg', 131, 0, 0, 0, 0, 0, 0, '', 1454322737, 1489739145, 455),
(72, 14, 0, 0, 0, '', 'chuoi-say-gion', 'Chuối sấy giòn', '', '', 'Chuối sấy giòn', 'Chuối sấy giòn', 'Chuối sấy giòn', '', '', '', '', '', '', 'img20160122203203_1454323036.jpg', 'img20160122203203_145432303673x73_73x73.jpg', 'img20160122203203_1454323036268x268_268x268.jpg', 'img20160122203203_1454323036500x500_500x500.jpg', 'img20160122203203_1454323036800x800_800x800.jpg', '', '', '', '', '', 25000, 0, 'kg', 47, 1, 0, 0, 0, 0, 0, '', 1454322854, 1516247992, 464),
(73, 14, 0, 0, 0, '', 'khoai-lang-say-gion', 'Khoai lang sấy giòn', '', '', 'Khoai lang sấy giòn', 'Khoai lang sấy giòn', 'Khoai lang sấy giòn', '', '', '', '', '', '', 'img20160122203208_1454322989.jpg', 'img20160122203208_145432298973x73_73x73.jpg', 'img20160122203208_1454322989268x268_268x268.jpg', 'img20160122203208_1454322989500x500_500x500.jpg', 'img20160122203208_1454322989800x800_800x800.jpg', '', '', '', '', '', 25000, 0, 'goi200g', 47, 1, 0, 0, 0, 0, 0, '', 1454322990, 1516248027, 412),
(74, 14, 0, 0, 0, '', 'thap-cam-say-gion', 'Thập cẩm sấy giòn', '', '', 'Thập cẩm sấy giòn', 'Thập cẩm sấy giòn', 'Thập cẩm sấy giòn', '', '', '', '', '', '', 'img20160122203205_1454323118.jpg', 'img20160122203205_145432311873x73_73x73.jpg', 'img20160122203205_1454323119268x268_268x268.jpg', 'img20160122203205_1454323119500x500_500x500.jpg', 'img20160122203205_1454323119800x800_800x800.jpg', '', '', '', '', '', 25000, 0, 'goi200g', 47, 1, 0, 0, 0, 0, 0, '', 1454323119, 1516248011, 423),
(75, 15, 0, 0, 0, '', 'susu-baby', 'Susu baby', '', '', 'Susu baby', 'Susu baby', 'Susu baby', '', '', '', '', '', '', 'img20160122203224_1454323172.jpg', 'img20160122203224_145432317273x73_73x73.jpg', 'img20160122203224_1454323172268x268_268x268.jpg', 'img20160122203224_1454323172500x500_500x500.jpg', 'img20160122203224_1454323173800x800_800x800.jpg', '', '', '', '', '', 42000, 0, 'kg', 113, 1, 0, 0, 1, 0, 0, '', 1454323173, 1489739107, 594),
(76, 1, 0, 0, 0, '', 'rau-cai-mam-app', 'Rau cải mầm APP', '', '', 'Rau cải mầm APP', 'Rau cải mầm APP', 'Rau cải mầm APP', '', '', '', '', '', '', 'img5301_1470822184.JPG', 'img5301_147082218473x73_73x73.jpg', 'img5301_1470822184268x268_268x268.jpg', 'img5301_1470822184500x500_500x500.jpg', 'img5301_1470822184800x800_800x800.jpg', '', '', '', '', '', 12600, 0, 'hop150g', 96, 0, 0, 0, 1, 1, 0, '', 1469691419, 1489735764, 313),
(78, 3, 0, 0, 0, '', 'le-han-quoc', 'Lê Hàn Quốc', '', '<p><strong>L&ecirc; H&agrave;n Quốc</strong><span>&nbsp;gi&agrave;u c&aacute;c chất xơ ,&nbsp;thực sự l&agrave; loại&nbsp;</span><strong>hoa quả&nbsp;nhập khẩu</strong><span>&nbsp;chống tiểu đường, chống cholesterol v&agrave; cắt cơn đ&oacute;i nhanh ch&oacute;ng,đồng thời gi&uacute;p giảm c&acirc;n t&iacute;ch cực. Th&ecirc;m nữa, với sự c&oacute; mặt của chất chống &ocirc;xy ho&aacute; tanin trong th&agrave;nh phần, l&ecirc; cũng l&agrave; loại tr&aacute;i c&acirc;y c&oacute; khả năng bảo vệ tr&aacute;i tim lu&ocirc;n khỏe mạnh</span></p>\r\n<p><span><span>L&ecirc; H&agrave;n Quốc c&oacute;&nbsp;t&iacute;nh lạnh, b&igrave;nh h&ograve;a kh&ocirc;ng độc hại, rất gi&agrave;u vitamin C v&agrave; pectin l&agrave; chất gi&uacute;p l&agrave;m tăng độ xốp v&agrave; men vi sinh gi&uacute;p hệ ti&ecirc;u h&oacute;a ổn định, nhu động ruột thải b&atilde; dễ d&agrave;ng. Vỏ quả l&ecirc; c&oacute; gi&aacute; trị chữa bệnh cao, c&oacute; lợi cho tim v&agrave; phổi.</span></span></p>', '', '', '', '', '', '', '', '', '', 'le-hq_1490666059.jpg', 'le-hq_149066605973x73_73x73.jpg', 'le-hq_1490666059268x268_268x268.jpg', 'le-hq_1490666059500x500_500x500.jpg', 'le-hq_1490666059800x800_800x800.jpg', '', '', '', '', '', 126000, 0, 'kg', 1, 1, 0, 0, 0, 0, 0, '', 1490666059, 1490774745, 124),
(79, 3, 0, 0, 0, '', 'nho-den-my', 'Nho đen Mỹ', '', '<p>Dinh dưỡng v&agrave; sức khỏe:</p>\r\n<p><strong>-</strong>Nho đen Mỹ&nbsp;l&agrave; loại hoa quả&nbsp;nhập khẩu&nbsp;rất gi&agrave;u dinh dưỡng, c&oacute; t&aacute;c dụng bổ t&igrave;, &iacute;ch kh&iacute;, gi&uacute;p cơ thể khỏe mạnh, miễn dịch tốt v&agrave; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a</p>\r\n<p>-Canxi, kali, photpho, sắt, vitamin B1, B2, B6, C v&agrave; c&aacute;c loại axit amin cần thiết tốt cho người suy nhược thần kinh v&agrave; c&oacute; lợi cho ti&ecirc;u h&oacute;a</p>\r\n<p>-Hợp chất Resveratrol trong<em><strong>&nbsp;</strong></em>nho đen kh&ocirc;ng hạt&nbsp;mỹ đặc biệt l&agrave; phần vỏ gi&uacute;p giải độc tốt, giảm m&aacute;u nhiễm mỡ, chống tụ huyết, ph&ograve;ng chống xơ vỡ động mạch v&agrave; tăng cường hệ thống miễn dịch của cơ thể</p>\r\n<p>&nbsp;</p>', '', '', '', '', '', '', '', '', '', 'nho-den_1490666188.jpg', 'nho-den_149066618873x73_73x73.jpg', 'nho-den_1490666188268x268_268x268.jpg', 'nho-den_1490666188500x500_500x500.jpg', 'nho-den_1490666188800x800_800x800.jpg', '', '', '', '', '', 210000, 0, 'kg', 5, 1, 0, 1, 0, 0, 0, '', 1490666188, 1494925529, 248),
(80, 13, 0, 0, 0, '', 'nuoc-ep-dau-tay', 'Nước ép dâu tây', 'Chai 250ml', '', '', '', '', '', '', '', '', '', '', 'nuoc-epdautay_1490666672.png', 'nuoc-epdautay_149066667273x73_73x73.png', 'nuoc-epdautay_1490666672268x268_268x268.png', 'nuoc-epdautay_1490666672500x500_500x500.png', 'nuoc-epdautay_1490666672800x800_800x800.png', '', '', '', '', '', 39900, 0, 'chai250ml', 87, 1, 0, 0, 0, 0, 0, '', 1490666673, 1495762989, 77),
(81, 1, 0, 0, 0, '', 'cai-kale-cai-xoan', 'Cải Kale ( cải xoăn)', 'Cải xoăn Kale là loại rau có giá trị dinh dưỡng cực cao\r\nCải xoăn hoặc borecole là một loại rau với lá xanh hoặc tím, trong đó lá ở giữa không tạo thành đầu. Nó được xem như có họ gần với bắp cải hơn hầu hết các loại rau trồng khác', '<p>Vai tr&ograve; dinh dưỡng của cải Kale nằm ở c&aacute;c điểm sau:</p>\r\n<ul>\r\n<li>&Iacute;t&nbsp;<a href="http://dinhduongchuan.com/calo/" target="_blank">calo&nbsp;</a>&ndash; gi&uacute;p kiểm so&aacute;t c&acirc;n nặng,</li>\r\n<li>C&oacute; đặc t&iacute;nh thanh lọc</li>\r\n<li>Gi&agrave;u&nbsp;<a href="http://dinhduongchuan.com/vitamin-a/" target="_blank">vitamin A,</a>&nbsp;<a href="http://dinhduongchuan.com/vitamin-k/" target="_blank">vitamin K</a>&nbsp;&ndash; gi&uacute;p giảm qu&aacute; tr&igrave;nh xơ vữa động mạch</li>\r\n<li>Gi&agrave;u&nbsp;<a href="http://dinhduongchuan.com/vitamin-b9-folat/" target="_blank">folate</a>&nbsp;&ndash; một vitamin nh&oacute;m B đ&oacute;ng vai tr&ograve; trong sự ph&aacute;t triển của n&atilde;o bộ</li>\r\n<li>Gi&agrave;u&nbsp;<a href="http://dinhduongchuan.com/chat-xo-fibre/" target="_blank">chất xơ</a></li>\r\n<li>Gi&agrave;u&nbsp;<a href="http://dinhduongchuan.com/sat-nguyen-nhan-anh-huong-cua-thieu-va-cach-du-phong/" target="_blank">kho&aacute;ng chất sắt</a>&nbsp;&ndash; n&ecirc;n c&oacute; thể thay thế nguồn thịt b&ograve; (một loại thịt đỏ nếu ăn nhiều sẽ ảnh hưởng đến c&aacute;c bệnh ung thư)</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', 'cai-kale_1490751953.jpg', 'cai-kale_149075195373x73_73x73.jpg', 'cai-kale_1490751953268x268_268x268.jpg', 'cai-kale_1490751953500x500_500x500.jpg', 'cai-kale_1490751953800x800_800x800.jpg', '', '', '', '', '', 84000, 0, 'kg', 8, 1, 0, 0, 1, 0, 0, '', 1490751953, 1494925592, 277),
(82, 1, 0, 0, 0, '', 'cai-cau-vong', 'Cải cầu vồng', '', '<p><span>Sự đa dạng tuyệt vời của sắc tố thực vật trong cải cầu vồng bao gồm m&agrave;u xanh đậm trong l&aacute; v&agrave; cầu vồng m&agrave;u đỏ, t&iacute;m, v&agrave;ng trong th&acirc;n c&acirc;y v&agrave; g&acirc;n l&aacute; của n&oacute;. Hầu như tất cả c&aacute;c sắc tố thực vật mang lại lợi &iacute;ch chống oxy h&oacute;a, chống vi&ecirc;m, lợi &iacute;ch với đường huyết, hỗ trợ sự chắc khỏe của xương, hạ huyết &aacute;p, chống ung thư,&nbsp;</span></p>', '', '', '', '', '', '', '', '', '', 'cai-cau-vong_1490753457.jpg', 'cai-cau-vong_149075345773x73_73x73.jpg', 'cai-cau-vong_1490753457268x268_268x268.jpg', 'cai-cau-vong_1490753457500x500_500x500.jpg', 'cai-cau-vong_1490753457800x800_800x800.jpg', '', '', '', '', '', 84000, 0, 'kg', 13, 1, 0, 0, 0, 0, 0, '', 1490753457, 1494925615, 109),
(84, 1, 0, 0, 0, '', 'gia-do', 'Giá đỗ', '', '<p>Gi&aacute; sạch trồng tự nhi&ecirc;n kh&ocirc;ng chất k&iacute;ch th&iacute;ch, bảo quản mang lại vị ngọt thanh, m&aacute;t khi ăn.&nbsp;</p>', '', '', '', '', '', '', '', '', '', 'gia-do_1491384751.jpg', 'gia-do_149138475173x73_73x73.jpg', 'gia-do_1491384751268x268_268x268.jpg', 'gia-do_1491384751500x500_500x500.jpg', 'gia-do_1491384751800x800_800x800.jpg', '', '', '', '', '', 35000, 0, 'kg', 16, 1, 0, 0, 0, 0, 0, '', 1491384751, 1532302737, 98),
(85, 16, 0, 0, 0, '', 'la-tia-to-nhat-oba-700-dla', 'Lá tía tô Nhật (oba) 700 đ/lá', '1.500đ/lá', '<p>L&aacute; t&iacute;a t&ocirc; xanh giống Nhật được trồng tại An Ph&uacute; farm, một rau gia vị kh&ocirc;ng thể thiếu trong c&aacute;c m&oacute;n sushi Nhật. L&aacute; c&oacute; thể chiết xuất th&agrave;nh tinh dầu tốt cho sức khỏe. <strong>Gi&aacute; b&aacute;n 700đ /l&aacute;.H&agrave;ng độc quyền chỉ c&oacute; an ph&uacute; đ&agrave; lạt mới c&oacute;.</strong></p>\r\n<p><strong>&nbsp;</strong></p>', '', '', '', '', '', '', '', '', '', 'la-tia-to-xanh_1494579246.jpg', 'la-tia-to-xanh_149457924673x73_73x73.jpg', 'la-tia-to-xanh_1494579246268x268_268x268.jpg', 'la-tia-to-xanh_1494579246500x500_500x500.jpg', 'la-tia-to-xanh_1494579246800x800_800x800.jpg', '', '', '', '', '', 500000, 0, 'kg', 1, 1, 0, 0, 1, 0, 0, '', 1494579247, 1532391782, 259),
(86, 16, 0, 0, 0, '', 'la-tia-to-do-1200dla', 'Lá tía tô đỏ 1.200đ/lá', '', '<p>L&aacute; t&iacute;a t&ocirc; đỏ giống Nhật được ăn k&egrave;m như m&oacute;n tr&aacute;ng miệng, c&oacute; thể d&ugrave;ng pha nước giải kh&aacute;t theo phong c&aacute;ch Nhật. Gi&aacute; b&aacute;n 1.200đ/l&aacute;</p>', '', '', '', '', '', '', '', '', '', 'la-tia-to-do_1494579766.jpg', 'la-tia-to-do_149457976673x73_73x73.jpg', 'la-tia-to-do_1494579766268x268_268x268.jpg', 'la-tia-to-do_1494579767500x500_500x500.jpg', 'la-tia-to-do_1494579767800x800_800x800.jpg', '', '', '', '', '', 500000, 0, 'kg', 1, 1, 0, 0, 1, 0, 0, '', 1494579767, 1532402127, 230);
INSERT INTO `table_product` (`id`, `id_list`, `id_cat`, `id_item`, `id_provider`, `code`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `thumb3`, `thumb4`, `alt`, `images`, `quatang`, `video_link`, `price`, `sale`, `unit`, `numberic`, `shows`, `shows_popup`, `shows_top`, `shows_new`, `shows_like`, `shows_sale`, `type_format`, `date_create`, `date_update`, `viewed`) VALUES
(87, 14, 0, 0, 0, '', 'hat-mac-ca-uc-500gr', 'Hạt Mắc Ca Úc 500gr', '', '<p>Hạt mắc ca &Uacute;c</p>', '', '', '', '', '', '', '', '', '', 'hat-mac-ca-sao-viet_1494580527.jpg', 'hat-mac-ca-sao-viet_149458052773x73_73x73.jpg', 'hat-mac-ca-sao-viet_1494580527268x268_268x268.jpg', 'hat-mac-ca-sao-viet_1494580527500x500_500x500.jpg', 'hat-mac-ca-sao-viet_1494580527800x800_800x800.jpg', '', '', '', '', '', 350000, 0, 'kg', 10, 1, 0, 0, 1, 0, 0, '', 1494580527, 1494580703, 143),
(88, 14, 0, 0, 0, '', 'hat-hanh-nhan-rang-bo', 'Hạt hạnh nhân rang bơ', '', '<p>Xuất xứ: USA</p>\r\n<p>C&ocirc;ng dụng: &nbsp;<span>&nbsp;gi&uacute;p bạn ph&ograve;ng chống một số loại bệnh ung thư, điển h&igrave;nh l&agrave; ung thư kết tr&agrave;ng,</span><span>&nbsp;gi&uacute;p b&agrave; mẹ bổ sung dinh dưỡng cho thai nhi v&agrave; giảm c&aacute;c khuyết tật bẩm sinh của em b&eacute;.</span><br /><span>Nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học tr&ecirc;n động vật cũng chỉ ra rằng hạt hạnh nh&acirc;n cũng c&oacute; thể ph&ograve;ng ngừa sạn mật, giảm rủi ro mắc bệnh Alzheimer, l&agrave;m đẹp da v&agrave; tăng cường chức năng hệ miễn dịch.</span></p>', '', '', '', '', '', '', '', '', '', 'hat-hanh-nhan-rang-bo_1494580686.jpg', 'hat-hanh-nhan-rang-bo_149458068673x73_73x73.jpg', 'hat-hanh-nhan-rang-bo_1494580686268x268_268x268.jpg', 'hat-hanh-nhan-rang-bo_1494580686500x500_500x500.jpg', 'hat-hanh-nhan-rang-bo_1494580686800x800_800x800.jpg', '', '', '', '', '', 360000, 0, 'kg', 11, 1, 0, 0, 1, 0, 0, '', 1494580686, 1516246093, 244),
(89, 14, 0, 0, 0, '', 'hat-oc-cho', 'Hạt óc chó', '', '<p><span>Loại quả n&agrave;y c&oacute; thể gi&uacute;p thai phụ bổ sung Vitamin E, Omega-3. H&agrave;m lượng Omega-3 trong quả &oacute;c ch&oacute; lớn hơn 3 lần trong c&aacute; hồi, đ&acirc;y l&agrave; th&agrave;nh phần &nbsp;gi&uacute;p th&uacute;c đẩy sự ph&aacute;t triển đại n&atilde;o của thai nhi v&agrave; trẻ nhỏ. Nếu phụ nữ mang thai ki&ecirc;n tr&igrave; ăn &oacute;c ch&oacute; trong một thời gian d&agrave;i chắc chắn em b&eacute; sinh ra sẽ rất th&ocirc;ng minh.</span></p>', '', '', '', '', '', '', '', '', '', 'hat-oc-cho_1494581134.jpg', 'hat-oc-cho_149458113473x73_73x73.jpg', 'hat-oc-cho_1494581134268x268_268x268.jpg', 'hat-oc-cho_1494581134500x500_500x500.jpg', 'hat-oc-cho_1494581134800x800_800x800.jpg', '', '', '', '', '', 340000, 0, 'kg', 12, 1, 0, 0, 1, 0, 0, '', 1494581004, 1516246112, 164),
(90, 16, 0, 0, 0, '', 'ngo-tay', 'Ngò tây', '', '<h2><strong>Gi&aacute; trị dinh dưỡng</strong></h2>\r\n<p>25-30 g l&aacute; ng&ograve; t&acirc;y tươi chứa khoảng 70 mg vitamin C, bằng lượng vitamin cần thiết cho người lớn trong một ng&agrave;y. L&aacute; ng&ograve; t&acirc;y cũng chứa c&aacute;c vitamin như В1, В2, РР, К, carotin, c&ograve;n th&acirc;n củ - protein (khoảng 4%) v&agrave; tr&ecirc;n 7% đường.</p>', '', '', '', '', '', '', '', '', '', 'ngo-tay_1494581586.jpg', 'ngo-tay_149458158673x73_73x73.jpg', 'ngo-tay_1494581586268x268_268x268.jpg', 'ngo-tay_1494581586500x500_500x500.jpg', 'ngo-tay_1494581586800x800_800x800.jpg', '', '', '', '', '', 100000, 0, 'kg', 14, 1, 0, 0, 0, 0, 0, '', 1494581586, 1494581586, 139),
(91, 15, 0, 0, 0, 'CCD', 'ca-chua-den', 'Cà chua đen', 'Cà chua đen là loại quả có xuất sứ từ Nga. \r\nTrọng lượng 100g cà chua đen có thể đáp ứng 28% lượng vitamin A (tốt cho thị lực) và 21,5% lượng vitamin C (chất chống ô xy hóa, tăng cường miễn dịch) mà cơ thể cần mỗi ngày.', '<p>C&agrave; chua đen l&agrave; loại quả c&oacute; xuất sứ từ Nga. <br />Trọng lượng 100g c&agrave; chua đen c&oacute; thể đ&aacute;p ứng 28% lượng vitamin A (tốt cho thị lực) v&agrave; 21,5% lượng vitamin C (chất chống &ocirc; xy h&oacute;a, tăng cường miễn dịch) m&agrave; cơ thể cần mỗi ng&agrave;y.</p>', '', '', '', '', '', '', '', '', '', 'ca-chua-den_1509696445.jpg', 'ca-chua-den_150969644573x73_73x73.jpg', 'ca-chua-den_1509696445268x268_268x268.jpg', 'ca-chua-den_1509696445500x500_500x500.jpg', 'ca-chua-den_1509696445800x800_800x800.jpg', '', '', '', '', '', 70000, 0, 'kg', 1, 1, 0, 0, 0, 0, 0, '', 1509696381, 1509696574, 54),
(93, 0, 0, 0, 0, '', 'nuoc-ep-phuc-bon-tu', 'Nước ép Phúc Bồn Tử', '', '<p>NƯỚC &Eacute;P NGUY&Ecirc;N CHẤT VỚI MẬT ONG .Pha với đ&aacute;,sữa tươi hoặc soda.Cho ch&uacute;ng ta 1 ly giải kh&aacute;t ngon v&agrave; chất lượng.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 90000, 0, 'chai250ml', 1, 1, 0, 0, 0, 0, 0, '', 1532392283, 1532392283, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_cat`
--

CREATE TABLE `table_product_cat` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_cat`
--

INSERT INTO `table_product_cat` (`id`, `id_list`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 1, 'laptop-hp', 'Laptop HP', '', 'Laptop HP', 'Laptop HP', '', '', '', '', '', '', 'rfpowertransistorsgan_1408415148.png', 'rfpowertransistorsgan_1408415148_161.29032258065x150.png', '', 2, 1, 1408415148, 1411778183),
(2, 1, 'laptop-asus', 'Laptop Asus', '', 'Laptop Asus', 'Laptop Asus', 'Laptop Asus', '', '', '', '', '', 'rfpowertransistorsgan_1408416716.png', 'rfpowertransistorsgan_1408416716_161.29032258065x150.png', '', 11, 1, 1408416077, 1411778840),
(3, 1, 'laptop-toshiba', 'Laptop Toshiba', '', 'Laptop Toshiba', 'Laptop Toshiba', 'Laptop Toshiba', '', '', '', '', '', 'rfpowermodulesgan1_1408416769.png', 'rfpowermodulesgan1_1408416769_188.67924528302x150.png', '', 5, 1, 1408416769, 1411778615),
(4, 1, 'laptop-dell', 'Laptop Dell', '', 'Laptop Dell', 'Laptop Dell', 'Laptop Dell', '', '', '', '', '', '', '', '', 1, 1, 1409043386, 1411778200),
(5, 1, 'laptop-apple', 'Laptop Apple', '', 'Laptop Apple', 'Laptop Apple', 'Laptop Apple', '', '', '', '', '', '', '', '', 5, 1, 1409043401, 1410601114),
(6, 1, 'laptop-lenovo', 'Laptop Lenovo', '', 'Laptop Lenovo', 'Laptop Lenovo', 'Laptop Lenovo', '', '', '', '', '', '', '', '', 3, 1, 1409043415, 1411704510),
(7, 2, 'laptop-sony', 'Laptop Sony', '', 'Laptop Sony', 'Laptop Sony', 'Laptop Sony', '', '', '', '', '', '', '', '', 7, 1, 1409045309, 1410601142),
(8, 1, 'laptop-sony', 'Laptop Sony', '', 'Laptop Huy Hoang - Laptop Sony', 'Laptop Sony', '', '', '', '', '', '', '', '', '', 6, 1, 1410760904, 1411778635),
(9, 3, 'hp-tablet', 'HP Tablet', '', 'Máy Tính Bảng HP', 'Máy Tính Bảng HP, hp tablet, may tinh bang hp', '', '', '', '', '', '', '', '', '', 1, 1, 1410761125, 0),
(10, 3, 'dell-tablet', 'Dell Tablet', '', 'Máy Tính Bảng Dell', 'Dell Tablet, may tinh bang dell, máy tính bảng dell', '', '', '', '', '', '', '', '', '', 1, 1, 1410761178, 0),
(11, 3, 'microsoft-table', 'Microsoft Table', '', 'Máy Tính Bảng Microsoft', 'Microsoft Table, Máy Tính Bảng Microsoft, may tinh bang microsoft', '', '', '', '', '', '', '', '', '', 1, 1, 1410761245, 0),
(12, 3, 'nexus-google-tablet', 'Nexus Google Tablet', '', 'Máy Tính Bảng Nexus Google', 'Máy Tính Bảng Nexus Google,Nexus Google Tablet, may tinh bang nexus google', '', '', '', '', '', '', '', '', '', 1, 1, 1410761366, 0),
(13, 3, 'lenovo-thinkpad-tablet', 'Lenovo Thinkpad Tablet', '', 'Máy Tính Bảng Lenovo Thinkpad', 'Lenovo Thinkpad Tablet, Máy Tính Bảng Lenovo Thinkpad, Máy Tính Bảng Lenovo Thinkpad', '', '', '', '', '', '', '', '', '', 1, 1, 1410761432, 0),
(14, 3, 'apple-ipad', 'Apple Ipad', '', 'Máy Tính Bảng Apple', 'Máy Tính Bảng Apple, may tinh bang apple, Apple Ipad', '', '', '', '', '', '', '', '', '', 1, 1, 1410761507, 0),
(15, 3, 'samsung-tablet', 'Samsung Tablet', '', 'Máy Tính Bảng Samsung', 'Samsung Tablet, Máy Tính Bảng Samsung, may tinh bang samsung', '', '', '', '', '', '', '', '', '', 1, 1, 1410761571, 0),
(16, 3, 'kindle-table', 'Kindle Table', '', 'Máy Tính Bảng Kindle', 'Máy Tính Bảng Kindle, may tinh bang kindle, Kindle Table', '', '', '', '', '', '', '', '', '', 1, 1, 1410761665, 0),
(17, 2, 'adapter-sac', 'Adapter - Sạc', '', 'Adapter - Sạc', 'Adapter - Sạc', '', '', '', '', '', '', '', '', '', 1, 1, 1410762715, 0),
(18, 2, 'tui-xach', 'Túi Xách', '', 'Túi Xách', 'tui xach, túi xách', '', '', '', '', '', '', '', '', '', 1, 1, 1410762785, 0),
(19, 2, 'pin-battery', 'Pin - Battery', '', 'Pin - Battery', 'Pin - Battery', '', '', '', '', '', '', '', '', '', 1, 1, 1410762943, 0),
(20, 2, 'card-wwan-3g', 'Card - WWan (3G)', '', 'Card - WWan (3G)', 'Card - WWan (3G)', '', '', '', '', '', '', '', '', '', 1, 1, 1410763015, 0),
(21, 2, 'hddssd', 'HDD/SSD', '', 'HDD - SSD', 'Ổ HDD, Ổ SSD', '', '', '', '', '', '', '', '', '', 1, 1, 1410763207, 0),
(22, 2, 'ram-laptop', 'Ram Laptop', '', 'Ram Laptop', 'ram laptop', '', '', '', '', '', '', '', '', '', 1, 1, 1410763295, 0),
(23, 2, 'chuot-mouse', 'Chuột - Mouse', '', 'Chuột - Mouse', 'chuot, mouse, chuột', '', '', '', '', '', '', '', '', '', 1, 1, 1410763357, 0),
(25, 1, 'laptop-multimedia', 'Laptop Multimedia', '', 'Laptop Multimedia', 'Laptop Multimedia', '', '', '', '', '', '', '', '', '', 4, 1, 1411748159, 1411778604),
(26, 1, 'laptop-pho-thong', 'Laptop Phổ thông', '', 'Laptop Phổ thông', 'Laptop Phổ thông', '', '', '', '', '', '', '', '', '', 5, 1, 1411778809, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_color`
--

CREATE TABLE `table_product_color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_color`
--

INSERT INTO `table_product_color` (`id`, `color`, `ten_vi`, `ten_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, '#000000', 'Màu đen', '', '', '', '', 1, 1, 1414803852, 1414803880),
(2, '#ff0000', 'Màu đỏ', '', '', '', '', 2, 1, 1414804072, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_compare`
--

CREATE TABLE `table_product_compare` (
  `id` int(11) NOT NULL,
  `id_parents` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `tenkodau` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `numberic` tinyint(1) NOT NULL,
  `shows` tinyint(1) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_compare`
--

INSERT INTO `table_product_compare` (`id`, `id_parents`, `id_list`, `ten_vi`, `ten_en`, `tenkodau`, `photo`, `thumb`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 0, 1, 'Tổng quan', '', 'tong-quan', '', '', 1, 1, 1411117170, 0),
(2, 1, 1, 'Model máy', '', 'model-may', '', '', 1, 1, 1411117332, 0),
(3, 1, 1, 'Phân khúc máy', '', 'phan-khuc-may', '', '', 2, 1, 1411117779, 0),
(4, 1, 1, 'Tình trạng hàng hóa', '', 'tinh-trang-hang-hoa', '', '', 3, 1, 1411117797, 0),
(5, 1, 1, 'Hỗ trợ đổi máy', '', 'ho-tro-doi-may', '', '', 4, 1, 1411117812, 0),
(6, 0, 1, 'Thông số kỹ thuật', '', 'thong-so-ky-thuat', '', '', 2, 1, 1411117958, 0),
(7, 6, 1, 'CPU', '', 'cpu', '', '', 1, 1, 1411117976, 0),
(8, 6, 1, 'Memory', '', 'memory', '', '', 3, 1, 1411117988, 1411186681),
(9, 6, 1, 'HDD', '', 'hdd', '', '', 4, 1, 1411118002, 1411186673),
(10, 6, 1, 'VGA', '', 'vga', '', '', 5, 1, 1411118015, 1411186661),
(11, 6, 1, 'Chipset', '', 'chipset', '', '', 2, 1, 1411186650, 0),
(12, 6, 1, 'Display', '', 'display', '', '', 6, 1, 1411186720, 0),
(13, 6, 1, 'Wireless', '', 'wireless', '', '', 7, 1, 1411186788, 0),
(14, 6, 1, 'Optical', '', 'optical', '', '', 8, 1, 1411186819, 0),
(15, 6, 1, 'Lan', '', 'lan', '', '', 9, 1, 1411186839, 0),
(16, 6, 1, 'Battery', '', 'battery', '', '', 10, 1, 1411186864, 0),
(17, 6, 1, 'OS', '', 'os', '', '', 11, 1, 1411186878, 0),
(18, 6, 1, 'Weight', '', 'weight', '', '', 12, 1, 1411186892, 0),
(19, 6, 1, 'Color', '', 'color', '', '', 13, 1, 1411186909, 0),
(20, 6, 1, 'Warranty', '', 'warranty', '', '', 14, 1, 1411186949, 1411187074),
(21, 0, 3, 'Thông Số Kỹ Thuật', '', 'thong-so-ky-thuat', '', '', 1, 1, 1411445408, 0),
(22, 21, 3, 'CPU', '', 'cpu', '', '', 1, 1, 1411445456, 0),
(23, 21, 3, 'Memory', '', 'memory', '', '', 2, 1, 1411445475, 0),
(24, 21, 3, 'HDD', '', 'hdd', '', '', 3, 1, 1411445504, 0),
(25, 21, 3, 'VGA', '', 'vga', '', '', 4, 1, 1411445518, 0),
(26, 21, 3, 'Display', '', 'display', '', '', 5, 1, 1411445569, 0),
(27, 21, 3, 'Wireless', '', 'wireless', '', '', 6, 1, 1411445623, 0),
(28, 21, 3, 'Optical', '', 'optical', '', '', 7, 1, 1411445666, 0),
(29, 21, 3, 'Option', '', 'option', '', '', 8, 1, 1411445694, 0),
(30, 21, 3, 'Battery/Weight', '', 'batteryweight', '', '', 9, 1, 1411445734, 0),
(31, 21, 3, 'Sofware', '', 'sofware', '', '', 10, 1, 1411445755, 0),
(32, 6, 1, 'Thông tin thêm', '', 'thong-tin-them', '', '', 15, 1, 1411482721, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_compare_properties`
--

CREATE TABLE `table_product_compare_properties` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_compare` text NOT NULL,
  `noidung` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_compare_properties`
--

INSERT INTO `table_product_compare_properties` (`id`, `id_product`, `id_compare`, `noidung`) VALUES
(1, 50, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20', 'HP Elitebook Revolve 820 G1 (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ <-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất <-||->4th Generation Intel® Core™ i7-4600U with Intel HD Graphics 4400 (2.1 GHz, 4 MB cache, 2 cores)* Up to 3.3 GHz with Intel Turbo Boost Technology﻿<-||-><-||->4GB DDR3 PC3-12800 Bus 1333Mhz<-||->256GB<-||->Intel® HD Graphics 4400﻿<-||->12.5" diagonal LED-backlit HD anti-glare SVA flat (1366 x 768)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->None<-||->10/100/1000Mbps<-||->3-cell HP Long Life 24WHr<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.33 kg<-||->Vỏ Nhôm trắng sáng sang trọng<-||->12 Tháng'),
(2, 26, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20', 'HP Elitebook Revolve 820 G1 (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ <-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Generation Intel® Core™ i5-4300U with Intel HD Graphics 4400 (1.9 GHz, 3 MB cache, 2 cores)* Up to 2.9 GHz with Intel Turbo Boost Technology<-||-><-||->4GB 1600 MHz DDR3L SDRAM<-||->180GB SSD<-||->Intel® HD Graphics 4400<-||->12.5" diagonal LED-backlit HD anti-glare SVA flat (1366 x 768)<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo<-||->None<-||->10/100/1000Mbps<-||->3-cell HP Long Life 24WHr<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.33 kg<-||->Vỏ Nhôm trắng sáng sang trọng<-||->12 Tháng'),
(3, 28, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook Revolve 820 G1 (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Generation Intel® Core™ i5-4300U with Intel HD Graphics 4400 (1.9 GHz, 3 MB cache, 2 cores)* Up to 2.9 GHz with Intel Turbo Boost Technology<-||-><-||->4GB 1600 MHz DDR3L SDRAM<-||->500GB<-||->Intel® HD Graphics 4400<-||->12.5" diagonal LED-backlit HD anti-glare SVA flat (1366 x 768)<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->None<-||->10/100/1000Mbps<-||->3-cell HP Long Life 24WHr<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.33 kg<-||->Vỏ Nhôm trắng sáng sang trọng<-||->12 Tháng<-||->Webcam HD, Bluetooth 4.0+EDR, USB 3.0'),
(4, 30, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook Revolve 810 G1 (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook Table cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100% & Sealed-in-Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3437U Processor 1.9GHz (4x1.9GHz)\r\nTurbo Boost 2.9Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->11.6-inch diagonal LED-backlit HD UWVA display (1366x768)<-||->Intel Centrino® Advanced-N 6235 <-||->Option<-||->10/100/1000Mbps<-||->6-cell (44 WHr) Lithium-Ion battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.4kg<-||->Vỏ Nhôm trắng sáng sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, USB 3.0'),
(5, 31, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 2570p( ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Mới 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3520M Processor 2.9GHz (4x2.9GHz)\r\nTurbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->12.5" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Vỏ Nhôm (trắng sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(6, 37, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook Revolve 810 G1 (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook Table cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100% & Sealed-in-Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3437U Processor 1.9GHz (4x1.9GHz)\r\nTurbo Boost 2.9Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 180GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->11.6-inch diagonal LED-backlit HD UWVA display (1366x768)<-||->Intel Centrino® Advanced-N 6235 <-||->Option<-||->10/100/1000Mbps<-||->6-cell (44 WHr) Lithium-Ion battery<-||->Windows 8 Pro License 64 Bit Bản Quyền<-||->1.4kg<-||->Vỏ Nhôm trắng sáng sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, USB 3.0'),
(7, 38, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 2570p (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Mới 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3360M Processor 2.8GHz (4x2.8GHz)\r\nTurbo Boost 3.5Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 180GB SATA3<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->12.5" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Vỏ Nhôm (trắng sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(8, 43, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 2570p (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->New in box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3340M Processor 2.7GHz(4x2.7GHz)\r\nTurbo Boost 3.4Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1333Mhz<-||->500GB SATA 7200RPM (with HP 3D DriverGuard)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->12.5" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Vỏ Nhôm (trắng sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(9, 47, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', ' HP Elitebook 2170p (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Mới 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3427U Processor 1.8GHz (4x1.8GHz)\r\nTurbo Boost 2.8Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 180GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->11.6" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->None<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhôm trắng sáng sang trọng Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, USB 3.0'),
(10, 48, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 2570p (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->New in box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.5GHz(4x2.5GHz)Turbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1333Mhz<-||->500GB SATA 7200RPM (with HP 3D DriverGuard)<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->12.5" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Vỏ Nhôm (trắng sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(11, 55, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP EliteBook Folio 9470m Ultrabook (ENERGY STAR)<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ<-||->Brandnew 100%. Nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3687U Processor 2.0GHz (4x2.0GHz)\r\nTurbo Boost 3.2Ghz (Cache 4MB - Bus 1600Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->256GB Solid State Drive<-||->Intel Graphics Media Accelerator HD 4000M Graphics<-||->14" diagonal LED-backlit HD+ anti-glare (1600x900)<-||->intel Centrino Advanced-N 6235 802.11a/b/g/n +Bluetooth 4.0<-||->None<-||->10/100/1000Mbps<-||->HP Long Life 4-cell (52 WHr) Li-Ion<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Silver Aluminum sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint, Bluetooth 4.0, Backlit Keyboard...'),
(12, 56, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 840 G1 (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4600U (2.1 GHz, 4MB cache, 2 cores) ﻿Max Turbo Frequency 3.3 GHz<-||->Intel QM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256GB SATA 3<-||->ATI® Radion HD 8750M<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->Option<-||->10/100/1000Mbps<-||->3-cell (50 WHr) HP Long Life﻿<-||->Windows 8 Pro License 64Bit <-||->1.4kg<-||->Vỏ Nhôm<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, USB 3.0'),
(13, 57, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8470w (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của HP, siêu bền<-||->New-in-Box Mới 100%  <-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3630QM Processor 2.4GHz (8x2.4GHz)\r\nTurbo Boost 3.4Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||-> 500GB SATA 7200RPM (with HP 3D DriverGuard)<-||->1GB gDDR5 AMD FirePro M2000 Graphics<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600X900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->Option<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.1kg<-||->Vỏ Nhôm (Đen sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint,Support 3G, USB 3.0'),
(14, 58, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8470w (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của HP, siêu bền<-||->New-in-Box Mới 100%  <-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3360M Processor 2.8GHz (4x2.8GHz)\r\nTurbo Boost 3.5Ghz (Cache 3MB - Bus 1600Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->SSD 180GB SATA 3<-||->1GB gDDR5 AMD FirePro M2000 Graphics<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600X900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->Option<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.1kg<-||->Vỏ Nhôm (Đen sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint,Support 3G, USB 3.0'),
(15, 59, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 840 G1 (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4300U (1.9 GHz, 3 MB cache, 2 cores) ﻿Max Turbo Frequency 2.9 GHz<-||->Intel QM87 Express Chipsets<-||->﻿4GB 1600 MHz DDR3 SDRAM<-||->180GB HDD<-||->Intel® HD Graphics 4400<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->None<-||->10/100/1000Mbps<-||->3-cell (50 WHr) HP Long Life﻿<-||->Windows 8 Pro License 64 Bit <-||->1.58 kg<-||->Vỏ Nhôm<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, USB 3.0'),
(16, 60, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP EliteBook Folio 9470m Ultrabook (ENERGY STAR)<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ<-||->Brandnew 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3687U Processor 2.1 GHz (4x2.1 GHz)\r\nTurbo Boost 3.3 Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->500GB 7200Rpm SATA (HP 3D DriveGuard)<-||->Intel Graphics Media Accelerator HD 4000M Graphics<-||->14" diagonal LED-backlit HD+ anti-glare (1600x900)<-||->Intel Centrino Advanced-N 6235 802.11a/b/g/n +Bluetooth 4.0<-||->None<-||->10/100/1000Mbps<-||->HP Long Life 4-cell (52 WHr) Li-Ion<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Silver Aluminum sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint, Bluetooth 4.0, Backlit Keyboard, USB 3.0,'),
(17, 61, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 840 G1 (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4300U (1.9 GHz, 3 MB cache, 2 cores) ﻿Max Turbo Frequency 2.9 GHz<-||->Intel QM77 Express Chipsets<-||->﻿4GB 1600 MHz DDR3 SDRAM<-||->320GB 7200rpm SATA<-||->﻿Intel® HD Graphics 4400<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo<-||->Option<-||->10/100/1000Mbps<-||->3-cell (50 WHr) HP Long Life﻿<-||->Windows 8 Pro License 64 Bit <-||->1.4kg<-||->Vỏ Nhôm<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, USB 3.0'),
(18, 63, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP EliteBook Folio 9470m Ultrabook (ENERGY STAR)<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ<-||->Brandnew 100%. Nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3437U Processor 1.9GHz (4x1.9GHz)\r\nTurbo Boost 2.9Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->500GB 7200Rpm SATA<-||->Intel Graphics Media Accelerator HD 4000M Graphics<-||->14" diagonal LED-backlit HD+ anti-glare (1366x768)<-||->intel Centrino Advanced-N 6235 802.11a/b/g/n +Bluetooth 4.0<-||->None<-||->10/100/1000Mbps<-||->HP Long Life 4-cell (52 WHr) Li-Ion<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Silver Aluminum sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint, Bluetooth 4.0, Backlit Keyboard'),
(19, 65, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8470p (ENERGY STAR)<-||->Dòng Business cao cấp nhất của HP, siêu bền<-||->:Mới 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3320M Processor 2.6 GHz (4x2.6 GHz)\r\nTurbo Boost 3.3 GHz (Cache 3 MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4 GB DDR3 PC3-12800 Bus 1600Mhz<-||->320GB SATA 7200RPM (with HP 3D DriverGuard)<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm (trắng sáng sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,  USB 3.0'),
(20, 67, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBook 15 Mobile Workstation (ENERGY STAR) NEW 2014<-||->Dòng Mobile Workstation cao cấp nhất của HP, chuyên dụng đồ họa, siêu bền<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4800MQ with Intel HD Graphics 4600 (2.7 GHz, 1600MHz, 6 MB cache, 4 core<-||-><-||->8 GB 1600 MHz DDR3L SDRAM<-||->500GB 7200Rpm SATA<-||->nVIDIA Quadro K1100M (2 GB dedicated GDDR5) NVIDIA Optimus Technology supported﻿<-||->1﻿5.6” diagonal LED-backlit FHD SVA eDP anti-glare (1920 x 1080)﻿﻿<-||->Intel Centrino® Advanced-N 6205 802.11 a/b/g/n (2x2)﻿<-||->DVD+/-RW SuperMulti DL﻿<-||->10/100/1000Mbps<-||->8-cell (83 WHr) Li-Ion battery﻿<-||->Windows 8 Pro License 64 Bit<-||->2.82 kg<-||->Vỏ nhôm đen<-||->1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Finger Print, USB 3.0'),
(21, 70, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBook 15 Mobile Workstation (ENERGY STAR) NEW 2014<-||->Dòng Mobile Workstation cao cấp nhất của HP, chuyên dụng đồ họa, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 "Haswell" 4700MQ Processor 2.4GHz(8x2.4GHz) Turbo Boost 3.4Ghz (6MB Cache - Bus 1600Mhz)<-||-><-||->8 GB 1600 MHz DDR3L SDRAM<-||->500GB<-||->﻿nVIDIA Quadro K1100M (2 GB dedicated GDDR5) NVIDIA Optimus Technology supported﻿<-||->1﻿5.6” diagonal LED-backlit FHD SVA eDP anti-glare (1920 x 1080)﻿﻿<-||->Intel Centrino® Advanced-N 6205 802.11 a/b/g/n (2x2)<-||->DVD+/-RW SuperMulti DL﻿<-||->10/100/1000Mbps<-||->8-cell (83 WHr) Li-Ion battery﻿<-||->Windows 8 Pro License 64 Bit<-||->2.82 kg<-||->Vỏ nhôm đen<-||->1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Finger Print, USB 3.0'),
(22, 75, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8570w (ENERGY STAR) NEW 2013<-||->Dòng máy trạm cao cấp nhất của HP, siêu bền, chuyên dụng thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3610QM Processor 2.3GHz (8x2.7GHz)\r\nTurbo Boost 3.3Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1333Mhz<-||->SSD 180GB (Ổ cứng  đặc truy xuất cực nhanh)<-||->2GB gDDR3 nVidia Quadro K1000M Graphics<-||->15.6" LED-Backlit Full HD+  Angle Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->8-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng  Chống trầy xước<-||->Bảo hành chính hãng 3 năm<-||->Webcam HD ,Fingerprint, Support 3G, ﻿Backlit Keyboard, USB 3.0'),
(23, 71, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8570w (ENERGY STAR) NEW 2013<-||->Dòng máy trạm cao cấp nhất của HP, siêu bền, chuyên dụng thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3820QM Processor 2.7GHz (8x2.7GHz)\r\nTurbo Boost 3.7Ghz (Cache 8MB - Bus 1066Mhz)<-||->:Intel QM77 Express Chipsets<-||->16GB DDR3 PC3-12800 Bus 1600Mhz<-||->﻿1TB SATA (﻿HP 3d driveguard)<-||->2GB gDDR3 nVidia Quadro K1000M Graphics<-||->15.6" LED-Backlit Full HD  Angle Anti-Glare Matte Display (1920x1080)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->8-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng  Chống trầy xước<-||->Bảo hành chính hãng 3 năm<-||->Webcam HD , Backlit Keyboard, Support 3G, USB 3.0'),
(24, 74, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 850 G1 (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%. Sắp có hàng<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4600U (2.1 GHz, 4 MB cache, 2 cores) ﻿Max Turbo Frequency 3.3 GHz<-||-><-||->16 GB 1600 MHz DDR3 SDRAM<-||->256GB SSD<-||->AMD Radeon TM HD 8750M , with 1 GB dedicated GDDR5 video memory﻿<-||->15.6" diagonal LED-backlit FHD WVA anti-glare (1920 x 1080)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->None<-||->10/100/1000Mbps<-||->3-cell (50 WHr) HP Long Life﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.88 kg<-||->Vỏ Nhôm đen, phủ lóp nhung<-||->12 Tháng<-||->Webcam HD, Bluetooth 4.0+EDR, USB 3.0'),
(25, 77, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 850 G1 (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4300U (1.9 GHz, 3 MB cache, 2 cores) ﻿Max Turbo Frequency 2.9 GHz<-||-><-||->4 GB 1600 MHz DDR3L SDRAM<-||->500GB<-||->﻿AMD Radeon TM HD 8750M , with 1 GB dedicated GDDR5 video memory﻿<-||->15.6" diagonal LED-backlit FHD WVA anti-glare (1920 x 1080)﻿<-||->Broadcom 802.11a/b/g/n (2x2) and Bluetooth 4.0 Combo﻿<-||->None<-||->10/100/1000Mbps<-||->3-cell (50 WHr) HP Long Life﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.88 kg<-||->Vỏ nhôm đen, phủ lớp nhung.<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Finger Print, USB 3.0'),
(26, 79, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBook 17 Mobile Workstation (ENERGY STAR) NEW 2014<-||->Dòng Mobile Workstation cao cấp nhất của HP, chuyên dụng đồ họa, siêu bền<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4900MQ (2.8 GHz, 1600 MHz, 8 MB cache, 4 cores<-||-><-||->32 GB 1600 MHz DDR3L SDRAM<-||->750GB HDD | 256GB SSD<-||->﻿nVIDIA Quadro K3100M (4 GB dedicated GDDR5)﻿<-||->17.3” diagonal LED-backlit FHD WVA anti-glare (1920 x 1080)﻿﻿﻿<-||->Intel Centrino® Advanced-N 6205 802.11 a/b/g/n (2x2)﻿<-||->DVD+/-RW SuperMulti DL﻿<-||->10/100/1000Mbps<-||->8-cell (83 WHr) Li-Ion battery﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->3.48 kg<-||->Vỏ nhôm đen<-||->1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Finger Print, USB 3.0'),
(27, 82, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBook 17 Mobile Workstation (ENERGY STAR) NEW 2014<-||->Dòng Mobile Workstation cao cấp nhất của HP, chuyên dụng đồ họa, siêu bền<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->﻿Intel® Core™ i7-4800MQ (2.7 GHz, 1600 MHz, 6MB cache, 4 cores)﻿<-||-><-||->﻿16 GB 1600 MHz DDR3L SDRAM<-||->500GB<-||->nVIDIA Quadro K3100M (4 GB dedicated GDDR5)﻿<-||->17.3” diagonal LED-backlit FHD WVA anti-glare (1920 x 1080)﻿﻿﻿<-||->Intel Centrino® Advanced-N 6205 802.11 a/b/g/n (2x2)﻿<-||->DVD+/-RW SuperMulti DL﻿<-||->10/100/1000Mbps<-||->8-cell (83 WHr) Li-Ion battery﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->3.48 kg<-||->Vỏ nhôm đen<-||->1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Finger Print, USB 3.0'),
(28, 83, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 8770w ( ENERGY STAR) NEW 2013<-||->Dòng máy trạm cao cấp nhất của HP, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100% & New in-Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.7GHz(8x2.7GHz)\r\nTurbo Boost 3.7Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->16GB 1600 MHz DDR3 SDRAM<-||->750GB SATA 7200RPM (with HP 3D DriverGuard)<-||->Nvida Quadro K3000M 2GB GDDR5<-||->17.3" Full HD LED-Backlit   Angle Anti-Glare Matte Display (1920x1080)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->9-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->3.47kg<-||->Vỏ Nhôm đen sang trọng  Chống trầy xước<-||->Bảo hành chính hãng 3 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, Backlit Keyboard, Support 3G, USB 3.0'),
(29, 22, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M6800 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của Dell, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100%. <-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||-> Intel® Core™ i7-4930XM processor (Quad Core 3.0GHz, 3.9GHz Turbo, 8MB 47W, w/HD Graphics 4600)<-||-><-||->16GB DDR3 SDRAM at 1600MHz<-||->2.5" 500GB<-||->nVIDIA Quadro K4100M with 4GB GDDR5 dedicated memory﻿<-||->17.3" UltraSharp™ FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee﻿<-||->Option<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9 cells li-ion<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->3.57kg (with 9-cell battery, airbay and optional mSATA)﻿﻿<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth,Support 3G, USB 3.0, Backlit Keyboard'),
(30, 23, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M6800 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của Dell, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||-><-||-> 8GB DDR3 SDRAM at 1600MHz<-||->2.5" 1 TB (2x 512 GB SSD)<-||->Nvidia® Quadro® K3100M w/4GB GDDR5<-||->17.3" UltraSharp™ FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee﻿<-||->Option<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9 cells li-ion<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->3.57kg (with 9-cell battery, airbay and optional mSATA)﻿﻿<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth,Support 3G, USB 3.0'),
(31, 24, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M6800 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của Dell, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100%.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||-><-||->8GB DDR3 SDRAM at 1600MHz<-||->2.5" 1 TB<-||->﻿Nvidia® Quadro® K3100M w/4GB GDDR5<-||->17.3" UltraSharp™ FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee﻿<-||->Option<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9 cells li-ion<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->3.57kg (with 9-cell battery, airbay and optional mSATA)﻿﻿<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth,Support 3G, USB 3.0'),
(32, 27, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M6800 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của Dell, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100% Sealed in Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||-><-||->8GB DDR3 SDRAM at 1600MHz<-||->2.5" 500GB Solid State Hybrid Drive<-||->AMD FirePro M6100 w/2GB GDDR5<-||->17.3" UltraSharp™ FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee﻿<-||->Option<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9 cells li-ion<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->3.57kg (with 9-cell battery, airbay and optional mSATA)﻿<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth,Support 3G, USB 3.0, Backlit Keyboard'),
(33, 29, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M3800 (ENERGY STAR) New2014 <-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th generation Intel® Core™ i7-4702HQ processor (Quad Core 2.2GHz, 3.2GHz Turbo, 6MB 37W, w/HD Graphics 4600)<-||->Intel HM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB 2.5” Solid State Hybrid Drive<-||->2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp™ FHD LED Backlit with Truelife and FHD resolution (1920 x 1080)<-||->﻿Intel® Dual Band Wireless-AC 7260 + Bluetooth 4.0,FInger Reader﻿<-||->Option<-||->10/100/1000Mbps<-||->6-cell Lithium Ion battery with ExpressCharge™<-||->Windows 8 Professional English 64bit (Includes Windows 8 Pro license)<-||->Nặng 2kg- mỏng 18mm<-||->Silver Anodized Aluminum﻿<-||->Bảo hành 12 tháng<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, Finger Reader﻿'),
(34, 32, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2013<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th generation Intel® Core™ i7-4900MQ processor (Quad Core 2.80GHz, 3.8GHz Turbo, 8MB 47W, w/HD Graphics 4600)<-||-><-||->16 GB DDR3L PC3-12800 Bus 1600Mhz<-||->180 GB<-||->2GB Nvidia Quadro K2100M w/2GB GDDR5 <-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, HD Webcam<-||->Dell Wireless 1550 2X2 802.11ac + Bluetooth 4.0<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->6-cell (97Wh) Lithium Ion battery with ExpressCharge™<-||->Windows 7 Professional English 64bit<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(35, 33, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M6700 ( ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3840QM Processor 2.8 GHz (8x2.8 GHz)\r\nTurbo Boost 3.8Ghz (Cache 8 MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->16 GB, DDR3-1600MHz SDRAM<-||->256GB<-||->nVIDIA Quadro K4000M with 4GB GDDR5 dedicated memory<-||->17.3" FHD(1920x1080): Dell UltraSharp™, wide view, anti-glare, LED-backlit, Premium Panel Guarantee<-||->Intel® Centrino® Ultimate-N 6300 802.11n 3x3 Half Mini-card<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->﻿9-cell (97Wh) with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->3.52kg (with 9-cell battery, airbay and optional mSATA)﻿<-||->Hợp kim nhôm-magie. <-||->Bảo hành  1 năm<-||->Fingerprint, Support 3G, USB 3.0'),
(36, 34, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4700 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của Dell, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100%. Sắp có hàng<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3840QM Processor 2.8GHz(8x2.8GHz)\r\nTurbo Boost 3.7Ghz (Cache 8MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8.0GB DDR3- PC 1866MHz SDRAM 2DIMMS Buss 1600Mhz<-||->256GB<-||->﻿﻿AMD FirePro M4000 Mobility Pro with 1GB GDDR5 dedicated memory﻿<-||->15.6" FHD(1920x1080): Dell UltraSharp™, wide view, anti-glare, LED-backlit, Premium Panel Guarantee﻿<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD , Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(37, 35, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2013<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th generation Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM77 Express Chipsets<-||->16 GB DDR3L PC3-12800 Bus 1600Mhz<-||->128 GB<-||-> 2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, HD Webcam<-||->Dell Wireless 1550 2X2 802.11ac + Bluetooth 4.0<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery with ExpressCharge™<-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(38, 40, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2013<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th generation Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM77 Express Chipsets<-||->8 GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB SATA 5400RPM công nghệ bảo mật FIPS Self-Encrypting<-||->2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, HD Webcam<-||->Dell Wireless 1550 2X2 802.11ac + Bluetooth 4.0<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||-> 9-cell (97Wh) Lithium Ion battery with ExpressCharge™<-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(39, 41, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4700 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100%. Sắp có hàng<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.7GHz (8x2.7GHz)\r\nTurbo Boost 3.7Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->16GB DDR3 PC3-12800 Bus 1333Mhz<-||->256GB<-||->2GB gDDR3 nVidia Quadro K2000M Graphics<-||->15.6" LED-Backlit FullHD  Angle Anti-Glare Matte Display (1920x1080)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||-> 6-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhôm + Magie<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(40, 42, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4700 (ENERGY STAR)<-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.8GHz (8x2.8GHz)\r\nTurbo Boost 3.8Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->16 GB DDR3 PC3-12800 Bus 1600Mhz<-||->128 GB<-||->2GB gDDR3 nVidia Quadro K1000M Graphics<-||->15.6" LED-Backlit FullHD  Angle Anti-Glare Matte Display (1920x1080)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9-cell Battery<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành  1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, Support 3G, USB 3.0'),
(41, 54, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6540 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th gen Intel® Core™ i7-4810MQ Processor (2.8GHz, 6M cache, Upgradable to Intel® vPro™ technology)﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->2.5 inch 1TB<-||->AMD Radeon HD 8790M Graphics 2GB GDDR5﻿<-||->15.6in FHD (1920x1080) Anti-Glare LED﻿<-||->Option<-||-> 8X DVD+/-RW﻿<-||->10/100/1000Mbps<-||->6-cell (60Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.56kg9 (with 6-cell battery and Optical Disk Drive)﻿<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD'),
(42, 44, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6540 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th gen Intel® Core™ i7-4810MQ Processor (2.8GHz, 6M cache, Upgradable to Intel® vPro™ technology)﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->2.5 inch 500GB<-||->AMD Radeon HD 8790M Graphics 2GB GDDR5﻿<-||->15.6in FHD (1920x1080) Anti-Glare LED﻿<-||->Option<-||->8X DVD+/-RW﻿<-||->10/100/1000Mbps<-||->6-cell (60Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.56kg9 (with 6-cell battery and Optical Disk Drive)﻿<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD'),
(43, 39, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2013<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th generation Intel® Core™ i7-4800MQ processor (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM77 Express Chipsets<-||->16 GB DDR3L PC3-12800 Bus 1600Mhz<-||->128 GB<-||->2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, HD Webcam<-||->Dell Wireless 1550 2X2 802.11ac + Bluetooth 4.0<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery with ExpressCharge™<-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(44, 45, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th gen Intel® Core™ i7-4600M Processor (2.9 GHz, 4M cache, Upgradable to Intel® vPro™ technology)﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->2.5 inch 500GB Solid State Hybrid Drive﻿<-||->AMD Radeon HD 8690M Graphics 2GB + In﻿tel® Integrated HD 4600 Graphics﻿<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||-> Option<-||-> 8X DVD+/-RW﻿<-||->10/100/1000Mbps<-||->6-cell (60Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.12 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD'),
(45, 49, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7240 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor (2.1 GHz, 4MB Cache) ﻿Max Turbo Frequency 3.3 GHz﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics<-||->12.5" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->﻿4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.36 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR'),
(46, 51, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7240 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor (2.1 GHz, 4MB Cache) ﻿Max Turbo Frequency 3.3 GHz<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->SSD 128 GBSATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12.5" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->None<-||->10/100/1000Mbps<-||->4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.36 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR'),
(47, 52, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR) i7-4600M<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th gen Intel® Core™ i7-4600M Processor (2.9 GHz, 4M cache, Upgradable to Intel® vPro™ technology)﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->2.5 inch 320GB<-||->AMD Radeon HD 8690M Graphics 2GB + In﻿tel® Integrated HD 4600 Graphics﻿<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||->Option<-||->8X DVD+/-RW﻿<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.12 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard'),
(48, 91, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy 17-j029nr (ENERGY STAR)  New 2013<-||->Dòng  giải trí của HP (New Model 2013)<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->2.2GHz 4th generation Intel Core i7-4702MQ Processor with Turbo Boost up to 3.2GHz<-||->Intel HM78 Express Chipsets<-||->﻿8GB DDR3 SDRAM (2 DIMM)﻿<-||->1﻿TB 5400RPM hard drive with HP ProtectSmart Hard Drive Protection﻿ HDD\r\nHard drive acceleration cache (24GB solid-state drive cache) with Intel Rapid Start Technology and Intel Smart Response Technology﻿ SSD<-||->NVIDIA GeForce GT 750M switchable graphics with 2048MB DDR3 and up to 4095MB of total graphics memory﻿<-||->17.3-inch diagonal Full HD Anti-glare LED-backlit display (1920 x 1080)﻿<-||->﻿Intel 2x2 802.11b/g/n WLAN﻿<-||->Blu-ray player and SuperMulti DVD burner﻿<-||->10/100/1000Mbps<-||->6﻿-cell 62WHr 2.8 Ah lithium-ion battery﻿<-||->Windows® 8 64bit (English)<-||->3.2 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam,﻿ Beats Audio quad speakers and two subwoofers﻿r, 3 x USB 3.0'),
(49, 92, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy 15t Slect Edition (ENERGY STAR)  New 2013<-||->Dòng giải trí của HP. New Model 2013<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel(R) Quad Core(TM) i7-4702MQ (2.2 GHz, 6MB L3 Cache) w/Turbo Boost up to 3.2GHz﻿<-||->Intel HM78 Express Chipsets<-||->6GB DDR3 1600MHz Memory Max 16GB<-||->750GB 5400rpm + SSD 24GB Cache<-||->nVIDIA® GeForce® GT 750M 4GB GDDR3<-||->15.6 Full HD BrightView LED-backlit Display (1920x1080)﻿<-||->N card (802.11a/b/g/n)<-||->None<-||->10/100/1000Mbps<-||->6-Cell Lithium-Ion, Up to 9 hours and 45 minutes﻿<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint , Beats Audio with Subwoofer, 3 x USB 3.0.'),
(50, 53, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brand New 100% Full Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->128GB<-||->Intel® Integrated HD 4400 Graphics﻿<-||->14" Full HD (1920x1080) Anti-Glare WLED-backlit﻿<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->None<-||->10/100/1000Mbps<-||->﻿4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.63 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR');
INSERT INTO `table_product_compare_properties` (`id`, `id_product`, `id_compare`, `noidung`) VALUES
(51, 93, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy 15t  (ENERGY STAR)  New 2013<-||->Dòng  giải trí  của HP. New Model 2013<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel(R) Quad Core(TM) i7-4700MQ (2.4 GHz, 6MB L3 Cache) w/Turbo Boost up to 3.4GHz﻿<-||->Intel HM78 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->1TB 5400rpm<-||->nVIDIA® GeForce® GT 740M  2 GB GDDR3<-||->15.6 Full HD BrightView LED-backlit Display (1920x1080)﻿<-||->N card (802.11a/b/g/n)<-||->None<-||->10/100/1000Mbps<-||->6-Cell Lithium-Ion, Up to 9 hours and 45 minutes﻿<-||->Windows® 7 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint , Beats Audio with Subwoofer, 3 x USB 3.0.'),
(52, 62, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6430 ﻿Business Laptop﻿ (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền<-||->New in Box 100%, nhập khẩu từ USA.<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi phần cứng do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.7GHz (8x2.7GHz) Turbo Boost 3.7Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3<-||->SSD 256 GB (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->1GB Nvidia Quadro NVS 5200M + Intel® HD Graphics 4000﻿﻿﻿<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6200AGN + ﻿Bluetooth 4.0﻿<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm đen sáng sang trọng, Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, ﻿Bluetooth﻿, ﻿Backlit Keyboard, ﻿Support 3G, USB 3.0, HDMI'),
(53, 94, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy 15T - J100 (ENERGY STAR)  New 2013<-||->Dòng  giải trí cao cấp của HP công nghệ ﻿ Haswell mới nhất<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel(R) Quad Core(TM) i7-4700MQ (2.4 GHz, 6MB L3 Cache) w/Turbo Boost up to 3.4GHz﻿<-||->Intel HM78 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->1TB Hard Drive with HP ProtectSmart Hard Drive Protection﻿<-||->nVIDIA® GeForce® 840M Graphics with 2048MB of dedicated video memory﻿<-||->﻿15.6 Full HD BrightView LED-backlit Display (1920x1080)﻿<-||->N card (802.11a/b/g/n)<-||->None<-||->10/100/1000Mbps<-||-> ﻿6-Cell Lithium-Ion, Up to 9 hours and 45 minutes﻿<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Fingerprint, Beats Audio with Subwoofer, 3 x USB 3.0'),
(54, 95, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy 15t Slect Edition (ENERGY STAR)  New 2013<-||->Dòng giải trí của HP. New Model 2013<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel(R) Core(TM) i5-4200M (2.5 GHz, 3MB L3 Cache) w/Turbo Boost up to 3.1GHz﻿<-||->Intel HM78 Express Chipsets<-||->6GB DDR3 1600MHz Memory Max 16GB<-||->750GB<-||->nVIDIA® GeForce® GT 740M 2GB GDDR3<-||->15.6 HD BrightView LED-backlit Display (1366x768)﻿<-||->N card (802.11a/b/g/n)<-||->None<-||->10/100/1000Mbps<-||-> ﻿6-Cell Lithium-Ion, Up to 9 hours and 45 minutes﻿<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Beats Audio with Subwoofer, 3 x USB 3.0.'),
(55, 64, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brand New 100% Full Box<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->500GB SATA3 <-||->Intel® Integrated HD 4400 Graphics﻿<-||->14" Full HD (1920x1080) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->None<-||->10/100/1000Mbps<-||->4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.63 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard'),
(56, 96, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Envy TouchSmart 14 -K110nr Sleekbook ﻿ (ENERGY STAR) <-||->Dòng  giải trí cao cấp của HP công nghệ ﻿ Haswell mới nhất<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel Core i5-4200U (1.6 GHz, 3MB L3 Cache) w/Turbo Boost up to 2.6GHz<-||->Intel HM78 Express Chipsets<-||->8GB DDR3 1600Mhz<-||->500GB HDD + 24GB SSD Cache<-||->Intel HD Graphic 4400<-||->14.1"QHD+ LED-backlit IPS touchscreen (3200 x 1800)﻿ ﻿,10-finger multi-touch support﻿<-||->N card (802.11a/b/g/n)<-||->Option<-||->10/100/1000Mbps<-||->3-cell lithium-ion (up to 7 hours, 30 minutes)﻿<-||-> Windows® 8.1 Home Premium SP1 64bit (English)<-||->1.7 kg<-||->Vỏ nhôm trắng bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam - Bluetooth- Đèn bàn phím ﻿- ﻿Beats Audio﻿'),
(57, 66, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M Processor (2.6 GHz, 3 MB Cache) ﻿Max Turbo Frequency 3.3 GHz<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->500 GB<-||->Intel® Integrated HD 4600 Graphics﻿<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||->Option<-||->DVD+/-RW﻿<-||->10/100/1000Mbps<-||->﻿﻿9-cell (90Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.12 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD'),
(58, 97, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio Ultrabook ﻿SVT13118FX (ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của sony<-||->Full Box New 100%<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3517U Processor 1.9GHz (4x1.9GHz) Turbo Boost 3.0Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB DDR3 PC3-12800 Buss 1333Mhz<-||->128GB SSD Solid State Drive<-||->Intel Graphic HD4000 upto 1699MB Share<-||->13.3" diagonal LED-backlit HD (1366X768)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->None<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 7 Home Premium License Bản Quyền<-||->1.6kg<-||->Sliver Chống trầy xước (Thiết kế mới tuyệt đẹp )<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth® (4.0 + HS), USB 3.0'),
(59, 98, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio Ultrabook ﻿SVT13125CXS﻿( ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của sony<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3317U Processor 1.7GHz(4x1.7GHz)Turbo Boost 2.6Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB DDR3 PC3-12800 Buss 1333Mhz<-||->32GB SSD Solid State Drive + 500GB SATA 5400rpm -Ồ Cứng Lai<-||->Intel Graphic HD4000 upto 1699MB Share<-||->13.3" diagonal LED-backlit Full HD (1366X768)<-||-> Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.6kg<-||->Sliver Chống trầy xước (Thiết kế mới tuyệt đẹp )<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(60, 99, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio Ultrabook SVT13124CXS( ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của sony<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i3 " Ivy Bridge " 3217U Processor 1.8GHz(4x1.8GHz) (Cache 3MB - Bus 1066Mhz)\r\n<-||->Intel HM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Buss 1600Mhz<-||->32GB SSD Solid State Drive + 500GB SATA 5400rpm -Ồ Cứng Lai<-||->Intel Graphic HD4000 upto 1699MB Share<-||->13.3" LED-Backlit Capacitive Touchscreen (1366 x 768) Native Resolution<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->Option<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.6kg<-||->Sliver Chống trầy xước (Thiết kế mới tuyệt đẹp )<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(61, 100, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio Ultrabook SVT14113CXS( ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của sony<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i3 " Ivy Bridge " 3217U Processor 2.1GHz(8x2.1GHz)Turbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Buss 1333Mhz<-||->32GB SSD Solid State Drive + 500GB SATA 5400rpm -Ồ Cứng Lai<-||->Intel Graphic HD4000 upto 1699MB Share<-||->14.0" diagonal LED-backlit Full HD (1366X768)<-||-> Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.6kg<-||->Sliver Chống trầy xước (Thiết kế mới tuyệt đẹp )<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(62, 101, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVZ13114GXX ( ENERGY STAR) NEW 2013<-||->Dòng Business  VIP cao cấp của sony ,siêu bền,Siêu mỏng <-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3612QM Processor 2.1GHz(8x2.1GHz)Turbo Boost 3.10Ghz (Cache 6MB - Bus 1600hz)<-||->Intel HM77 Express Chipsets<-||->8 GB DDR3 PC3-12800 Buss 1333Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® HD Graphics 4000M<-||->13.1" diagonal LED-backlit Full HD (1920 x 1080)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->Option<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 7 Professional with Service Pack 1 64-bit<-||->1.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(63, 102, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony VAIO Z Series VPC-Z22AGX/B( ENERGY STAR)<-||->Dòng Business  VIP cao cấp của sony ,siêu bền,Siêu mỏng <-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 "Sandy Bridge" 2640M 2.8GHz ( 4x2.8GHz)\r\nTurbo Boost Upto 3.6Ghz (Cache 4 MB - Bus 1066Mhz)<-||->Intel HM67 Express Chipsets<-||->8 GB DDR3 PC3-12800 Buss 1333Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->AMD Radeon HD 6650M  1G+ Intel® HD Graphics 3000M<-||->13.1" diagonal LED-backlit Full HD (1920 x 1080)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->External Power Media Dock with slot loading Blu-ray Disc Player<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 7 Professional with Service Pack 1 64-bit<-||->1.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,Fingerprint'),
(64, 103, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVZ1311AFXX ( ENERGY STAR) NEW 2013<-||->Dòng Business  VIP cao cấp của sony ,siêu bền,Siêu mỏng <-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.5GHz(4x2.5GHz)Turbo Boost 3.10Ghz (Cache 3MB - Bus 1600hz)<-||->Intel HM77 Express Chipsets<-||->8 GB DDR3 PC3-12800 Buss 1333Mhz<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® HD Graphics 4000M<-||->13.1" diagonal LED-backlit Full HD (1920 x 1080)<-||-> Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->Option<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 7 Home Premium License Bản Quyền<-||->1.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(65, 104, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVS1512GPXB (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp của Sony, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3632QM Processor 2.20GHz (8x2.20GHz) Turbo Boost 3.20Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->12GB DDR3 PC3-12800 Buss 1333Mhz<-||->1000G SATA - 5400 RPM - 3Gbps - 8MB Cache  <-||->NVIDIA GeForce GT 640M LE 2GB (up to 2399MB)<-||->15.6" diagonal LED-backlit Full HD (1920 x 1080) IPS Technology<-||-> Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Professional 64-bit License Bản Quyền<-||->2.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(66, 105, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio SVS1512EPXB ( ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp của Sony, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3632QM Processor 2.20GHz (8x2.20GHz) Turbo Boost 3.20Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Buss 1333Mhz<-||->750GB SATA 7200RPM<-||->NVIDIA GeForce GT 640M LE 2GB (up to 2399MB)<-||->15.6" diagonal LED-backlit Full HD (1920 x 1080) IPS Technology<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Professional 64-bit License Bản Quyền<-||->2.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(67, 106, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVS1512EPXB (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp của Sony, siêu bền, chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3632QM Processor 2.20GHz (8x2.20GHz) Turbo Boost 3.20Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Buss 1333Mhz<-||->1000G SATA - 5400 RPM - 3Gbps - 8MB Cache  <-||->NVIDIA GeForce GT 640M LE 2GB (up to 2399MB)<-||->15.6" diagonal LED-backlit Full HD (1920 x 1080) IPS Technology<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Professional 64-bit License Bản Quyền<-||->2.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(68, 107, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVS13127PXB (ENERGY STAR) NEW 2013<-||->Dòng Business  VIP cao cấp của Sony, siêu bền, siêu mỏng <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3520M Processor 2.9GHz (4x2.9GHz)\r\nTurbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB (4GB Fixed Onboard + 4GB Removable)<-||->750G SATA 7200RPM<-||->NVIDIA GeForce GT 640M LE 2GB (up to 2399MB)<-||->13.3" diagonal LED-backlit  HD+ (1600X900)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 Professional 64-bit License Bản Quyền<-||->1.3 Kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(69, 108, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony Vaio SVS1511GFY/B (ENERGY STAR) NEW 2013<-||->Dòng Business  cao cấp của Sony ,siêu bền, chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.5GHz (4x2.5GHz) Turbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB DDR3 PC3-12800 Buss 1333Mhz<-||->640GB SATA 5400RPM<-||->NVIDIA GeForce GT 640M LE 2GB (up to 2399MB)<-||->15.6" diagonal LED-backlit Full HD (1920 x 1080) IPS Technology<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||-> Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 7 64-bit License Bản Quyền<-||->2.2kg<-||->Black Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(70, 109, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVS13122CXR (ENERGY STAR) NEW 2013<-||->Dòng Business  VIP cao cấp của Sony, siêu bền, Siêu mỏng <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB (4GB Fixed Onboard + 2GB Removable)<-||->750G SATA 7200RPM<-||-> Intel® HD Graphics 4000<-||->13.3" diagonal LED-backlit  HD (1366X768)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 64-bit<-||->1.3 Kg<-||->Màu đỏ mới tuyệt đẹp<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS) ,USB 3.0'),
(71, 110, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'SONY VAIO SVS1312ACXW (ENERGY STAR) NEW 2013<-||->Dòng Business  VIP cao cấp của Sony, siêu bền, siêu mỏng <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB DDR3<-||->500GB SATA 7200RPM<-||->Intel® HD Graphics 4000<-||->13.3" diagonal LED-backlit  HD (1366X768)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery (4400mAh)<-||->Genuine Windows® 8 64-bit<-||->1.3 Kg<-||->Màu trắng mới tuyệt đẹp<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(72, 111, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony VAIO Fit Series SVF15A18CXB (ENERGY STAR)  New 2013<-||->Dòng  giải trí cao cấp của Sony  mới nhất<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7" Ivy Bridge " 3537U Processor 2.0GHz (4x2.0GHz) Turbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM 77 Express Chipsets<-||->12GB DDR3 1600MHz Memory Max 16GB<-||->750 SATA hard drive (5400 RPM)<-||->NVIDIA® GeForce® GT 735M  2 GB GDDR5<-||->15.5-inch capacitive touchscreen display with LED backlight (Full HD 1080p)<-||->Wireless-N Wi-Fi + Bluetooth 4.0<-||->8x multi-format CD/DVD drive<-||->10/100/1000Mbps<-||->6cell-Up to 4 hours of use<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Black<-||->Bảo hành 1 năm<-||->Webcam HD, HDMI, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(73, 112, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony VAIO Fit Series SVF1521KCXB (ENERGY STAR)  New 2013<-||->Dòng  giải trí cao cấp của Sony  mới nhất<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7" Ivy Bridge " 3537U Processor 2.0GHz (4x2.0GHz) \r\nTurbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM 77 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->﻿750GB SATA hard drive (5400 RPM)<-||->NVIDIA® GeForce® GT 740M  1GB<-||->﻿15.5-inch capacitive touchscreen display with LED backlight (Full HD 1080p)<-||->Wireless-N Wi-Fi + Bluetooth 4.0<-||->8x multi-format CD/DVD drive<-||->10/100/1000Mbps<-||->6cell-Up to 4 hours of use<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Black<-||->Bảo hành 1 năm<-||->Webcam HD, HDMI, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(74, 113, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Sony VAIO Fit Series SVF1521DCXW (ENERGY STAR)  New 2013<-||->Dòng  giải trí mới nhất của Sony<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5" Ivy Bridge " 3337U Processor 1.8GHz (4x2.0GHz) Turbo Boost 2.7Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM 77 Express Chipsets<-||->4GB DDR3 1600MHz Memory Max 16GB<-||->500GB SATA hard drive (5400 RPM)<-||->NVIDIA® GeForce® GT 740M 1GB<-||->﻿15.5-inch with LED backlight (Full HD 1080p)<-||->Wireless-N Wi-Fi + Bluetooth 4.0<-||->8x multi-format CD/DVD drive<-||->10/100/1000Mbps<-||->6cell-Up to 4 hours of use<-||->Windows® 8 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->White<-||->Bảo hành 1 năm<-||->Webcam HD, HDMI, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(75, 7, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Apple MacBook Pro MC975LL/A Retina Display   ( ENERGY STAR) <-||->Dòng cao cấp của Apple  ,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3610QM Processor 2.3GHz(8x2.1GHz)Turbo Boost 3.3Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB 1600Mhz DDR3 RAM<-||->SSD 256 GB of flash storage<-||->1GB gDDR5 nVidia GeForce GT 650M Graphics + intel HD 4000M<-||->15.4-inch Retina display LED backlighting IPS technology(2880X1800)<-||->802.11n Wi-Fi Wireless Networking<-||->8x Slot-Loading Super Drive<-||->Gigabit Ethernet Wired Networking<-||->77.5 WHr Lithium Polymer Battery Upto 7 Hours<-||->Mac OS X Mountain Lion<-||->2.6 kg<-||->Silver Chống trầy xước<-||->Apple 1-Year World-Wide Warranty<-||->720p FaceTime HD Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0, FireWire 800,Thunderbolt,SDXC Card Slot'),
(76, 8, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'MacBook Pro ME662LL/A Retina Display ( ENERGY STAR)<-||->Dòng   cao cấp của Apple  ,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3230M Processor 2.6GHz(4x2.6GHz)Turbo Boost 3.2Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB 1600Mhz DDR3 RAM<-||->SSD 256 GB of flash storage<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->13.3" LED-backlit Retina display with IPS technology(2560X1600)<-||->802.11n Wi-Fi Wireless Networking<-||->Option<-||->Gigabit Ethernet Wired Networking<-||->77.5 WHr Lithium Polymer Battery Upto 7 Hours<-||->Mac OS X Mountain Lion<-||->1.6 kg<-||->Silver Chống trầy xước\r\n<-||->Apple 1-Year World-Wide Warranty<-||->720p FaceTime HD Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0, FireWire 800,Thunderbolt,SDXC Card Slot'),
(77, 9, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Apple MacBook Pro 15-inch MD103LL/A  ( ENERGY STAR) <-||->Dòng   cao cấp của Apple  ,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3610QM Processor 2.3GHz(8x2.1GHz)Turbo Boost 3.3Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB 1600Mhz DDR3 RAM<-||->500GB 5400rpm SATA II HDD <-||->512MB gDDR5 nVidia GeForce GT 650M Graphics + intel HD 4000M<-||->15.4" LED-Backlit Glossy Wide-Screen Display 1440x900<-||->802.11n Wi-Fi Wireless Networking<-||->8x Slot-Loading Super Drive<-||->Gigabit Ethernet Wired Networking<-||->77.5 WHr Lithium Polymer Battery Upto 7 Hours<-||->Mac OS X v10.8 Mountain Lion<-||->2.6 kg<-||->Silver Chống trầy xước<-||->Apple 1-Year World-Wide Warranty<-||->720p FaceTime HD Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0, FireWire 800,Thunderbolt,SDXC Card Slot'),
(78, 17, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Toshiba Ultrabook Satellite U845W-S4180 (ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của Toshiba<-||->Brandnew 100% & Sealed-in-Box ,Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3537U Processor 2.0GHz (4x2.0GHz) Turbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB DDR3 1600MHz RAM<-||->256GB Solid State Drive (mSATA, SSD)<-||->Intel Graphic HD4000 upto 1699MB Share<-||->14.4-inch widescreen HD TruBrite LED-backlit display 1792 x 768 with native HD 720p resolution (1792 x 768, 16:9 aspect ratio)<-||->Intel® Centrino® Wireless-N 2230, 2x2 BGN + Wi-Di Capable﻿<-||->﻿Sold Separately: Toshiba USB Portable DVD SuperMulti Drive﻿<-||->10/100/1000Mbps<-||->Lithium Polymer (54Wh, 4-Cell)<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.6kg<-||->Midnight Silver Aluminum with Soft Touch Trim<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(79, 18, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Toshiba Ultrabook Satellite U845W-S406 (ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của Toshiba<-||->Brandnew 100%<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3317U Processor 1.7 GHz (4x1.7 GHz) Turbo Boost 2.6 Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->6GB DDR3 1600MHz RAM<-||->HDD 500GB + SSD 32GB<-||->Intel Graphic HD 4000 upto 1699MB Share<-||->14.4-inch widescreen HD TruBrite LED-backlit display 1792 x 768 with native HD 720p resolution (1792 x 768, 16:9 aspect ratio)<-||->﻿Intel® Centrino® Wireless-N 2230, 2x2 BGN + Wi-Di Capable﻿<-||->Sold Separately: Toshiba USB Portable DVD SuperMulti Drive﻿<-||->10/100/1000Mbps<-||->Lithium Polymer (54Wh, 4-Cell)<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.6kg<-||->Midnight Silver Aluminum with Soft Touch Trim<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth® (4.0 + HS), USB 3.0'),
(80, 20, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Toshiba Portege Ultrabook (ENERGY STAR) New 2013<-||->Dòng Business cao cấp của Toshiba, Siêu nhẹ<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->3rd Generation  Intel® Core™ i7 " Ivy Bridge " 3687U Processor 2.1GHz (4x2.1GHz) Turbo Boost 3.3Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM 77 Express Chipsets<-||->6GB DDR3 1600MHz memory<-||->128GB Solid State Drive (mSerial ATA, SSD)<-||->Intel HD 4000M<-||->13.3-Inch Led-Backlit Display With (1366 X 768)<-||->Intel® Centrino® Advanced-N 6235 (802.11a/g/n + WiDi Capable)﻿<-||->Sold Separately: Toshiba USB Portable DVD SuperMulti Drive<-||->i﻿ntel® 82579LM Gigabit Network Connection﻿<-||->Li-Ion (47Wh, 8-Cell)<-||->Windows® 7 Professional 64-bit,SP1+ Windows® 7 Professional 32-bit SP1<-||->1.1kg<-||->﻿Ultimate Silver﻿<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS) ,1-USB (2.0) port, 1-USB (2.0) port with Sleep and Charge, 1-USB (3.0) port, HDMI® '),
(81, 21, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Toshiba Portege Z930-S9302﻿(ENERGY STAR) New 2013<-||->Dòng  Business cao cấp của Toshiba, Siêu nhẹ<-||->Brandnew 100%<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->3rd Generation  Intel® Core™ i7 " Ivy Bridge " 3687U Processor 2.1 GHz (4x1.8GHz) Turbo Boost 3.3 Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 1600MHz memory<-||->128GB Solid State Drive (mSerial ATA, SSD)<-||->Intel HD 4000<-||->13.3-Inch Led-Backlit Display With (1366 X 768)<-||->﻿Intel® Centrino® Advanced-N 6235 (802.11a/g/n + WiDi Capable)﻿<-||->Sold Separately: Toshiba USB Portable DVD SuperMulti Drive<-||->i﻿ntel® 82579LM Gigabit Network Connection﻿<-||->Li-Ion (47Wh, 6-Cell)<-||->Windows® 7 Professional 64-bit<-||->1.1kg<-||->Ultimate Silver﻿<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), 1-USB (2.0) port, 1-USB (2.0) port with Sleep and Charge, 1-USB (3.0) port, HDMI® '),
(82, 68, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3 SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->14" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->﻿4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.63 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR'),
(83, 69, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6430 ﻿Business Laptop﻿ (ENERGY STAR)<-||->Dòng Business  cao cấp nhất của Dell, siêu bền<-||->Mới 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3520M Processor 2.9 GHz (4x2.9 GHz) Turbo Boost 3.6 GHz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4 GB DDR3 PC3-10600 Bus 1333Mhz<-||->128 GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->1GB Nvidia Quadro NVS 5200M + Intel® HD Graphics 4000﻿﻿﻿<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6200AGN + ﻿Bluetooth 4.0﻿<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm đen sáng sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, ﻿Bluetooth﻿, Support 3G, USB 3.0, HDMI'),
(84, 72, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7240 Ultrabook (ENERGY STAR) NEW 2013<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12.5" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->4-cell (45Whr) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.36 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard'),
(85, 73, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M Processor (2.6 GHz, 3 MB Cache) ﻿Max Turbo Frequency 3.3 GHz<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3 SDRAM<-||->320 GB<-||->Intel® Integrated HD 4600 Graphics﻿<-||->14" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->Option<-||->DVD+/-RW﻿<-||->10/100/1000Mbps<-||->﻿﻿6-cell (60Wh) Lithium Ion battery with ExpressCharge™﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.12 kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD'),
(86, 76, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6430 ﻿Business Laptop﻿ (ENERGY STAR)<-||->Dòng Business  cao cấp nhất của Dell, siêu bền<-||->Brand New 100% Full Box nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3320M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.2Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-10600 Bus 1333Mhz<-||->320 GB<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6200AGN<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm đen sáng sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Support 3G, USB 3.0, HDMI, Backlit Keyboard'),
(87, 78, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6430 ﻿Business Laptop﻿ (ENERGY STAR) NEW 2013<-||->Dòng Business cao cấp nhất của DELL, siêu bền<-||->New-in-Box  Mới 100% , nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3540M Processor 3.0 GHz (4x3.0 GHz) Turbo Boost 3.7Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4 GB DDR3 PC3-12800 Bus 1600Mhz<-||->﻿320 GB<-||->Intel HD 4000 Graphics (up to 1294MB)<-||->13.3" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.6kg<-||->Vỏ Nhôm đen sang trọng Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, USB 3.0, HDMI, WWAN 4G-LTE có sẵn'),
(88, 141, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Alienware 14 (New 2013)<-||->Dòng  Gaming cao cấp của Dell, Chuyên dụng dành cho Game thủ<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1  tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4rd generation Haswell Intel(R) Quad Core(TM) i7-4700QM (2.4 GHz, 6MB L3 Cache) w/Turbo Boost up to 3.4GHz﻿<-||->Intel HM78 Express Chipsets<-||->16GB Dual Channel DDR3 1600MHz<-||->750GB 7200rpm<-||->2 GB NVIDIA® GeForce® GT 765M GDDR5 (chuyên đồ họa +Game)<-||->﻿14.1" High Def Full HD ( 1080p/1920x1080) with WLED backlight<-||->Integrated 802.11 b/g/n ,10/100/1000 Base T , Bluetooth 4.0<-||->Dual Layer DVD+/-R Drive<-||->10/100/1000Mbps<-||->8-Cell Primary Battery<-||->Windows® 8 64bit (English)<-||->2.5kg<-||->Đen<-||->Bảo hành 1 năm<-||->Webcam, HDMI, USB 3.0, Card reader, Backlit Keyboard, Bluetooth 4.0'),
(89, 114, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7-4600U (Up to 3.30 GHz, 4MB L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->256 GB Solid State Drive SSD<-||->Intel HD 4400 Graphics<-||->14" LED Backlit HD+ (1600x900)<-||->Intel 802.11abgn wireless﻿<-||->None<-||->10/100/1000Mbps<-||->4 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.27 kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, FingerPrint, Support WWAN 3G'),
(90, 115, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X230T (ENERGY STAR) cảm ứng đa điểm<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100% & Sealed-in-Box. Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->3rd Gen Intel® Core™ i7"Sandy Bridge" 3520M Processor 2.9GHz (4x2.9GHz) Turbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->256GB 2.5" (SATA3) Mobility Solid State Drive<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->12.5" Premium HD IPS LED Backlit HD (1366x768) Multi-Touch (Finger & Pen)<-||->Intel Wifi Link 6200AGN + Bluetooth 2.1+EDR<-||->None<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Finger Print, Bluetooth 3.0+EDR, Support WWAN 3G'),
(91, 116, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'ThinkPad X1 Carbon ( ENERGY STAR)<-||->Dòng Business cao cấp nhất của IBM, siêu bền, siêu vip, siêu nhẹ<-||->New-in-Box 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 "﻿Ivy Bridge﻿" 3667U Processor 2.0GHz (4x2.0GHz)\r\nTurbo Boost 3.2Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->8GB DDR3 PC3-10600  Buss 1333Ghz<-||->256GB SATA SSD Solid State 6Gb/s SFF Hard Drive<-||->Intel Graphics Media Accelerator HD 4000M Graphics<-||->14.0" PREMIUM HD+ (1600X900) LED BACKLIT DISPLAY<-||->Intel Wifi Link 6200AGN +Bluetooth 2.1+EDR<-||->None<-||->10/100/1000Mbps<-||->Integrated RapidCharge Battery, Up to 6.3 hours<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhung Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Finger Print, Bluetooth 3.0+EDR, Support WWAN 3G'),
(92, 80, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Vostro 5560 ( ENERGY STAR) New 2013<-||->Dòng Small Business Dell  <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel Core i5-3230M (Ivy Bridge) 4x 2.6 (Ghz) – Turbo Boost : 3.2 (Ghz) – |512KB + 3MB|(L2 + L3 Cache) 22(nm)<-||->Intel HM77 Express Chipsets<-||->4GB ( 4096 MB ) DDR3 – bus 1600 Mh<-||->750 GB (SATA II 7200 RPM/ 2.5 inch/ 3Gbps/ 16MB Cache)<-||->NVIDIA GeForce 630M GT, with 2G VRAM, Optimus<-||->15 inch LED Backlit Display with Truelife and HD resolution<-||->N card/ Bluetooth V3.0+HS/ Webcam / eSATA<-||->DVDRW<-||->10/100/1000Mbps<-||->51.2Whr, 3-Cell Battery (integrated)<-||->Fee option windows 7 pro<-||->2.2 kg<-||->Aluminum Brown , Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam,USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)'),
(93, 117, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo, siêu bền, siêu VIP<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4200U (Up to 2.90 GHz, 3MB L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->180 GB Solid State Drive SSD<-||->Intel HD 4400 Graphics<-||->14" LED Backlit HD+ (1600x900)<-||->﻿Intel 802.11abgn wireless﻿<-||->None<-||->10/100/1000Mbps<-||->4 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.27 kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, FingerPrint, Support WWAN 3G'),
(94, 81, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Vostro 5460 ( ENERGY STAR) New 2013<-||->Dòng Small Business Dell  <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel Core i5-3230M (Ivy Bridge) 4x 2.6 (Ghz) – Turbo Boost : 3.2 (Ghz) – |512KB + 3MB|(L2 + L3 Cache) 22(nm)<-||->Intel HM77 Express Chipsets<-||->4GB ( 4096 MB ) DDR3 – bus 1600 Mh<-||->500 GB (SATA II 7200 RPM/ 2.5 inch/ 3Gbps/ 16MB Cache)<-||->NVIDIA GeForce 630M GT, with 2G VRAM, Optimus<-||->14.0  inch LED Backlit Display with Truelife and HD resolution (1366x768)<-||->N card/ Bluetooth V3.0+HS/ Webcam / eSATA<-||->Option<-||->10/100/1000Mbps<-||->51.2Whr, 3-Cell Battery (integrated)<-||->Fee option windows 7 pro<-||->1.6kg<-||->Aluminum Brown , Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam,USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)'),
(95, 84, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Vostro 5460 ( ENERGY STAR) New 2013<-||->Dòng Small Business Dell  <-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel Core™ i3-3120M processor (3M Cache, 2.5 GHz)<-||->Intel HM77 Express Chipsets<-||->4GB ( 4096 MB ) DDR3 – bus 1600 Mh<-||->500 GB (SATA II 7200 RPM/ 2.5 inch/ 3Gbps/ 16MB Cache)<-||->Intel® HD Graphics 4000 upto 1649MB Share<-||->14.0  inch LED Backlit Display with Truelife and HD resolution(1366x768)<-||->N card/ Bluetooth V3.0+HS/ Webcam / eSATA<-||->Option<-||->10/100/1000Mbps<-||->51.2Whr, 3-Cell Battery (integrated)<-||->Fee option windows 7 pro<-||->1.6kg<-||->Aluminum Brown , Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam,USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)'),
(96, 118, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X230 Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của IBM, siêu bền, siêu nhẹ<-||->Brandnew 100% nguyên seal<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7" Ivy Bridge " 3520M Processor 2.9GHz (4x2.9GHz)\r\nTurbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->320GB<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->12.5" Anti-glare LED backlit High Definition IPS (1366 x 768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->Option<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3 kg<-||->Vỏ Nhung Đen sang trọng Chống trầy xước<-||->Bảo hành chính hãng 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(97, 119, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'ThinkPad X1 Carbon Ultrabook( ENERGY STAR) Siêu vip<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền, siêu vip, siêu nhẹ<-||->New-in-Box 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 "Ivy Bridge " 3317U Processor 1.7GHz (4x1.7GHz)\r\nTurbo Boost 2.6Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-10600  Buss 1333Ghz<-||->128GB SATA SSD Solid State 6Gb/s SFF Hard Drive<-||->Intel Graphics Media Accelerator HD 4000M Graphics<-||->14.0" PREMIUM HD+ (1600X900) LED BACKLIT DISPLAY<-||->Intel Wifi Link 6200AGN +Bluetooth 4.0+EDR<-||->Option<-||->10/100/1000Mbps<-||->4 cell , Up to 6.3 hours<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhung Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Finger Print, Support WWAN 3G, Backlit Keyboard'),
(98, 85, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Vostro 5460 ( ENERGY STAR) New 2013<-||->Dòng  Business Dell<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel Core™ i3-3120M processor (3M Cache, 2.5 GHz)<-||->Intel HM77 Express Chipsets<-||->2GB ( 4096 MB ) DDR3 – bus 1600 Mh<-||->500 GB (SATA II 7200 RPM/ 2.5 inch 16MB Cache)<-||->Intel® HD Graphics 4000 upto 1649MB Share<-||->14.0  inch LED Backlit Display with Truelife and HD resolution(1366x768)<-||->N card/ Bluetooth V3.0+HS/ Webcam / eSATA<-||->Option<-||->10/100/1000Mbps<-||->51.2Whr, 3-Cell Battery (integrated)<-||->Fee option windows 7 pro<-||->1.6kg<-||->Aluminum Brown , Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam,USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)');
INSERT INTO `table_product_compare_properties` (`id`, `id_product`, `id_compare`, `noidung`) VALUES
(99, 86, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'DELL Audi A5 N5521<-||->Dòng  giải trí của DELL<-||->New-in-Box  Mới 100%﻿,Bảo hành chính hãng<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3537U  Processor 2.0GHz (4x2.0GHz) Turbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->750 GB SATA<-||->Mobility Radeon HD 8730M 2GB VRAM (hỗ trợ tốt cho game và đồ họa)﻿<-||->15.6 inch LED Backlit Display with True Life and HD  (1366 x 768)<-||->Chuẩn N / with Dell Bluetooth 4.0/ Chiclet + Multi-touch KB<-||->DVDRW<-||->10/100/1000Mbps<-||->4-cell  Li-Ion battery<-||->Fee option windows 7 pro<-||->2.2 kg<-||->Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Bàn phím , VGA (D-Sub), HDMI, 4 x USB 3.0'),
(100, 87, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'DELL Audi A5 N5521<-||->Dòng  giải trí của DELL<-||->Refurbished - Outlet<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3537U  Processor 2.0GHz (4x2.0GHz) Turbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->750 GB SATA<-||->Mobility Radeon HD 8730M 2GB VRAM (hỗ trợ tốt cho game và đồ họa)﻿<-||->15.6 inch LED Backlit Display with True Life and HD  (1366 x 768) Touch Screen<-||->Chuẩn N / with Dell Bluetooth 4.0/ Chiclet + Multi-touch KB<-||->DVDRW<-||->10/100/1000Mbps<-||->4-cell  Li-Ion battery<-||->Win 8<-||->2.2 kg<-||->Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->webcam, VGA (D-Sub), HDMI, 4 x USB 3.0'),
(101, 120, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad X230T (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New-in-Box 100%, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->3rd Gen Intel® Core™ i5"Sandy Bridge" 3320M Processor 2.6GHz (4x2.6GHz) Turbo Boost 3.2Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->128GB 2.5" (SATA3) Mobility Solid State Drive<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->12.5" Premium HD IPS LED Backlit HD (1366x768) Multi-Touch (Finger & Pen)<-||->Intel Wifi Link 6200AGN + Bluetooth 2.1+EDR<-||->None<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Finger Print, Bluetooth 3.0+EDR, Support WWAN 3G'),
(102, 88, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'DELL Audi A5 N5521<-||->Dòng  giải trí của DELL<-||->Refurbished - Outlet<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3537U  Processor 2.0GHz (4x2.0GHz) Turbo Boost 3.1Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->750 GB SATA<-||->﻿Mobility Radeon HD 8730M 2GB VRAM (hỗ trợ tốt cho game và đồ họa)﻿<-||->15.6 inch LED Backlit Display with True Life and HD  (1366 x 768)<-||->Chuẩn N / with Dell Bluetooth 4.0/ Chiclet + Multi-touch KB<-||->DVDRW<-||->10/100/1000Mbps<-||->4-cell  Li-Ion battery<-||->Win 8<-||->2.2 kg<-||->Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam, VGA (D-Sub), HDMI, 4 x USB 3.0'),
(103, 121, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo ThinkPad X240 Ultrabook New Model 2014﻿<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4300U (Up to 3.00 GHz, 3MB L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->256 GB Solid State Drive SSD<-||->Intel HD 4400 Graphics<-||->12.5" LED Backlit HD (1366x768)<-||->Option<-||->None<-||->10/100/1000Mbps<-||->3 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Support WWAN 3G'),
(104, 90, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'DELL Audi A5 N5521<-||->Dòng  giải trí của DELL<-||->New-in-Box  Mới 100%﻿,Bảo hành chính hãng<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3337U  Processor 1.8GHz (4x1.8GHz) Turbo Boost 2.7Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB DDR3 1600MHz Memory Max 16GB<-||->750 GB SATA<-||->Mobility Radeon HD 8730M 2GB VRAM (hỗ trợ tốt cho game và đồ họa)﻿<-||->15.6 inch LED Backlit Display with True Life and HD  (1366 x 768)<-||->Chuẩn N / with Dell Bluetooth 4.0/ Chiclet + Multi-touch KB<-||->DVDRW<-||->10/100/1000Mbps<-||->4-cell  Li-Ion battery<-||->Fee option windows 7 pro<-||->2.2 kg<-||->Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Bàn phím , VGA (D-Sub), HDMI, 4 x USB 3.0'),
(105, 164, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo ThinkPad X240 Ultrabook New Model 2014﻿<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%. Sắp có hàng<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5-4300U (Up to 3.00 GHz, 3MB L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->128 GB Solid State Drive SSD<-||->Intel HD 4400 Graphics<-||->12.5" LED Backlit HD (1366x768)<-||->Option<-||->None<-||->10/100/1000Mbps<-||->3 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Support WWAN 3G'),
(106, 122, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad X230 ( ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền, siêu nhẹ<-||->New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3320M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.3Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->320GB SATA 7200RPM<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->12.5" LED Backlit HD (1366x768) <-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->None<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Genuine Windows® 7 Home Premium License Bản Quyền<-||->1.3 kg<-||->Vỏ Nhung Đen sang trọng Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, Wwan Gobi 3000'),
(107, 123, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X230 Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền, siêu nhẹ<-||->New in Box 100%. Ship from USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.5GHz (4x2.5GHz)\r\nTurbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->320G SATA 7200RPM<-||->Intel Graphics Media Accelerator HD 4000 Graphics<-||->12.5"  LED Backlit HD (1366x768) <-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->None<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.3 kg<-||->Vỏ Nhung Đen sang trọng Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint'),
(108, 89, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'DELL Audi A5 N5521<-||->Dòng  giải trí của DELL<-||->New-in-Box  Mới 100%﻿, Bảo hành chính hãng<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3337U  Processor 1.8GHz (4x1.7GHz) Turbo Boost 2.7Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB DDR3 1600MHz Memory Max 16GB<-||->500 GB SATA<-||->Mobility Radeon HD 7670M 1GB VRAM (hỗ trợ tốt cho game và đồ họa)<-||->15.6 inch LED Backlit Display with True Life and HD  (1366 x 768)<-||->Chuẩn N / with Dell Bluetooth/ Chiclet<-||->DVDRW<-||->10/100/1000Mbps<-||->6-cell  Li-Ion battery<-||->Fee option windows 7 pro<-||->2.2 kg<-||->Vỏ hợp kim nhôm cực kỳ sang trọng<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, VGA (D-Sub), HDMI, 4 x USB 3.0'),
(109, 142, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell XPS 15 Touch Screen Laptop - New Model 2014 ( ENERGY STAR) <-||->Dòng giải trí cao cấp của Dell<-||->Brandnew 100%. Sắp có hàng<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Generation Intel® Core™ i7-4702HQ processor (6M Cache, up to 3.2 GHz)<-||-><-||->12GB DDR3L 1600MHz﻿<-||->500GB SATA 7200RPM + SSD 32G<-||->NVIDIA® GeForce® GT 750M 2GB GDDR5﻿<-||->15.6 inch LED Backlit Touch Display with Truelife and QHD+ resolution (3200 x 1800)﻿<-||->﻿Intel® Dual Band Wireless-AC 7260 + Bluetooth 4.0<-||->None<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery 9cell<-||->Windows® 8.1 64bit (English)<-||->2.01 kg<-||->Silver Anodized Aluminum<-||->1 năm<-||->Webcam ,Backlit Keyboard , Bluetooth® (4.0 + HS) ,USB 3.0'),
(110, 143, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell XPS 15 2012 ( ENERGY STAR) <-||->Dòng   cao cấp của DELL ,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3632QM Processor 2.2GHz (8x2.1GHz) Turbo Boost 3.2Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->8GB DDR3 1600MHz Memory Max 16GB<-||->750G SATA  7200RPM + 32G SSD <-||->NVIDIA® GeForce® GT 640M with 2 GB GDDR5 VRAM<-||->15.6" diagonal LED-backlit Full HD (1920 x 1080) <-||->Intel® Centrino® Advanced-N 6235 (802.11a/b/g/n)<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->Internal Lithium Polymer Battery 9cell<-||->Windows® 7 Home Premium SP1 64bit (English)<-||->2.2 kg<-||->Silver Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(111, 144, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell XPS 12 Convertible Touch Ultrabook ( ENERGY STAR) <-||->Dòng giải trí cao cấp của Dell, siêu mỏng nhẹ, cực đẹp<-||->Brandnew 100% Full Box<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Generation Intel® Core™ i7-4500U processor (3M Cache, up to 3.0 GHz)<-||-><-||->8 GB Dual Channel DDR3L at 1600MHz<-||->256 GB Solid State Drive﻿<-||-> Intel® HD Graphics 4400<-||->12.5 inch LED Backlit Touch Display with Truelife and FHD resolution (1920 x 1080)﻿<-||->I﻿ntel® Dual Band Wireless-AC 7260 + Bluetooth 4.0﻿<-||->None<-||-><-||->﻿55 WHr, 6-Cell Battery (integrated)﻿<-||->Windows® 7 Home Premium SP1 64bit (English)<-||->1.5 kg<-||->Silver Anodized Aluminum<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(112, 145, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', '<-||->Dell XPS 12 Convertible Touch Ultrabook ( ENERGY STAR) <-||->Dòng giải trí cao cấp của Dell, siêu mỏng nhẹ, cực đẹp<-||->Brandnew 100% Full Box<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Generation Intel® Core™ i5-4200U processor (3M Cache, up to 2.6 GHz)<-||->4GB Dual Channel DDR3L at 1600MHz<-||-> 128GB Solid State Drive﻿<-||->﻿Intel® HD Graphics 4400<-||->12.5 inch LED Backlit Touch Display with Truelife and FHD resolution (1920 x 1080)﻿<-||->I﻿ntel® Dual Band Wireless-AC 7260 + Bluetooth 4.0﻿<-||->None<-||-><-||->55 WHr, 6-Cell Battery (integrated)﻿<-||->Windows® 7 Home Premium SP1 64bit (English)<-||->1.5 kg<-||->Silver Anodized Aluminum<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(113, 146, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell XPS 14 ( ENERGY STAR) <-||->Dòng giải trí cao cấp của Dell<-||->Brandnew 100% Full Box<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3317U  Processor 1.7GHz (4x1.7GHz) Turbo Boost 2.7Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel HM77 Express Chipsets<-||->4GB DDR3 1600MHz Memory Max 16GB<-||->500GB HDD 7200rpm + 32GB SSD Cache<-||->NVIDIA® GeForce® GT 630M with 1 GB GDDR5 VRAM + Intel HD 4000M<-||->14.0" HD+ (900p) Truelife Infinity Display with Skype-Certified Hi-Def Webcam<-||->Killer™ Wireless-N<-||->DVDRW<-||->10/100/1000Mbps<-||->69WHr battery; 8-Cell Li-Polymer (built-in)<-||->Windows® 7 Home Premium SP1 64bit (English)<-||->2.1 kg<-||->Silver Anodized Aluminum<-||->Bảo hành 1 năm<-||->Webcam, Backlit Keyboard, Bluetooth® (4.0 + HS), USB 3.0'),
(114, 124, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100% & Sealed-in-Box. Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4300U (Up to 3.3 GHz, 4MB, L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB<-||->﻿Intel® HD Graphics 4400﻿<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366X768)<-||->Option<-||->None<-||->10/100/1000Mbps<-||->ThinkPad® 68 Battery (3-cell 23.5 Whr)﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.8kg<-||->Đen sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, FingerPrint, Support 3G, USB 3.0'),
(115, 125, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T440s (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->﻿4th Gen Intel® Core™ i5-4300U (Up to 2.90 GHz, 3MB, L3, 1600 MHz FSB)<-||->Intel QM87 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->256GB<-||->Intel® HD Graphics 4400﻿<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600x900)<-||->Intel 802.11 ac abgn wireless﻿<-||->None<-||->10/100/1000Mbps<-||->ThinkPad® 68 Battery (3-cell 23.5 Whr)﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.58kg<-||->Đen sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(116, 126, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440p Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4330M (Up to 3.5 GHz, 3MB, L3, 1600 MHz FSB)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->256GB<-||->﻿Intel® HD Graphics 4600﻿<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600x900)<-||->Option<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->10/100/1000Mbps<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.1 kg<-||->Đen sang trọng<-||->1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(117, 127, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T440s (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->﻿4th Gen Intel® Core™ i5-4300U (Up to 2.90 GHz, 3MB, L3, 1600 MHz FSB)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB<-||->﻿Intel® HD Graphics 4400﻿<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600x900)<-||->Intel 802.11 ac abgn wireless﻿<-||->None<-||->10/100/1000Mbps<-||->ThinkPad® 68 Battery (3-cell 23.5 Whr)﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.58kg<-||->Đen sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(118, 128, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T440 (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->Brandnew 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U (Up to 2.90 GHz, 3MB, L3, 1600 MHz FSB)﻿<-||->Intel QM87 Express Chipsets<-||->12GB DDR3 PC3-12800 Bus 1600Mhz<-||->256GB<-||->﻿Intel® HD Graphics 4400﻿<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366X768)<-||->Option<-||->8x DVD+/-RW DL with LightScribe<-||->10/100/1000Mbps<-||->ThinkPad® 68 Battery (3-cell 23.5 Whr)﻿<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.8kg<-||->Đen sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Support 3G, USB 3.0'),
(119, 129, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T430S (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New in Box 100%. Nhập khẩu trực tiếp USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3520M Processor 2.9GHz (4x2.9GHz)\r\nTurbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->1GB Nvidia Quadro NVS 5200M + Intel® HD Graphics 4000<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.79 kg<-||->Vỏ nhung  Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Backlit Keyboard, Fingerprint'),
(120, 130, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T530 (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3520M Processor 2.9GHz (4x2.9GHz)\r\nTurbo Boost 3.6Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->180GB<-||->1GB Nvidia Quadro NVS 5400M + Intel® HD Graphics 4000<-||->15.6" LED-Backlit HD + Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.2kg<-||->Vỏ nhung  Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD , Bluetooth 4.0+EDR, Fingerprint'),
(121, 131, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T430s (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New-in-Box  Mới 100%. Nhập khẩu trực tiếp USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3210M Processor 2.5GHz (4x2.5GHz)\r\nTurbo Boost 3.1Ghz (Cache 3MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->320G 5400RPM<-||->1GB Nvidia Quadro NVS 5200M + Intel® HD Graphics 4000<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6 cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.79 kg<-||->Vỏ nhung  Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR, Fingerprint, USB 3.0'),
(122, 132, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T430 Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->﻿New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3320M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.2Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB SATA 7200RPM<-||->Intel® HD Graphics 4000<-||->14.0" LED-Backlit HD+ Anti-Glare Matte Display (1600x900)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.2kg<-||->Vỏ nhung  Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0, Mini DisplayPort, Microphone, ExpressCard/34'),
(123, 133, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'LenovoThinkpad T430 Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Lenovo, siêu bền<-||->New in Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 " Ivy Bridge " 3320M Processor 2.6GHz (4x2.6GHz)\r\nTurbo Boost 3.2Ghz (Cache 4MB - Bus 1066Mhz)<-||->Intel QM77 Express Chipsets<-||->4GB DDR3 PC3-12800 Bus 1600Mhz<-||->500GB SATA 7200RPM<-||->Intel® HD Graphics 4000<-||->14.0" LED-Backlit HD Anti-Glare Matte Display (1366x768)<-||->Intel Wifi Link 6205AGN +Bluetooth 4.0+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->6cell High Capacity<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.2kg<-||->Vỏ nhung  Đen sang trọng  Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0, Mini DisplayPort, Microphone, ExpressCard/34'),
(124, 134, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo THINKPAD W540 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp của Lenovo chuyên dụng cho đồ họa và thiết kế<-||->Brand New 100%. Ship from USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4800MQ (Up to 3.7GHz, 6MB L3, 1600MHz FSB)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600 Mhz<-||->256GB<-||->NVIDIA Quadro K1100M 2GB GDDR3<-||->15.6" LED-Backlit Full HD Wide-Viewing Angle Anti-Glare (1920x1080)<-||->Intel 802.11abgn wireless﻿<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery (9 cell)<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) <-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0'),
(125, 135, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo THINKPAD W540 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp của Lenovo chuyên dụng cho đồ họa và thiết kế<-||->Brand New 100%. Ship from USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4700MQ (Up to 3.4GHz, 6MB L3, 1600MHz FSB)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600 Mhz<-||->﻿500GB<-||->NVIDIA Quadro K1100M 2GB GDDR3<-||->15.6" LED-Backlit Full HD Wide-Viewing Angle Anti-Glare (1920x1080)<-||->Intel 802.11abgn wireless﻿<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery (9 cell)<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) <-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0'),
(126, 136, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'IBM THINKPAD W530 (ENERGY STAR)<-||->Dòng máy trạm cao cấp của IBM chuyên dụng cho đồ họa và thiết kế, siêu bền<-||->New-in-Box  Mới 100% , nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.7GHz (8x2.7GHz)\r\nTurbo Boost 3.7Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM 77 Express Chipsets<-||->8 GB DDR3 PC3-12800 Bus 1600 Mhz<-||->SSD 180GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->NVIDIA Quadro K1000M- 2GB +intel hd 4000M<-||->15.6" LED-Backlit FullHD Wide-Viewing Angle Anti-Glare (1920x1080)<-||->Intel Centrino Ultimate N6300 AGN + Bluetooth 4.0<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery (9 cell)<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0,Backlid Keyboard'),
(127, 137, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'IBM THINKPAD W530 (ENERGY STAR)<-||->Dòng máy trạm cao cấp của IBM chuyên dụng cho đồ họa và thiết kế, siêu bền<-||->New-in-Box  Mới 100% , nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3740QM Processor 2.7GHz (8x2.7GHz)\r\nTurbo Boost 3.7Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM 77 Express Chipsets<-||->8 GB DDR3 PC3-12800 Bus 1600 Mhz<-||->SSD 180GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->NVIDIA Quadro K1000M- 2GB +intel hd 4000M<-||->15.6" LED-Backlit FullHD Wide-Viewing Angle Anti-Glare (1920x1080)<-||->Intel Centrino Ultimate N6300 AGN + Bluetooth 4.0<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery (9 cell)<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, USB 3.0,Backlid Keyboard'),
(128, 139, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'IBM THINKPAD W530 (ENERGY STAR)<-||->Dòng máy trạm cao cấp của IBM chuyên dụng cho đồ họa và thiết kế<-||->New 100% Full Box. Ship From USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 " Ivy Bridge " 3630QM Processor 2.4GHz (8x2.4GHz)\r\nTurbo Boost 3.4Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM 77 Express Chipsets<-||->8GB DDR3 PC3-12800 Bus 1600 Mhz<-||->500GB 2.5" 7200rpm Hard Drive﻿﻿<-||->NVIDIA Quadro K1000M- 2GB + Intel HD 4000<-||->15.6" LED-Backlit  HD Plus Wide-Viewing Angle Anti-Glare (1600x900)<-||->Intel Centrino Ultimate N6205 AGN + Bluetooth 4.0<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery (9 cell)<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth, Fingerprint, USB 3.0, Backlid Keyboard'),
(129, 138, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'IBM THINKPAD W520 Mobile Workstation (ENERGY STAR)<-||->Dòng máy trạm cao cấp của IBM chuyên dụng cho đồ họa và thiết kế, siêu bền<-||->Likenew mới 99%﻿, nhập khẩu từ USA<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 "Sandy Bridge" 2720QM Processor 2.2GHz (8x2.2GHz)\r\nTurbo Boost 3.2Ghz (Cache 6MB - Bus 1066Mhz)<-||->Intel QM67 Express Chipsets<-||->8GB DDR3 PC3-10600 Bus 1333Mhz<-||->500GB 7200RPM<-||->NVIDIA Quadro 1000M- 2GB  (up to 5986MB)<-||->15.6" LED-Backlit Full HD Wide-Viewing Angle Anti-Glare (1920x1080)<-||->Intel Wifi Link 6200AGN +Bluetooth 2.1+EDR<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->ThinkPad Battery 9 cell<-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->2.6kg<-||->Vỏ Nhung Đen sang trọng Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam, Bluetooth +EDR, Fingerprint, USB 3.0, Support WWAN 3G'),
(130, 140, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Ideapad Yoga 13 Ultrabook (ENERGY STAR)<-||->Dòng Ultrabook thiết kế mới cao cấp của Lenovo, siêu nhẹ<-||->Factory Refurbished & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 1 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->3rd Generation Intel Core i5-3317U - 1.70 GHz with Turbo Boost Technology up to 2.60 GHz<-||->Intel HM77 Express Chipsets<-||->8 GB PC3-12800 DDR3 (1 DIMM)<-||->128GB Solid State Drive 1.8 inch (Serial ATA, SSD)<-||->Intel Graphic HD4000 upto 1699MB Share<-||->13.3 HD+IPS capacitive Multitouch display (16:9 widescreen Tou\r\nch screen with Truelife (1600x900)-Cảm ứng <-||->Integrated 802.11 b/g/n , Bluetooth 4.0<-||->No Optical Included<-||->10/100/1000Mbps<-||->Battery (LiPolymer 42.4Wh) up to 8 hours<-||->Genuine Windows® 8 Home Premium License Bản Quyền<-||->1.3kg<-||->Vỏ Nhuôm - Chống trầy xước<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth, USB 3.0, HDMI, Card reader...'),
(131, 165, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'demo<-||->demo<-||->demo<-||->demo<-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||->'),
(132, 167, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7240 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng\r\n<-||->Brandnew 100% Qúy khách tự tay xé niêm phong khi mua máy <-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||-> I4th Gen Intel® Core™ i5 4300U Processor (1.9 GHz, 3MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12.5" HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->﻿4-cell (45Whr) Lithium Ion battery with ExpressCharge™<-||->Win 7 Professional 64 Bit - Win 8 Professional 64 Bit<-||->1.2KG<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR'),
(133, 170, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12.5inh  HD (1366x768) Anti-Glare WLED-backlit﻿<-||->:﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->4-cell Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,Backlid Keyboard,USB 3.0'),
(134, 171, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor (2.1 GHz, 4MB Cache) ﻿Max Turbo Frequency 3.3GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12"5inh  HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card<-||->Option<-||->10/100/1000Mbps<-||->4-cell  Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.3Kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,Backlid Keyboard ,usb 3.0'),
(135, 172, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7240 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor (2.1 GHz, 4MB Cache) ﻿Max Turbo Frequency 3.3GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12"5inh  HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card<-||->Option<-||->10/100/1000Mbps<-||->4-cell  Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.3Kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,Backlid Keyboard ,usb 3.0, Bảo mật vân tay'),
(136, 175, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M 2.6Ghz Processor (2.6GHz, 3 MB Cache) ﻿Max Turbo Frequency 3.3GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->In﻿tel® Integrated HD 4600 Graphics﻿<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi <-||->8X DVD+/-RW﻿<-||->10/100/1000MbpsBattery	<-||->9-cell (97Wh) Lithium Ion battery <-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard,Bluetooth 4.0+EDR,USB 3.0'),
(137, 179, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M3800 (ENERGY STAR) <-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4702HQ processor (Quad Core 2.2GHz, 3.2GHz Turbo, 6MB 37W, w/HD Graphics 4600)<-||->Intel QM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->500GB 2.5” Solid State Hybrid Drive<-||->2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp™ FHD LED Backlit with Truelife and FHD resolution (1920 x 1080)<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi <-||->Option<-||->10/100/1000MbpsBattery	<-||->6-cell Lithium Ion battery with ExpressCharge™<-||->Windows 8 Professional English 64bit (Includes Windows 8 Pro license<-||->Nặng 2kg- mỏng 18mm<-||->Silver Anodized Aluminum\r\n\r\n	<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard,Bluetooth 4.0+EDR,USB 3.0'),
(138, 177, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600M 2.9Ghz Processor (2.9GHz, 4 MB Cache) ﻿Max Turbo Frequency 3.6GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->AMD Radeon HD 8690M Graphics 2GB + In﻿tel® Integrated HD 4600 Graphics﻿\r\n<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi <-||->8X DVD+/-RW﻿<-||->10/100/1000MbpsBattery	<-||->9-cell (97Wh) Lithium Ion battery <-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard,Bluetooth 4.0+EDR,USB 3.0'),
(139, 177, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E6440 ﻿Secure Business Laptop (ENERGY STAR)<-||->Dòng Business cao cấp nhất của Dell, siêu bền.<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600M 2.9Ghz Processor (2.9GHz, 4 MB Cache) ﻿Max Turbo Frequency 3.6GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->AMD Radeon HD 8690M Graphics 2GB + In﻿tel® Integrated HD 4600 Graphics﻿\r\n<-||->14" HD+ (1600x900) Anti-Glare WLED-backlit﻿<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi <-||->8X DVD+/-RW﻿<-||->10/100/1000MbpsBattery	<-||->9-cell (97Wh) Lithium Ion battery <-||->Windows 7 Professional License 64 Bit Bản Quyền<-||->1.9kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard,Bluetooth 4.0+EDR,USB 3.0'),
(140, 179, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M3800 (ENERGY STAR) <-||->Dòng máy trạm cao cấp nhất của DELL, siêu bền, Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4702HQ processor (Quad Core 2.2GHz, 3.2GHz Turbo, 6MB 37W, w/HD Graphics 4600)<-||->Intel QM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->500GB 2.5” Solid State Hybrid Drive<-||->2GB Nvidia Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp™ FHD LED Backlit with Truelife and FHD resolution (1920 x 1080)<-||->Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi <-||->Option<-||->10/100/1000MbpsBattery	<-||->6-cell Lithium Ion battery with ExpressCharge™<-||->Windows 8 Professional English 64bit (Includes Windows 8 Pro license<-||->Nặng 2kg- mỏng 18mm<-||->Silver Anodized Aluminum\r\n\r\n	<-||->Bảo hành 1 năm<-||->Webcam HD, FingerPrint, Backlit Keyboard,Bluetooth 4.0+EDR,USB 3.0'),
(141, 178, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', '4th Gen Intel® Core™ i7 4800MQ processor - 2.7Ghz (6MB Cache, up to 3.7GHz) 6Mb Cache\r\n<-||-><-||-><-||-><-||-><-||-><-||->8GB DDR3L 1600Mhz<-||->Dual Layer DVD+/-R Drive<-||->15.6 inch Wide FHD 1920 x 1080 60Hz WLED Anti glare , màn hình chống chói<-||->2GB<-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||->'),
(142, 180, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||-> 500GB 7200rpm SATA II HDD<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n <-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery <-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(143, 181, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế đồ họa<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th  Intel® Core™ i7-4900MQ 2.8Ghz (8 x 2.80GHz, Turbo Boost 3.8Ghz Cache 8MB - Bus 1066Mhz)<-||->Intel QM87 Express Chipsets<-||->16 GB DDR3L PC3L-12800 Bus 1600Mhz<-||->500GB 7200rpm SATA II HDD<-||->2GB Nvidia Quadro K2100M w/2GB GDDR5<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||-> 6-cell  Lithium Ion battery<-||->Windows 7 Professional English 64bit<-||->2.6Kg<-||->Vỏ Nhôm  Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(144, 182, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Precision M4800 ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.8Ghz (8 x 2.7GHz, Turbo Boost 3.7Ghz Cache 6MB - Bus 1066Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Nvidia Quadro  K1100M 2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery<-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(145, 183, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', '\r\nDell Precision M4800 ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của DELL ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.8Ghz (8 x 2.7GHz, Turbo Boost 3.7Ghz Cache 6MB - Bus 1066Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Nvidia Quadro K1100M 2GB GDDR5-Chuyên nghiệp xử lý Đồ họa<-||->15.6" UltraSharp FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n<-||->Slot Load CD/DVD Burner (Dual Layer DVD+/-R Drive)<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery<-||->Windows 7 Professional English 64bit (Includes Windows 8 Pro license)<-||->2.6kg<-||->Vỏ Nhôm Brown<-||->Bảo hành 12 tháng<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0'),
(146, 187, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12.5inh  HD (1366x768) Anti-Glare WLED-backlit﻿<-||->:﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card﻿<-||->Option<-||->10/100/1000Mbps<-||->4-cell Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.3kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,Backlid Keyboard,USB 3.0'),
(147, 188, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dell Latitude E7440 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của Dell, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor (2.1 GHz, 4MB Cache) ﻿Max Turbo Frequency 3.3GHz﻿<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel® Integrated HD 4400 Graphics﻿<-||->12"5inh  HD (1366x768) Anti-Glare WLED-backlit﻿<-||->﻿Intel® Dual Back Wireless-AC 7260 802.11AC Wi-Fi + BT 4.0LE Half Mini Card<-||->Option<-||->10/100/1000Mbps<-||->4-cell  Lithium Ion battery with ExpressCharge™﻿<-||->Windows 8 Professional License 64 Bit Bản Quyền<-||->1.3Kg<-||->Vỏ Nhôm bạc sang trọng<-||->Bảo hành 1 năm<-||->Webcam HD, Bluetooth 4.0+EDR,Backlid Keyboard ,usb 3.0'),
(148, 189, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'hp eloite<-||->bussines<-||->new 100<-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||->'),
(149, 190, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'hp eloite<-||->bussines<-||->new 100<-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||-><-||->'),
(150, 192, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook Revolve 820 G1ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook  cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i7 4600U Processor 2.1GHz (4x2.1GHz)\r\nTurbo Boost 3.3Ghz (Cache 4MB - Bus 1600Mhz)<-||->Intel QM877 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->256GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->12.5" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi <-||->Option<-||->ntel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->HP Long Life 3-cell (26 WHr) Polymer/Prismatic Battery Upto 11 Hours<-||->Genuine Windows 8 Professional<-||->1.3kg<-||->Vỏ Nhôm sang trọng<-||->Bảo hành 1 năm<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  Backlit Keyboard, 2 USB 3.0, USB 3.0 Charging, External VGA Monitor, DisplayPort,  Docking Connector, Media Card Reader');
INSERT INTO `table_product_compare_properties` (`id`, `id_product`, `id_compare`, `noidung`) VALUES
(151, 191, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook Revolve 820 G1ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu bền, siêu nhẹ<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Intel® Core™ i5 4300U Processor 1.9GHz (4x1.9GHz) Turbo Boost 2.9Ghz (Cache 3MB - Bus 1600Mhz)<-||->Intel QM877 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->180 GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->12.5" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi<-||->Option<-||->intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->HP Long Life 3-cell (26 WHr) Polymer/Prismatic Battery Upto 11 Hours<-||->Genuine Windows 8 Professional<-||->1.3kg<-||->Vỏ Nhôm sang trọng<-||->Bảo hành 1 năm<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , Backlit Keyboard, 2 USB 3.0, USB 3.0 Charging, External VGA Monitor, DisplayPort, Docking Connector, Media Card Reader'),
(152, 171, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP Elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel QM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->500GB 7200rpm SATA II HDD<-||->Intel® Integrated HD 4400 Graphics﻿<-||->14.0" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||-> Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 7 Professional<-||->1.5kg<-||->Vỏ Nhôm đen - Chống trầy xước<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,3 USB 3.0, USB 3.0 Charging, External VGA Monitor, DisplayPort,Docking Connector, Secondary Battery Connector, Media Card Reader'),
(153, 193, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14.0" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(154, 194, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||-> SSD 180G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14.0" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(155, 195, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14.0" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(156, 196, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1Ghz (8 x2.1 GHz, 4 MB Cache ﻿Max Turbo Frequency 3.3 GHz﻿)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(157, 197, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1Ghz (8 x2.1 GHz, 4 MB Cache ﻿Max Turbo Frequency 3.3 GHz﻿)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->1GB gDDR5 AMD Radeon HD 8750M Graphics<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(158, 198, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 840G1  Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor (1.9 GHz, 3 MB Cache) ﻿Max Turbo Frequency 2.9 GHz﻿<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||-> 500GB 7200rpm SATA II HDD<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14.0" LED-Backlit HD SVA Anti-Glare Matte Display (1366x768)<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.5 Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 ,  4 USB 3.0,  ,External VGA Monitor, Docking Connector,'),
(159, 199, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 850G1 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz  Turbo Boost 2.9 GHz  ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->500GB 7200rpm SATA II HDD<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->15"6 inh diagonal LED-backlit HD anti-glare SVA flat (1366x768)﻿<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n<-||->Option<-||->ntel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.8kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , 4 USB 3.0, ,External VGA Monitor, Docking Connector,'),
(160, 200, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Hp elitebook 850G1 Ultrabook (ENERGY STAR) NEW 2014<-||->Dòng Business Ultrabook cao cấp nhất của HP, siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1GHz( 8x2.1Ghz  Turbo Boost 3.3 GHz  ,Cache 4 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 180G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->15"6 inh diagonal LED-backlit Full HD anti-glare SVA flat (1920X1080)﻿<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n<-||->Option<-||->ntel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.8kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , 4 USB 3.0, ,External VGA Monitor, Docking Connector,'),
(161, 202, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15  Mobile Workstation<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4700MQ 2.4GHz (8x2.4GHz ,Turbo Boost 3.4Ghz ,Cache 6MB - Bus 1600Mhz)\r\n<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->500GB 7200rpm SATA II HDD<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa/ Intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" LED-Backlit FullHD SVA eDP Anti-Glare Matte Display (1920x1080)<-||-> Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||-> 8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng <-||-> HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G,  USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power,  Docking Connector, Secondary Battery '),
(162, 203, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation  Dòng Máy trạm mới nhất của 2014 <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.7GHz (8x2.7GHz ,Turbo Boost 3.7Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->500GB 7200rpm SATA II HDD<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa/Intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" LED-Backlit FullHD SVA eDP Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(163, 204, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation  Dòng Máy trạm mới nhất của 2014 <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.7GHz (8x2.7GHz ,Turbo Boost 3.7Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->SSD 180G chạy nhanh xé gió, boot và tắt máy 5s<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa/Intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" LED-Backlit FullHD SVA eDP Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(164, 205, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation  Dòng Máy trạm mới nhất của 2014 <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.7GHz (8x2.7GHz ,Turbo Boost 3.7Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->750G + SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa/Intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" LED-Backlit FullHD SVA eDP Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(165, 206, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation  Dòng Máy trạm mới nhất của 2014 <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100%<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.7GHz (8x2.7GHz ,Turbo Boost 3.7Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->750G + SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->2GB gDDR5 nVidia Quadro K2100M Graphics with nVIDIA Optimus Technology<-||->15.6" RGB LED-Backlit FullHD DreamColor UWVA eDP Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(166, 207, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation  Dòng Máy trạm mới nhất của 2014 <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% "Hàng xách tay "<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ 2.7GHz (8x2.7GHz ,Turbo Boost 3.7Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->500GB 7200rpm SATA II HDD<-||->Quadro K1100M w/2GB GDDR5-Chuyên nghiệp xử lý Đồ họa/Intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" LED-Backlit FullHD SVA eDP Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->2.6kg<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(167, 208, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation Dòng Máy trạm mới nhất của 2014<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% Nhập khẩu trực tiếp từ mỹ<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4700MQ 2.4GHz (8x2.4GHz ,Turbo Boost 3.4Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->128GB Solid State Drive + 500GB 7200rpm SATA II HDD<-||->1GB gDDR5 nVidia Quadro K610M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics\r\n<-||->17.3" LED-Backlit FullHD WVA Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->3.3KG<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(168, 209, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation Dòng Máy trạm mới nhất của 2014<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% Nhập khẩu trực tiếp từ mỹ<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4700MQ 2.4GHz (8x2.4GHz ,Turbo Boost 3.4Ghz ,Cache 6MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->8GB DDR3 PC3L-12800 Bus 1600Mhz<-||->128GB Solid State Drive + 500GB 7200rpm SATA II HDD<-||->1GB gDDR5 nVidia Quadro K610M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics\r\n<-||->17.3" LED-Backlit FullHD WVA Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->3.3KG<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(169, 210, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation Dòng Máy trạm mới nhất của 2014<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% Nhập khẩu trực tiếp từ mỹ<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4900MQ 2.8GHz (8x2.8GHz ,Turbo Boost 3.8Ghz ,Cache 8MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->16GB DDR3 PC3L-12800 Bus 1600Mhz<-||->750GB 7200rpm SATA II HDD<-||->4GB gDDR5 nVidia Quadro K3100M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics\r\n<-||->17.3" LED-Backlit FullHD WVA Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->3.3KG<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(170, 211, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation Dòng Máy trạm mới nhất của 2014<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% Nhập khẩu trực tiếp từ mỹ<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4900MQ 2.8GHz (8x2.8GHz ,Turbo Boost 3.8Ghz ,Cache 8MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->16GB DDR3 PC3L-12800 Bus 1600Mhz<-||->256GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->4GB gDDR5 nVidia Quadro K3100M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics\r\n<-||->17.3" LED-Backlit FullHD WVA Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->3.3KG<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(171, 212, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 15 Mobile Workstation Dòng Máy trạm mới nhất của 2014<-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->New-in-Box 100% Nhập khẩu trực tiếp từ mỹ<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4900MQ 2.8GHz (8x2.8GHz ,Turbo Boost 3.8Ghz ,Cache 8MB - Bus 1600Mhz)<-||->Intel QM87 Express Chipsets<-||->32 GB DDR3 PC3L-12800 Bus 1600Mhz<-||->256GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->4GB gDDR5 nVidia Quadro K3100M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics\r\n<-||->17.3" LED-Backlit FullHD WVA Anti-Glare Matte Display (1920x1080)<-||->Intel Dual Band Wireless-AC 7260 802.11ac (2x2) Wifi and Bluetooh 4.0 Combo<-||->8x DVD+/-RW DL with LightScribe<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->8-cell Battery<-||->Windows 8 Pro License 64 Bit<-||->3.3KG<-||->Vỏ Nhôm đen sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard ,Support 3G, USB 3.0, USB 2.0, USB 3.0 Charging, Thunderbolt, VGA, DisplayPort, Stereo Headphone/Mic Combo Jack, AC Power, Docking Connector, Secondary Battery'),
(172, 201, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'HP ZBOOK 14 Mobile Workstation Dòng máy trạm mới nhất 2014 của HP <-||->Dòng máy trạm cao cấp nhất của HP ,siêu bền,Chuyên dụng đồ họa thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1Ghz (8 x2.1 GHz, 4 MB Cache ﻿Max Turbo Frequency 3.3 GHz﻿)<-||->Intel QM87 Express Chipsets<-||->16GB 1600 MHz DDR3L SDRAM<-||->SSD 256GB SATA3 (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->1GB AMD FirePro M4100 Mobility Pro<-||->14" diagonal LED-backlit HD+ anti-glare SVA flat (1600x900)﻿<-||->Intel Dual Band Wireless-N 7260AN 802.11a/b/g/n (2x2) Wifi and Bluetooh 4.0 Combo<-||->Option<-||->Intel I218-LM Gigabit Network Connection (10/100/1000 NIC)<-||->3-cell (50 WHr) HP Long Life﻿<-||->Genuine Windows 8 Professional bản quyền<-||->1.6Kg<-||->Vỏ Nhôm sang trọng<-||->HP 1-Year or 3-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , 4 USB 3.0, ,External VGA Monitor, Docking Connector,'),
(173, 214, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 180G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(174, 215, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4200U Processor 1.6GHz( 4x1.6Ghz Turbo Boost 2.6 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(175, 216, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 180G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(176, 217, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1GHz( 4x2.1Ghz Turbo Boost 3.3GHz ,Cache 4 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(177, 218, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1GHz( 4x2.1Ghz Turbo Boost 3.3GHz ,Cache 4 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(178, 219, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X1 Carbon Ultrabook New Model 2014 siêu vip<-||->Dòng Business Ultrabook cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i7-4600U Processor 2.1GHz( 4x2.1Ghz Turbo Boost 3.3GHz ,Cache 4 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" Premium IPS WQHD (2560 x 1440) LED Backlight Display, 700:1 Contrast Ratio 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi <-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->ntegrated RapidCharge 8 Cell Lithium Ion battery<-||->Genuine Windows 7 Professional 64 bit<-||->1.1kg<-||->Vỏ Carbon (Đen sang trọng) - Chống trầy xước<-||->Lenovo  1-Year  World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0, Backlit Keyboard'),
(179, 220, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X240 Carbon Ultrabook New Model 2014 <-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->500GB 7200RPM SATA Hard Drive<-||->Intel HD Graphics 4000<-||->12.5" HD LED (1366 x 768) TFT color, anti-glare, LED backlight, 300 nits, 700:1 contrast ratio Integrated 720p Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->\r\nIntegrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.6kg<-||->Vỏ Nhung  (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0,'),
(180, 221, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X240 Carbon Ultrabook New Model 2014 <-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->500GB 7200RPM SATA Hard Drive<-||->Intel HD Graphics 4000<-||->12.5" HD LED (1366 x 768) TFT color, anti-glare, LED backlight, 300 nits, 700:1 contrast ratio Integrated 720p Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.6kg<-||->Vỏ Nhung  (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(181, 222, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X240 Carbon Ultrabook New Model 2014 <-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HD Graphics 4000<-||->12.5" HD LED (1366 x 768) TFT color, anti-glare, LED backlight, 300 nits, 700:1 contrast ratio Integrated 720p Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.6kg<-||->Vỏ Nhung  (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(182, 223, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X240 Carbon Ultrabook New Model 2014 <-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HD Graphics 4000<-||->12.5" HD IPS (1366 x 768) TFT color, anti-glare, LED backlight, 300 nits, 700:1 contrast ratio with Multi-Touch supports ten-finger gesture Integrated 720p Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.6kg<-||->Vỏ Nhung  (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(183, 224, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad X240 Carbon Ultrabook New Model 2014 <-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HD Graphics 4000<-||->12.5" HD IPS (1366 x 768) TFT color, anti-glare, LED backlight, 300 nits, 700:1 contrast ratio with Multi-Touch supports ten-finger gesture Integrated 720p Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.6kg<-||->Vỏ Nhung  (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(184, 225, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dòng Business cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Dòng Business cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M 2.6Ghz (  4x2.6Ghz Turbo Boost 3.3 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->320GB 7200rpm SATA II HDD<-||->In﻿tel® Integrated HD 4600 Graphics<-||->14.0" HD LED (1366 x 768) TFT color, anti-glare, LED backlight<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->8x DVD+/-RW DL <-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||-> 6-cell Battery<-||->Genuine Windows 7 Professional 32 bit  bản quyền<-||->1.9kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(185, 226, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Dòng Business cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Dòng Business cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M 2.6Ghz (  4x2.6Ghz Turbo Boost 3.3 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->In﻿tel® Integrated HD 4600 Graphics<-||->14.0" HD LED (1366 x 768) TFT color, anti-glare, LED backlight<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->8x DVD+/-RW DL <-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||-> 6-cell Battery<-||->Genuine Windows 7 Professional 32 bit  bản quyền<-||->1.9kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(186, 227, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HM87 Express Chipsets<-||->14.0" HD LED (1366 x 768) TFT color, anti-glare, LED backlight<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit bản quyền<-||->1.6KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(187, 228, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HM87 Express Chipsets<-||->14.0" HD LED (1366 x 768) TFT color, anti-glare, LED backlight<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit bản quyền<-||->1.6KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(188, 229, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->12GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HM87 Express Chipsets<-||->14.0" HD LED (1366 x 768) TFT color, anti-glare, LED backlight<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit bản quyền<-||->1.6KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(189, 230, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 128G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HM87 Express Chipsets<-||->14.0" HD+ Touch TN (1600 x 900) 720p HD Camera for Touch (Cảm Ứng)<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit bản quyền<-||->1.6KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(190, 231, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440 Ultrabook New Model 2014<-||->Dòng Business Ultrabook cao cấp nhất của Lenovo Thinkpad , siêu nhẹ, siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel HM87 Express Chipsets<-||->14.0" HD+ Touch TN (1600 x 900) 720p HD Camera for Touch (Cảm Ứng)<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit bản quyền<-||->1.6KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,'),
(191, 232, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T440S  New Model 2014 siêu vip<-||->Dòng Business cao cấp nhất của thinkpad , siêu bền, siêu VIP, Siêu mỏng<-||->Brandnew 100% & Sealed-in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300U Processor 1.9GHz( 4x1.9Ghz Turbo Boost 2.9 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->4GB 1600 MHz DDR3L SDRAM<-||->SSD 256G chạy nhanh xé gió, boot và tắt máy 5s<-||->Intel Graphics Media Accelerator HD 4400 Graphics<-||->14" HD+ (1600 x 900) LED Backlight Display, 720p HD Camera<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->Option<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->Integrated 3-cell 23.5 Whr + Power Bridge 3-cell 23.5 Whr<-||->Genuine Windows 7 Professional 64 bit<-||->1.5KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, Bluetooh 4.0 , USB 3.0,');
INSERT INTO `table_product_compare_properties` (`id`, `id_product`, `id_compare`, `noidung`) VALUES
(192, 233, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad W540 MobileWorkstation ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của Lenovo Thinkpad ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM87 Express Chipsets<-||->8 GB DDR3 PC3L-12800 Bus 1600Mhz<-||->256GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->2GB gDDR5 nVidia Quadro K1100M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6"  FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery<-||->Genuine Windows 8.1 Professional 64 bit<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard , FingerPrint Reader,Support 3G, USB 3.0'),
(193, 234, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad W540 MobileWorkstation ( ENERGY STAR) New2014<-||->Dòng máy trạm cao cấp nhất của Lenovo Thinkpad ,siêu bền,Chuyên dụng thiết kế<-||->Brandnew 100% & Sealed in-Box, Qúy khách tự tay xé niêm phong<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Intel® Core™ i7-4800MQ (Quad Core 2.70GHz, 3.7GHz Turbo, 6MB 47W, w/HD Graphics 4600)<-||->Intel QM87 Express Chipsets<-||->16GB DDR3 PC3L-12800 Bus 1600Mhz<-||->500GB 7200rpm SATA II HDD<-||->2GB gDDR5 nVidia Quadro K2100M Graphics with nVIDIA Optimus Technology/intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6"  FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->802.11b/g/n<-||->8x DVD+/-RW DL<-||->10/100/1000Mbps<-||->9-cell (97Wh) Lithium Ion battery<-||->Genuine Windows 8.1 Professional 64 bit<-||->2.6kg<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->Webcam HD , Bluetooth 4.0+EDR, Backlit Keyboard , FingerPrint Reader,Support 3G, USB 3.0'),
(194, 235, '2<-||->3<-||->4<-||->5<-||->7<-||->11<-||->8<-||->9<-||->10<-||->12<-||->13<-||->14<-||->15<-||->16<-||->17<-||->18<-||->19<-||->20<-||->32', 'Lenovo Thinkpad T540P New Model 2014<-||->Dòng Business cao cấp nhất của Lenovo Thinkpad<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->Một đổi một trong 2 tháng đầu sử dụng nếu lỗi do nhà sản xuất<-||->4th Gen Intel® Core™ i5-4300M 2.6Ghz ( 4x2.6Ghz Turbo Boost 3.3 GHz ,Cache 3 MB - Bus 1066Mhz)<-||->Intel HM87 Express Chipsets<-||->8 GB DDR3 PC3L-12800 Bus 1600Mhz<-||->256GB Solid State Drive (Ổ CỨNG ĐẶC TRUY XUẤT DỮ LIỆU CỰC NHANH)<-||->intel Graphics Media Accelerator HD 4600 Graphics<-||->15.6" FHD(1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee<-||->Intel Dual Band Wireless-AC 7260 2 x 2 Wifi<-||->8x DVD+/-RW DL<-||->Intel I217-LM Gigabit Network Connection (10/100/1000 NIC)<-||->6-cell Battery<-||->Genuine Windows 7 Professional 32 bit bản quyền<-||->2.2KG<-||->Vỏ Nhung (Đen sang trọng) - Chống trầy xước<-||->Lenovo 1-Year World-Wide Warranty<-||->720p HD Webcam, FingerPrint Reader, Bluetooh 4.0 , USB 3.0,');

-- --------------------------------------------------------

--
-- Table structure for table `table_product_item`
--

CREATE TABLE `table_product_item` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_item`
--

INSERT INTO `table_product_item` (`id`, `id_list`, `id_cat`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 1, 25, 'hp-envy', 'HP Envy', '', 'HP Envy', 'HP Envy', '', '', '', '', '', '', '', '', '', 2, 1, 1411096318, 1411778327),
(2, 1, 1, 'hp-elitebook-820-g1-latest-model', 'HP EliteBook 820 G1 [Latest Model]', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1411098475, 1411700563),
(3, 1, 8, 'sony-svz13-series', 'Sony SVZ13 Series', '', 'Laptop Sony SVZ13 Series', 'Laptop Sony SVZ13 Series', '', '', '', '', '', '', '', '', '', 2, 1, 1411189409, 0),
(4, 1, 8, 'sony-vaio-s-series', 'Sony Vaio S Series', '', 'Laptop Sony Vaio S Series', 'Laptop Sony Vaio S Series', '', '', '', '', '', '', '', '', '', 3, 1, 1411228354, 0),
(5, 1, 8, 'sony-svf-series', 'Sony SVF Series', '', 'Laptop Sony SVF Series', 'Laptop Sony SVF Series', '', '', '', '', '', '', '', '', '', 4, 1, 1411228458, 0),
(6, 1, 1, 'hp-elitebook-840-g1-latest-model', 'HP EliteBook 840 G1 [Latest Model]', '', 'HP EliteBook 840 G1', 'HP EliteBook 840 G1', '', '', '', '', '', '', '', '', '', 4, 1, 1411228506, 1412097914),
(7, 1, 1, 'hp-zbook-15-workstation', 'HP ZBook 15 [Workstation]', '', 'HP ZBook ', 'HP ZBook 15 [Workstation]', '', '', '', '', '', '', '', '', '', 10, 1, 1411228543, 1412098048),
(8, 1, 1, 'hp-zbook-17-workstation', 'HP ZBook 17 [Workstation]', '', 'HP ZBook 17 ', 'HP ZBook 17 [Workstation]', '', '', '', '', '', '', '', '', '', 12, 1, 1411228641, 1412097778),
(9, 1, 1, 'hp-elitebook-revolve-810-g1-tablet-pc', 'HP EliteBook Revolve 810 G1 [Tablet PC]', '', 'HP EliteBook Revolve', 'HP EliteBook Revolve 810 G1 ', '', '', '', '', '', '', '', '', '', 14, 1, 1411228682, 1412097760),
(10, 1, 1, 'hp-elitebook-folio-9470m', 'HP EliteBook Folio 9470m ', '', 'HP EliteBook Folio ', 'HP EliteBook Folio 9470m ', '', '', '', '', '', '', '', '', '', 16, 1, 1411228736, 1412097744),
(11, 1, 1, 'hp-elitebook-2170p-ultralight', 'HP EliteBook 2170p [Ultra-light]', '', 'HP EliteBook', 'HP EliteBook 2170p ', '', '', '', '', '', '', '', '', '', 18, 1, 1411228787, 1412097726),
(12, 1, 2, 'asus-notebook', 'Asus Notebook', '', 'Laptop Asus Notebook', 'Laptop Asus Notebook', '', '', '', '', '', '', '', '', '', 1, 1, 1411228859, 0),
(13, 1, 2, 'asus-ultrabooks', 'Asus Ultrabooks', '', 'Laptop Asus Ultrabooks', 'Laptop Asus Ultrabooks', '', '', '', '', '', '', '', '', '', 2, 1, 1411228899, 0),
(14, 1, 3, 'toshiba-ultrabooks', 'Toshiba Ultrabooks', '', 'Laptop Toshiba Ultrabooks', 'Laptop Toshiba Ultrabooks', '', '', '', '', '', '', '', '', '', 1, 1, 1411228945, 0),
(15, 1, 3, 'toshiba-portege', 'Toshiba Portege', '', 'Latop Toshiba Portege', 'Latop Toshiba Portege', '', '', '', '', '', '', '', '', '', 2, 1, 1411228969, 0),
(16, 1, 3, 'toshiba-satellite', 'Toshiba Satellite', '', 'Latop Toshiba Satellite', 'Latop Toshiba Satellite', '', '', '', '', '', '', '', '', '', 3, 1, 1411228997, 0),
(17, 1, 4, 'dell-latitude-e7240-ultrabook', 'Dell Latitude E7240 Ultrabook  ', '', 'Dell Latitude  ', 'Dell Latitude E7240', '', '', '', '', '', '', '', '', '', 1, 1, 1411229152, 1411703001),
(18, 1, 4, 'dell-latitude-e7440-ultrabook', 'Dell Latitude E7440 Ultrabook ', '', 'Dell Latitude ', 'Dell Latitude E7440 Ultrabook ', '', '', '', '', '', '', '', '', '', 8, 1, 1411229183, 1412140563),
(19, 1, 4, 'dell-latitude-e6440', 'Dell Latitude E6440 ', '', 'Dell Latitude E6440 ', 'Dell Latitude E6440 ', '', '', '', '', '', '', '', '', '', 10, 1, 1411229343, 1412140546),
(20, 1, 4, 'dell-latitude-e6540', 'Dell Latitude E6540 ', '', 'Dell Latitude E6540 ', 'Dell Latitude E6540 ', '', '', '', '', '', '', '', '', '', 12, 1, 1411229397, 1412140531),
(21, 1, 4, 'dell-precision-m3800', 'Dell Precision M3800', '', 'Dell Precision M3800', 'Dell Precision M3800', '', '', '', '', '', '', '', '', '', 14, 1, 1411229471, 1412140517),
(22, 1, 4, 'dell-precision-m4800', 'Dell Precision M4800 ', '', 'Dell Precision M4800 ', 'Dell Precision M4800 ', '', '', '', '', '', '', '', '', '', 16, 1, 1411229521, 1412140502),
(23, 1, 5, 'macbook-pro', 'Macbook Pro', '', 'Macbook Pro', 'Macbook Pro', '', '', '', '', '', '', '', '', '', 1, 1, 1411229659, 0),
(24, 1, 5, 'macbook-ultrabooks', 'Macbook Ultrabooks', '', 'Macbook Ultrabooks', 'Macbook Ultrabooks', '', '', '', '', '', '', '', '', '', 2, 1, 1411229747, 0),
(25, 1, 5, 'macbook-air', 'Macbook Air', '', 'Macbook Air', 'Macbook Air', '', '', '', '', '', '', '', '', '', 3, 1, 1411229786, 0),
(26, 1, 6, 'lenovo-thinkpad-x1-carbon', 'Lenovo  Thinkpad  x1 Carbon  ', '', 'Lenovo  Thinkpad  x1 Carbon  ', 'Lenovo  Thinkpad  x1 Carbon  ', '', '', '', '', '', '', '', '', '', 1, 1, 1411230334, 1411704264),
(27, 1, 6, 'lenovo-thinkpad-x240', 'Lenovo  Thinkpad x240 ', '', 'Lenovo  Thinkpad ', 'Lenovo  Thinkpad x240 ', '', '', '', '', '', '', '', '', '', 6, 1, 1411230370, 1412140869),
(28, 1, 6, 'lenovo-thinkpad-x240-tablet', 'Lenovo  Thinkpad x240  Tablet   ', '', 'Lenovo  Thinkpad x230  Tablet   ', 'Lenovo  Thinkpad x230  Tablet   ', '', '', '', '', '', '', '', '', '', 8, 1, 1411230404, 1412140854),
(29, 1, 6, 'lenovo-thinkpad-t440', 'Lenovo  Thinkpad T440', '', 'Lenovo  Thinkpad T440', 'Lenovo  Thinkpad T440', '', '', '', '', '', '', '', '', '', 10, 1, 1411230436, 1412140840),
(30, 1, 1, 'hp-elitebook-2570p-ultramobile', 'HP EliteBook 2570p [Ultra-mobile]', '', 'HP EliteBook 570p [U2ltra-mobile]', 'HP EliteBook 2570p', '', '', '', '', '', '', '', '', '', 26, 1, 1411701522, 1412097655),
(31, 1, 1, 'hp-elitebook-8470p', 'HP EliteBook 8470p', '', 'HP EliteBook ', 'HP EliteBook 8470p', '', '', '', '', '', '', '', '', '', 22, 1, 1411701636, 1412097694),
(33, 1, 1, 'hp-elitebook-8470w-workstation', 'HP EliteBook 8470w [Workstation]', '', 'HP EliteBook ', 'HP EliteBook 8470w', '', '', '', '', '', '', '', '', '', 24, 1, 1411702351, 1412097676),
(34, 1, 1, 'hp-elitebook-8570p', 'HP EliteBook 8570p', '', 'HP EliteBook ', 'HP EliteBook 8570p', '', '', '', '', '', '', '', '', '', 20, 1, 1411702429, 1412097711),
(35, 1, 1, 'hp-elitebook-8570w-workstation', 'HP EliteBook 8570w [Workstation]', '', 'HP EliteBook ', 'HP EliteBook 8570w', '', '', '', '', '', '', '', '', '', 28, 1, 1411702494, 1412097636),
(36, 1, 1, 'hp-elitebook-8770w-workstation', 'HP EliteBook 8770w [Workstation]', '', 'HP EliteBook ', 'HP EliteBook 8770w ', '', '', '', '', '', '', '', '', '', 30, 1, 1411702843, 1412097618),
(37, 1, 4, 'dell-precision-m6800', 'Dell Precision M6800   ', '', 'Dell Precision M6800   ', 'Dell Precision M6800   ', '', '', '', '', '', '', '', '', '', 18, 1, 1411703429, 1412140484),
(38, 1, 4, 'dell-latitude-e6330', 'Dell Latitude E6330 ', '', 'Dell Latitude ', 'Dell Latitude E6330 Ultrabook  ', '', '', '', '', '', '', '', '', '', 20, 1, 1411703574, 1412140467),
(39, 1, 4, 'dell-latitude-e6430u-ultrabook', 'Dell Latitude E6430U Ultrabook', '', 'Dell Latitude', 'Dell Latitude E6430U', '', '', '', '', '', '', '', '', '', 22, 1, 1411703653, 1412140437),
(40, 1, 4, 'dell-latitude-e6430', 'Dell Latitude E6430 ', '', 'Dell Latitude ', 'Dell Latitude E6430 ', '', '', '', '', '', '', '', '', '', 24, 1, 1411703690, 1412140422),
(41, 1, 4, 'dell-latitude-e6530', 'Dell Latitude E6530 ', '', 'Dell Latitude E6530 ', 'Dell Latitude E6530 ', '', '', '', '', '', '', '', '', '', 26, 1, 1411704027, 1412140403),
(42, 1, 4, 'dell-precision-m4700', 'Dell Precision M4700', '', 'Dell Precision M4700', 'Dell Precision M4700', '', '', '', '', '', '', '', '', '', 28, 1, 1411704067, 1412140387),
(43, 1, 4, 'dell-precision-m6700', 'Dell Precision M6700 ', '', 'Dell Precision M6700 ', 'Dell Precision M6700 ', '', '', '', '', '', '', '', '', '', 30, 1, 1411704099, 1412140369),
(44, 1, 6, 'lenovo-thinkpad-t440p', 'Lenovo  Thinkpad T440p', '', 'Lenovo  Thinkpad T440p', 'Lenovo  Thinkpad T440p', '', '', '', '', '', '', '', '', '', 12, 1, 1411704412, 1412140825),
(45, 1, 6, 'lenovo-thinkpad-t440s', 'Lenovo  Thinkpad T440s ', '', 'Lenovo  Thinkpad T440s ', 'Lenovo  Thinkpad T440s ', '', '', '', '', '', '', '', '', '', 14, 1, 1411704445, 1412140812),
(46, 1, 6, 'lenovo-thinkpad-t540p', 'Lenovo  Thinkpad T540p', '', 'Lenovo  Thinkpad T540p', 'Lenovo  Thinkpad T540p', '', '', '', '', '', '', '', '', '', 16, 1, 1411704610, 1412140798),
(47, 1, 6, 'lenovo-thinkpad-w540', 'Lenovo  Thinkpad  w540 ', '', 'Lenovo  Thinkpad  w540 ', 'Lenovo  Thinkpad  w540 ', '', '', '', '', '', '', '', '', '', 18, 1, 1411704641, 1412140783),
(48, 1, 6, 'lenovo-thinkpad-x1-carbon', 'Lenovo  Thinkpad  x1 Carbon', '', 'Lenovo  Thinkpad  x1 Carbon', 'Lenovo  Thinkpad  x1 Carbon', '', '', '', '', '', '', '', '', '', 20, 1, 1411704685, 1412140768),
(49, 1, 6, 'lenovo-thinkpad-x230', 'Lenovo  Thinkpad x230  ', '', 'Lenovo  Thinkpad x230  ', 'Lenovo  Thinkpad x230  ', '', '', '', '', '', '', '', '', '', 22, 1, 1411704771, 1412140754),
(50, 1, 6, 'lenovo-thinkpad-x230-tablet', 'Lenovo  Thinkpad x230  Tablet', '', 'Lenovo  Thinkpad x230  Tablet', 'Lenovo  Thinkpad x230  Tablet', '', '', '', '', '', '', '', '', '', 24, 1, 1411704797, 1412140736),
(51, 1, 6, 'lenovo-thinkpad-t430', 'Lenovo  Thinkpad T430', '', 'Lenovo  Thinkpad ', 'Lenovo  Thinkpad T430', '', '', '', '', '', '', '', '', '', 26, 1, 1411747384, 1412140721),
(52, 1, 6, 'lenovo-thinkpad-t430s', 'Lenovo  Thinkpad T430s ', '', 'Lenovo  Thinkpad', 'Lenovo  Thinkpad T430s ', '', '', '', '', '', '', '', '', '', 28, 1, 1411747442, 1412140700),
(53, 1, 6, 'lenovo-thinkpad-w530', 'Lenovo  Thinkpad w530', '', 'Lenovo  Thinkpad ', 'Lenovo  Thinkpad T530', '', '', '', '', '', '', '', '', '', 32, 1, 1411747586, 1412140662),
(54, 1, 6, 'lenovo-thinkpad-t530', 'Lenovo  Thinkpad T530', '', 'Lenovo  Thinkpad ', 'Lenovo  Thinkpad T530', '', '', '', '', '', '', '', '', '', 30, 1, 1411747787, 1412140682),
(55, 1, 25, 'dell-xps', 'DELL XPS', '', 'DELL XPS', 'DELL XPS', '', '', '', '', '', '', '', '', '', 1, 1, 1411778127, 0),
(56, 1, 25, 'asus-n-series', 'Asus N series', '', 'Asus N series', 'Asus N series', '', '', '', '', '', '', '', '', '', 3, 1, 1411778286, 1411778351),
(57, 1, 25, 'samsung-series', 'Samsung Series', '', 'Samsung Series', 'Samsung Series', '', '', '', '', '', '', '', '', '', 4, 1, 1411778380, 0),
(58, 1, 25, 'sony-vaio-flip', 'SONY Vaio Flip', '', 'SONY Vaio Flip', 'SONY Vaio Flip', '', '', '', '', '', '', '', '', '', 5, 1, 1411778401, 0),
(59, 1, 26, 'acer-series', 'ACER Series', '', 'ACER Series', 'ACER Series', '', '', '', '', '', '', '', '', '', 1, 1, 1411778931, 0),
(60, 1, 26, 'asus-series', 'ASUS Series', '', 'ASUS Series', 'ASUS Series', '', '', '', '', '', '', '', '', '', 2, 1, 1411778967, 0),
(61, 1, 25, 'dell-series', 'DELL Series', '', 'DELL Series', 'DELL Series', '', '', '', '', '', '', '', '', '', 3, 1, 1411779047, 0),
(62, 1, 26, 'hp-series', 'HP Series', '', 'HP Series', 'HP Series', '', '', '', '', '', '', '', '', '', 3, 1, 1411779072, 1411779159),
(63, 1, 26, 'dell-series', 'DELL Series', '', 'DELL Series', 'DELL Series', '', '', '', '', '', '', '', '', '', 4, 1, 1411779128, 0),
(64, 1, 26, 'toshiba-series', 'TOSHIBA Series', '', 'TOSHIBA Series', 'TOSHIBA Series', '', '', '', '', '', '', '', '', '', 5, 1, 1411779196, 0),
(65, 1, 26, 'lenovo-series', 'LENOVO Series', '', 'LENOVO Series', 'LENOVO Series', '', '', '', '', '', '', '', '', '', 6, 1, 1411779226, 0),
(66, 1, 26, 'samsung-series', 'SAMSUNG Series', '', 'SAMSUNG Series', 'SAMSUNG Series', '', '', '', '', '', '', '', '', '', 7, 1, 1411779251, 0),
(67, 1, 26, 'sony-vaio-fit-svf', 'SONY Vaio Fit SVF', '', 'SONY Vaio Fit SVF', '', '', '', '', '', '', '', '', '', '', 8, 1, 1411779361, 0),
(68, 1, 1, 'hp-elitebook-850-g1', 'HP EliteBook 850 G1', '', '', '', '', '', '', '', '', '', '', '', '', 6, 1, 1412081941, 1412097941),
(69, 1, 1, 'hp-zbook-14-workstation', 'HP ZBook 14 [Workstation]', '', '', '', '', '', '', '', '', '', '', '', '', 8, 1, 1412085094, 1412098071);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_list`
--

CREATE TABLE `table_product_list` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_list`
--

INSERT INTO `table_product_list` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `alt`, `numberic`, `shows`, `shows_index`, `date_create`, `date_update`) VALUES
(1, 'rau-an-la', 'Rau ăn lá', 'Rau Sạch', 'Rau Sạch', 'Rau Sạch', 'Rau Sạch', '', '', '', '', '', 'tai-xuong_1489738749.jpg', 'tai-xuong_1489738749268x268_268x268.jpg', 'tai-xuong_1489738749500x500_500x500.jpg', 'Rau Sạch', 1, 1, 0, 1408415118, 1495762899),
(3, 'trai-cay', 'Trái Cây', 'Trái cây nhập khẩu', 'Hoa Quả', 'Hoa Quả', 'Hoa Quả', '', '', '', '', '', 'hoaqua_1449669967.jpg', 'hoaqua_1449669967268x268_268x268.jpg', 'hoaqua_1449669967500x500_500x500.jpg', 'Hoa Quả', 3, 1, 0, 1408416411, 1489738770),
(11, 'gio-qua', 'Giỏ Quà', 'Chuẩn bị tết đến rồi, cửa hàng TGNS có nhận làm các giỏ quà cho khách hàng với giá trị từ 300.000đ trở lên. Quý khách còn chần chừ gì nữa mà không nhanh tay tặng cho những người thân yêu giỏ quà an toàn, chất lượng dịp xuân về này nữa ạ...', 'Giỏ Quà', 'Giỏ Quà', '', '', '', '', '', '', 'gioqua_1449790378.png', 'gioqua_1449790378268x268_268x268.png', 'gioqua_1449790379500x500_500x500.png', 'Giỏ Quà', 6, 1, 0, 1449790379, 1516247937),
(15, 'cu-qua-an-toan', 'Củ Quả An Toàn', '', 'Củ Quả', 'Củ Quả', 'Củ Quả', '', '', '', '', '', '11696_1489738628.jpg', '11696_1489738628268x268_268x268.jpg', '11696_1489738628500x500_500x500.jpg', '', 2, 1, 0, 1489738628, 1489739181),
(13, 'nuoc-ep-cac-loai', 'Nước ép các loại', 'Nước ép các loại', 'Nước ép các loại', 'Nước ép các loại', 'Nước ép các loại', '', '', '', '', '', 'nuoceptraicay3_1453908232.jpg', 'nuoceptraicay3_1453908232268x268_268x268.jpg', 'nuoceptraicay3_1453908232500x500_500x500.jpg', 'Nước ép các loại', 4, 1, 0, 1453908232, 1488955957),
(14, 'thuc-pham-kho', 'Thực phẩm khô', 'Thực phẩm khô', 'Thực phẩm khô', 'Thực phẩm khô', 'Thực phẩm khô', '', '', '', '', '', 'thucphamkho_1453908340.jpg', 'thucphamkho_1453908340268x268_268x268.jpg', 'thucphamkho_1453908341500x500_500x500.jpg', 'Thực phẩm khô', 5, 1, 0, 1453908341, 1488955967),
(16, 'rau-gia-vi', 'Rau gia vị', '', '', '', '', '', '', '', '', '', 'ngo-tay_1494577859.jpg', 'ngo-tay_1494577859268x268_268x268.jpg', 'ngo-tay_1494577859500x500_500x500.jpg', '', 1, 1, 0, 1494577860, 1494577860);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_photo`
--

CREATE TABLE `table_product_photo` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_photo`
--

INSERT INTO `table_product_photo` (`id`, `id_product`, `photo`, `thumb`, `thumb1`, `thumb2`, `thumb3`, `alt`, `numberic`, `shows`) VALUES
(18, 32, 'susu_1453903594.jpg', 'susu_145390359473x73_1_73x73.jpg', 'susu_1453903594268x268_1_268x268.jpg', 'susu_1453903595500x500_1_500x500.jpg', 'susu_1453903595800x800_800x800.jpg', '', 1, 1),
(19, 30, 'rauthomcacloai_1453903892.jpg', 'rauthomcacloai_145390389273x73_1_73x73.jpg', 'rauthomcacloai_1453903892268x268_1_268x268.jpg', 'rauthomcacloai_1453903892500x500_1_500x500.jpg', 'rauthomcacloai_1453903892800x800_800x800.jpg', '', 1, 1),
(20, 29, 'raumuong_1453903993.png', 'raumuong_145390399373x73_1_73x73.png', 'raumuong_1453903993268x268_1_268x268.png', 'raumuong_1453903994500x500_1_500x500.png', 'raumuong_1453903994800x800_800x800.png', '', 1, 1),
(21, 27, 'raudendo_1453904176.jpg', 'raudendo_145390417673x73_1_73x73.jpg', 'raudendo_1453904176268x268_1_268x268.jpg', 'raudendo_1453904176500x500_1_500x500.jpg', 'raudendo_1453904176800x800_800x800.jpg', '', 1, 1),
(22, 26, 'hanhparo_1453904407.jpg', 'hanhparo_145390440773x73_1_73x73.jpg', 'hanhparo_1453904407268x268_1_268x268.jpg', 'hanhparo_1453904407500x500_1_500x500.jpg', 'hanhparo_1453904407800x800_800x800.jpg', '', 1, 1),
(23, 25, 'otchuongdo_1453904665.jpg', 'otchuongdo_145390466573x73_1_73x73.jpg', 'otchuongdo_1453904665268x268_1_268x268.jpg', 'otchuongdo_1453904665500x500_1_500x500.jpg', 'otchuongdo_1453904665800x800_800x800.jpg', '', 1, 1),
(24, 24, 'otchuongxanh_1453904767.jpg', 'otchuongxanh_145390476773x73_1_73x73.jpg', 'otchuongxanh_1453904767268x268_1_268x268.jpg', 'otchuongxanh_1453904767500x500_1_500x500.jpg', 'otchuongxanh_1453904767800x800_800x800.jpg', '', 1, 1),
(25, 23, 'otchuongvang_1453904851.jpg', 'otchuongvang_145390485173x73_1_73x73.jpg', 'otchuongvang_1453904851268x268_1_268x268.jpg', 'otchuongvang_1453904851500x500_1_500x500.jpg', 'otchuongvang_1453904852800x800_800x800.jpg', '', 1, 1),
(26, 21, 'khoqua_1453904938.jpg', 'khoqua_145390493873x73_1_73x73.jpg', 'khoqua_1453904938268x268_1_268x268.jpg', 'khoqua_1453904938500x500_1_500x500.jpg', 'khoqua_1453904938800x800_800x800.jpg', '', 1, 1),
(27, 18, 'dualeobaby_1453905155.jpg', 'dualeobaby_145390515573x73_1_73x73.jpg', 'dualeobaby_1453905158268x268_1_268x268.jpg', 'dualeobaby_1453905160500x500_1_500x500.jpg', 'dualeobaby_1453905161800x800_800x800.jpg', '', 1, 1),
(28, 17, 'dau-hl_1490789274.jpg', 'dau-hl_149078927473x73_73x73.jpg', 'dau-hl_1490789275268x268_268x268.jpg', 'dau-hl_1490789275500x500_500x500.jpg', 'dau-hl_1490789275800x800_800x800.jpg', '', 1, 1),
(29, 16, 'daucovethuong_1453905332.jpg', 'daucovethuong_145390533273x73_1_73x73.jpg', 'daucovethuong_1453905332268x268_1_268x268.jpg', 'daucovethuong_1453905333500x500_1_500x500.jpg', 'daucovethuong_1453905333800x800_800x800.jpg', '', 1, 1),
(30, 15, 'daubap_1453905398.jpg', 'daubap_145390539873x73_1_73x73.jpg', 'daubap_1453905398268x268_1_268x268.jpg', 'daubap_1453905399500x500_1_500x500.jpg', 'daubap_1453905399800x800_800x800.jpg', '', 1, 1),
(31, 14, 'cucaido_1453905476.jpg', 'cucaido_145390547673x73_1_73x73.jpg', 'cucaido_1453905476268x268_1_268x268.jpg', 'cucaido_1453905476500x500_1_500x500.jpg', 'cucaido_1453905476800x800_800x800.jpg', '', 1, 1),
(32, 13, 'caithia_1453905540.jpg', 'caithia_145390554173x73_1_73x73.jpg', 'caithia_1453905541268x268_1_268x268.jpg', 'caithia_1453905541500x500_1_500x500.jpg', 'caithia_1453905541800x800_800x800.jpg', '', 1, 1),
(33, 12, 'caiboxoi_1453905605.jpg', 'caiboxoi_145390560573x73_1_73x73.jpg', 'caiboxoi_1453905605268x268_1_268x268.jpg', 'caiboxoi_1453905605500x500_1_500x500.jpg', 'caiboxoi_1453905605800x800_800x800.jpg', '', 1, 1),
(34, 10, 'catim_1453905702.jpg', 'catim_145390570273x73_1_73x73.jpg', 'catim_1453905702268x268_1_268x268.jpg', 'catim_1453905702500x500_1_500x500.jpg', 'catim_1453905702800x800_800x800.jpg', '', 1, 1),
(35, 9, 'cachuacherry_1453905784.jpg', 'cachuacherry_145390578473x73_1_73x73.jpg', 'cachuacherry_1453905784268x268_1_268x268.jpg', 'cachuacherry_1453905784500x500_1_500x500.jpg', 'cachuacherry_1453905785800x800_800x800.jpg', '', 1, 1),
(36, 8, 'cachuabeef2_1453905857.jpg', 'cachuabeef2_145390585773x73_1_73x73.jpg', 'cachuabeef2_1453905857268x268_1_268x268.jpg', 'cachuabeef2_1453905857500x500_1_500x500.jpg', 'cachuabeef2_1453905858800x800_800x800.jpg', '', 1, 1),
(37, 8, 'cachuabeef3_1453905943.jpg', 'cachuabeef3_145390594373x73_1_73x73.jpg', 'cachuabeef3_1453905943268x268_1_268x268.jpg', 'cachuabeef3_1453905943500x500_1_500x500.jpg', 'cachuabeef3_1453905943800x800_800x800.jpg', '', 2, 1),
(38, 8, 'cachuabeef4_1453906011.jpg', 'cachuabeef4_145390601173x73_1_73x73.jpg', 'cachuabeef4_1453906011268x268_1_268x268.jpg', 'cachuabeef4_1453906011500x500_1_500x500.jpg', 'cachuabeef4_1453906011800x800_800x800.jpg', '', 3, 1),
(39, 7, 'cachuaanna_1453906080.jpg', 'cachuaanna_145390608073x73_1_73x73.jpg', 'cachuaanna_1453906080268x268_1_268x268.jpg', 'cachuaanna_1453906080500x500_1_500x500.jpg', 'cachuaanna_1453906080800x800_800x800.jpg', '', 1, 1),
(40, 5, 'bongcaixanh_1453906165.jpg', 'bongcaixanh_145390616573x73_1_73x73.jpg', 'bongcaixanh_1453906165268x268_1_268x268.jpg', 'bongcaixanh_1453906165500x500_1_500x500.jpg', 'bongcaixanh_1453906165800x800_800x800.jpg', '', 1, 1),
(41, 4, 'bauxanh_1453906495.jpg', 'bauxanh_145390649573x73_1_73x73.jpg', 'bauxanh_1453906495268x268_1_268x268.jpg', 'bauxanh_1453906495500x500_1_500x500.jpg', 'bauxanh_1453906495800x800_800x800.jpg', '', 1, 1),
(42, 3, 'bongcaitrang_1453906568.jpg', 'bongcaitrang_145390656873x73_1_73x73.jpg', 'bongcaitrang_1453906568268x268_1_268x268.jpg', 'bongcaitrang_1453906568500x500_1_500x500.jpg', 'bongcaitrang_1453906568800x800_800x800.jpg', '', 1, 1),
(43, 43, 'caingong_1453907395.jpg', 'caingong_145390739573x73_1_73x73.jpg', 'caingong_1453907395268x268_1_268x268.jpg', 'caingong_1453907395500x500_1_500x500.jpg', 'caingong_1453907396800x800_800x800.jpg', '', 1, 1),
(44, 44, 'caingot1_1453907542.jpg', 'caingot1_145390754273x73_1_73x73.jpg', 'caingot1_1453907542268x268_1_268x268.jpg', 'caingot1_1453907543500x500_1_500x500.jpg', 'caingot1_1453907543800x800_800x800.jpg', '', 1, 1),
(45, 17, 'img2395_1454320246.JPG', 'img2395_145432024673x73_2_73x73.jpg', 'img2395_1454320246268x268_2_268x268.jpg', 'img2395_1454320246500x500_2_500x500.jpg', 'img2395_1454320247800x800_800x800.jpg', '', 1, 1),
(46, 9, 'img3625_1454320421.JPG', 'img3625_145432042173x73_2_73x73.jpg', 'img3625_1454320422268x268_2_268x268.jpg', 'img3625_1454320422500x500_2_500x500.jpg', 'img3625_1454320422800x800_800x800.jpg', '', 1, 1),
(47, 25, 'fullsizerender_1454322302.jpg', 'fullsizerender_145432230273x73_2_73x73.jpg', 'fullsizerender_1454322302268x268_2_268x268.jpg', 'fullsizerender_1454322302500x500_2_500x500.jpg', 'fullsizerender_1454322302800x800_800x800.jpg', '', 1, 1),
(48, 24, 'fullsizerender_1454322341.jpg', 'fullsizerender_145432234173x73_2_73x73.jpg', 'fullsizerender_1454322341268x268_2_268x268.jpg', 'fullsizerender_1454322341500x500_2_500x500.jpg', 'fullsizerender_1454322342800x800_800x800.jpg', '', 1, 1),
(49, 23, 'fullsizerender_1454322372.jpg', 'fullsizerender_145432237273x73_2_73x73.jpg', 'fullsizerender_1454322372268x268_2_268x268.jpg', 'fullsizerender_1454322372500x500_2_500x500.jpg', 'fullsizerender_1454322373800x800_800x800.jpg', '', 1, 1),
(50, 76, 'img5299_1470822238.JPG', 'img5299_147082223873x73_1_73x73.jpg', 'img5299_1470822238268x268_1_268x268.jpg', 'img5299_1470822238500x500_1_500x500.jpg', 'img5299_1470822239800x800_800x800.jpg', '', 1, 1),
(51, 76, 'img5239_1470822239.JPG', 'img5239_147082223973x73_2_73x73.jpg', 'img5239_1470822239268x268_2_268x268.jpg', 'img5239_1470822239500x500_2_500x500.jpg', 'img5239_1470822239800x800_800x800.jpg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_provider`
--

CREATE TABLE `table_product_provider` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_provider`
--

INSERT INTO `table_product_provider` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 'hp', 'HP', '', '', '', '', '', '', '', '', '', 'hp1409796141_1410940586.png', '', '', 2, 1, 1409796141, 1411630678),
(2, 'dell', 'Dell', '', '', '', '', '', '', '', '', '', 'dell_1409796177.png', '', '', 1, 1, 1409796177, 1411630634),
(3, 'lenovo', 'Lenovo', '', '', '', '', '', '', '', '', '', 'laptopcali03_1410940609.png', '', '', 3, 1, 1409796201, 1410940609),
(4, 'sony-vaio', 'Sony Vaio', '', '', '', '', '', '', '', '', '', 'sonyvaio1409796280_1410940674.png', '', '', 4, 1, 1409796280, 1410940674),
(5, 'toshiba', 'Toshiba', '', '', '', '', '', '', '', '', '', 'toshiba_1409796308.png', '', '', 5, 1, 1409796308, 0),
(6, 'apple', 'Apple', '', '', '', '', '', '', '', '', '', 'apple14097963271_1410940644.png', '', '', 6, 1, 1409796327, 1410940644),
(7, 'asus', 'Asus', '', 'Asus', 'Asus', '', '', '', '', '', '', '', '', '', 10, 0, 1410798334, 1411630727),
(15, 'microsoft', 'Microsoft', '', '', '', '', '', '', '', '', '', '', '', '', 7, 0, 1411446445, 0),
(16, 'nexus-google', 'Nexus Google', '', '', '', '', '', '', '', '', '', '', '', '', 8, 0, 1411446482, 0),
(17, 'kindle', 'Kindle', '', '', '', '', '', '', '', '', '', '', '', '', 9, 0, 1411446546, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_size`
--

CREATE TABLE `table_product_size` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_size`
--

INSERT INTO `table_product_size` (`id`, `tenkodau`, `ten_vi`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, '', 'S', '', '', '', 1, 1, 1414803316, 1414803365),
(2, '', 'M', '', '', '', 2, 1, 1414803376, 0),
(3, '', 'L', '', '', '', 3, 1, 1414803388, 0),
(5, '', 'XL', '', '', '', 1, 1, 1420621790, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_team`
--

CREATE TABLE `table_product_team` (
  `id_product` int(11) NOT NULL,
  `id_team` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_team`
--

INSERT INTO `table_product_team` (`id_product`, `id_team`, `type`) VALUES
(2, 1, 'type'),
(2, 2, 'type'),
(2, 3, 'type'),
(2, 4, 'type'),
(3, 1, 'type'),
(3, 2, 'type'),
(3, 3, 'type'),
(3, 4, 'type'),
(4, 1, 'type'),
(4, 2, 'type'),
(4, 3, 'type'),
(4, 4, 'type'),
(5, 2, ''),
(5, 3, ''),
(5, 4, ''),
(5, 1, 'type'),
(1, 1, 'type'),
(1, 2, 'type'),
(1, 3, 'type'),
(1, 4, 'type'),
(10, 2, 'type'),
(11, 1, 'type'),
(11, 2, 'type'),
(11, 3, 'type'),
(11, 4, 'type'),
(12, 3, ''),
(12, 4, ''),
(12, 2, 'type'),
(13, 3, ''),
(13, 4, ''),
(14, 2, ''),
(14, 3, ''),
(14, 4, ''),
(15, 1, 'type'),
(15, 2, ''),
(15, 3, ''),
(15, 4, ''),
(16, 2, ''),
(16, 3, ''),
(16, 4, ''),
(16, 1, 'type'),
(13, 2, 'type'),
(14, 1, 'type'),
(7, 1, 'type'),
(7, 2, 'type'),
(7, 3, 'type'),
(7, 4, 'type'),
(21, 2, 'type'),
(25, 2, 'type'),
(30, 2, 'type'),
(45, 4, 'type'),
(52, 2, 'type'),
(56, 2, 'type'),
(61, 2, 'type'),
(64, 2, 'type'),
(68, 2, 'type'),
(67, 2, 'type'),
(69, 4, 'type'),
(70, 2, 'type'),
(73, 2, 'type'),
(74, 2, 'type'),
(77, 2, 'type'),
(117, 2, 'type'),
(127, 2, 'type'),
(141, 2, 'type'),
(144, 2, 'type'),
(145, 2, 'type'),
(50, 2, 'type'),
(24, 2, 'type'),
(27, 2, 'type'),
(29, 2, 'type'),
(32, 2, 'type'),
(39, 2, 'type'),
(40, 2, 'type'),
(49, 2, 'type'),
(51, 2, 'type'),
(66, 2, 'type'),
(44, 3, 'type'),
(44, 4, 'type'),
(164, 2, 'type'),
(128, 2, 'type'),
(134, 3, 'type'),
(136, 2, 'type'),
(54, 2, 'type'),
(54, 3, 'type'),
(54, 4, 'type'),
(22, 2, 'type'),
(46, 2, 'type'),
(82, 2, 'type'),
(201, 2, 'type'),
(213, 2, 'type'),
(170, 1, 'type'),
(170, 2, 'type'),
(179, 1, 'type'),
(183, 1, 'type'),
(172, 1, 'type');

-- --------------------------------------------------------

--
-- Table structure for table `table_product_type`
--

CREATE TABLE `table_product_type` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_product_type`
--

INSERT INTO `table_product_type` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(1, 'sap-ra-mat', 'Sắp ra mắt', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1409890799, 0),
(2, 'san-pham-moi', 'Sản phẩm mới', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 1409890815, 0),
(3, 'san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 1409890837, 0),
(4, 'san-pham-ban-chay', 'Sản phẩm bán chạy', '', '', '', '', '', '', '', '', '', '', '', '', 4, 1, 1409890851, 0),
(5, 'linh-kien-laptop', 'Linh Kiện Laptop', '', '', '', '', '', '', '', '', '', '', '', '', 5, 1, 1410926969, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_register_email`
--

CREATE TABLE `table_register_email` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_register_email`
--

INSERT INTO `table_register_email` (`id`, `ten`, `email`, `numberic`, `shows`, `date_create`, `date_update`, `viewed`) VALUES
(1, '', 'thuan.nguyendinh89@gmail.com', 1, 1, 1414775827, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_service`
--

CREATE TABLE `table_service` (
  `id` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `mota_vi` varchar(2014) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `mota_en` varchar(1024) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_popup` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_service`
--

INSERT INTO `table_service` (`id`, `id_list`, `tenkodau`, `ten_vi`, `mota_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `mota_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `thumb1`, `thumb2`, `alt`, `numberic`, `shows`, `shows_index`, `shows_popup`, `date_create`, `date_update`, `viewed`) VALUES
(3, 0, 'huong-dan-mua-hang-online', 'HƯỚNG DẪN MUA HÀNG ONLINE', 'HƯỚNG DẪN MUA HÀNG ONLINE', '<p>HƯỚNG DẪN MUA H&Agrave;NG ONLINE</p>\r\n', 'HƯỚNG DẪN MUA HÀNG ONLINE', 'HƯỚNG DẪN MUA HÀNG ONLINE', 'HƯỚNG DẪN MUA HÀNG ONLINE', '', '', '', '', '', '', 'huongdanmuahangonline_1449646019.png', 'huongdanmuahangonline_144964601973x73_73x73.png', 'huongdanmuahangonline_1449646019268x268_268x268.png', 'huongdanmuahangonline_1449646019500x500_500x500.png', 'HƯỚNG DẪN MUA HÀNG ONLINE', 1, 1, 0, 1, 1410234619, 1449646271, 655),
(4, 0, 'chinh-sach-tra-hang', 'CHÍNH SÁCH TRẢ HÀNG', 'CHÍNH SÁCH TRẢ HÀNG', '<p>Tại Thế Giới N&ocirc;ng Sản, kh&aacute;ch h&agrave;ng c&oacute; thể trả lại h&agrave;ng ngay tại thời điểm nh&acirc;n vi&ecirc;n của cửa h&agrave;ng đến giao h&agrave;ng v&agrave; nhận lại tiền trong v&ograve;ng 2 ng&agrave;y l&agrave;m việc (trường hợp thanh to&aacute;n trước khi giao h&agrave;ng) nếu sản phẩm của ch&uacute;ng t&ocirc;i kh&ocirc;ng đ&uacute;ng chủng loại, chất lượng m&agrave; kh&aacute;ch h&agrave;ng đ&atilde; đặt trước đ&oacute;.</p>\r\n\r\n<p><span style="line-height:1.6em">&nbsp;Việc ho&agrave;n tiền (đ&atilde; trừ ph&iacute; vận chuyển nếu c&oacute;) c&oacute; thể thực hiện tại trụ sở cửa h&agrave;ng hoặc được chuyển trả v&agrave;o t&agrave;i khoản của kh&aacute;ch h&agrave;ng (đ&atilde; trừ ph&iacute; vận chuyển v&agrave; ph&iacute; chuyển tiền nếu c&oacute;).</span></p>\r\n', 'CHÍNH SÁCH TRẢ HÀNG', 'CHÍNH SÁCH TRẢ HÀNG', 'CHÍNH SÁCH TRẢ HÀNG', '', '', '', '', '', '', 'shopicon256s_1449646360.png', 'shopicon256s_144964636073x73_73x73.png', 'shopicon256s_1449646360268x268_268x268.png', 'shopicon256s_1449646360500x500_500x500.png', 'CHÍNH SÁCH TRẢ HÀNG', 2, 1, 0, 1, 1410234642, 1449646360, 465),
(6, 0, 'phuong-thuc-thanh-toan', 'PHƯƠNG THỨC THANH TOÁN', 'PHƯƠNG THỨC THANH TOÁN', '<p>- THANH TO&Aacute;N SAU KHI NHẬN H&Agrave;NG: Qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n trực tiếp tiền h&agrave;ng v&agrave; ph&iacute; vận chuyển (nếu c&oacute;) cho nh&acirc;n vi&ecirc;n giao h&agrave;ng sau khi đ&atilde; kiểm tra v&agrave; nhận sản phẩm trong đơn h&agrave;ng của m&igrave;nh. Phương thức thanh to&aacute;n n&agrave;y &aacute;p dụng cho c&aacute;c đơn h&agrave;ng vận chuyển trong nội th&agrave;nh Tp Hồ Ch&iacute; Minh &nbsp;</p>\r\n\r\n<p>- THANH TO&Aacute;N CHUYỂN KHOẢN: Qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n tiền h&agrave;ng v&agrave; ph&iacute; vận chuyển (nếu c&oacute;) bằng c&aacute;ch chuyển khoản v&agrave;o một trong c&aacute;c t&agrave;i khoản dưới đ&acirc;y:</p>\r\n\r\n<p>Chi Nh&aacute;nh C&ocirc;ng Ty TNHH Xuất Khẩu N&ocirc;ng Sản An Ph&uacute; Đ&agrave; Lạt&nbsp;<br />\r\nSố t&agrave;i khoản : 6400201012760&nbsp;<br />\r\nNg&acirc;n h&agrave;ng &nbsp; &nbsp;: N&ocirc;ng Nghiệp V&agrave; Ph&aacute;t Triển N&ocirc;ng Th&ocirc;n &ndash; CN Gia Định</p>\r\n\r\n<p>Lưu &yacute;: Nội dung thanh to&aacute;n Qu&yacute; kh&aacute;ch vui l&ograve;ng ghi r&otilde; thanh to&aacute;n cho đơn h&agrave;ng số bao nhi&ecirc;u. (Số đơn h&agrave;ng n&agrave;y ch&uacute;ng t&ocirc;i x&aacute;c nhận qua mail hoặc th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng sau khi Qu&yacute; kh&aacute;ch đặt h&agrave;ng)</p>\r\n', 'PHƯƠNG THỨC THANH TOÁN', 'PHƯƠNG THỨC THANH TOÁN', 'PHƯƠNG THỨC THANH TOÁN', '', '', '', '', '', '', 'coinusdollaricon256s_1449646420.png', 'coinusdollaricon256s_144964642073x73_73x73.png', 'coinusdollaricon256s_1449646420268x268_268x268.png', 'coinusdollaricon256s_1449646420500x500_500x500.png', 'PHƯƠNG THỨC THANH TOÁN', 3, 1, 0, 1, 1432890893, 1449646420, 413),
(7, 0, 'phuong-thuc-giao-hang', 'PHƯƠNG THỨC GIAO HÀNG', 'PHƯƠNG THỨC GIAO HÀNG', '<p>Cuộc sống hiện đại v&agrave; tất bật đ&atilde; l&agrave;m cho quỹ thời gian của ch&uacute;ng ta trở n&ecirc;n hạn hẹp đi rất nhiều. C&acirc;n bằng giữa c&ocirc;ng việc v&agrave; chăm lo cuộc sống gia đ&igrave;nh l&agrave; ước muốn của rất nhiều phụ nữ hiện đại. Thấu hiểu được điều đ&oacute;, ch&uacute;ng t&ocirc;i đ&atilde; ph&aacute;t triển dịch vụ mua h&agrave;ng trực tuyến, giao h&agrave;ng tận nơi nhằm tiết kiệm thời gian v&agrave; chi ph&iacute; cho kh&aacute;ch h&agrave;ng bằng việc chuyển những sản phẩm tốt nhất đến c&aacute;c địa điểm trong nội th&agrave;nh Th&agrave;nh Phố Hồ Ch&iacute; Minh do kh&aacute;ch h&agrave;ng y&ecirc;u cầu.&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; Ch&uacute;ng t&ocirc;i đảm bảo sản phẩm lu&ocirc;n tươi sạch, an to&agrave;n v&agrave; sẵn s&agrave;ng nhận h&agrave;ng trả lại tr&ecirc;n bất kỳ sản phẩm n&agrave;o kh&ocirc;ng đ&uacute;ng chủng loại, chất lượng như kh&aacute;ch h&agrave;ng đ&atilde; lựa chọn, ngay tại thời điểm giao h&agrave;ng.&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; Cửa h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể so s&aacute;nh gi&aacute; cả trước khi lựa chọn sản phẩm.&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; Thế giới n&ocirc;ng sản cung cấp c&aacute;c h&igrave;nh thức vận chuyển sau:&nbsp;</p>\r\n<p><img style="height: 295px; width: 788px;" src="http://localhost/upload/images/bang1.png" alt="" /></p>\r\n<p>&nbsp; &nbsp; &nbsp;Kh&aacute;ch h&agrave;ng vui l&ograve;ng lựa chọn h&igrave;nh thức vận chuyển tr&ecirc;n, nh&acirc;n vi&ecirc;n vận chuyển của ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với qu&yacute; kh&aacute;ch trước khi đến giao h&agrave;ng. Trường hợp c&oacute; thay đổi địa điểm giao h&agrave;ng xin qu&yacute; kh&aacute;ch gọi điện hoặc email th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i trước &iacute;t nhất 1 giờ đồng hồ. Nếu kh&aacute;ch h&agrave;ng lựa chọn nhận h&agrave;ng tại cửa h&agrave;ng Thế Giới N&ocirc;ng Sản xin vui long ghi r&otilde; thời gian đến nhận h&agrave;ng trong phần li&ecirc;n hệ trong mục đặt h&agrave;ng trước khi đến lấy h&agrave;ng.&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;Khi nhận h&agrave;ng kh&aacute;ch h&agrave;ng vui l&ograve;ng kiểm tra chủng loại, số lượng, chất lượng của sản phẩm trong đơn h&agrave;ng v&agrave; k&yacute; v&agrave;o bi&ecirc;n lai giao h&agrave;ng.</p>\r\n<p>Miễn ph&iacute; ph&iacute; giao h&agrave;ng cho đơn h&agrave;ng từ 200.000đ đối với khu vực G&ograve; Vấp, v&agrave; 300.000đ đối với khu vực kh&aacute;c. Chỉ giao h&agrave;ng trong nội th&agrave;nh TP.HCM.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Ch&uacute;ng t&ocirc;i rất mong nhận được đ&aacute;nh gi&aacute; của kh&aacute;ch h&agrave;ng về dịch vụ cũng như chất lượng h&agrave;ng h&oacute;a qua:</p>\r\n<p>- &nbsp; &nbsp; &nbsp; &nbsp; Hotline: (08) 6 282 4777/ 0963 837 947</p>\r\n<p>- &nbsp; &nbsp; &nbsp; &nbsp; Email: contact@thegioinongsan.com.vn</p>\r\n<p>&nbsp;</p>', 'PHƯƠNG THỨC GIAO HÀNG', 'PHƯƠNG THỨC GIAO HÀNG', 'PHƯƠNG THỨC GIAO HÀNG', '', '', '', '', '', '', 'truckicon256s_1449646573.png', 'truckicon256s_144964657373x73_73x73.png', 'truckicon256s_1449646573268x268_268x268.png', 'truckicon256s_1449646573500x500_500x500.png', 'PHƯƠNG THỨC GIAO HÀNG', 4, 1, 0, 1, 1432892312, 1521185709, 601);

-- --------------------------------------------------------

--
-- Table structure for table `table_service_list`
--

CREATE TABLE `table_service_list` (
  `id` int(11) NOT NULL,
  `tenkodau` varchar(1024) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `noidung_vi` text NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `noidung_en` text NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_menu` int(11) NOT NULL,
  `shows_index` int(11) NOT NULL,
  `shows_tab` int(11) NOT NULL,
  `shows_all` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_service_list`
--

INSERT INTO `table_service_list` (`id`, `tenkodau`, `ten_vi`, `noidung_vi`, `title_vi`, `keywords_vi`, `description_vi`, `ten_en`, `noidung_en`, `title_en`, `keywords_en`, `description_en`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `shows_menu`, `shows_index`, `shows_tab`, `shows_all`, `date_create`, `date_update`) VALUES
(1, 'dich-vu-a', 'Dịch vụ A', '', 'Dịch vụ A', 'Dịch vụ A', 'Dịch vụ A', '', '', '', '', '', 'imgitem_1415056279.jpg', 'imgitem_1415056279_300x215.jpg', '', 1, 1, 1, 1, 1, 0, 1414725418, 1432890020),
(2, 'dich-vu-c', 'Dịch vụ C', '', 'Dịch vụ C', 'Dịch vụ C', 'Dịch vụ C', '', '', '', '', '', 'imgitem_1415056299.jpg', 'imgitem_1415056299_300x215.jpg', '', 3, 1, 1, 1, 1, 0, 1414725434, 1432890036),
(3, 'dich-vu-b', 'Dịch vụ B', '', 'Dịch vụ B', 'Dịch vụ B', 'Dịch vụ B', '', '', '', '', '', 'ao-thun-co-tru-nu_1420621262.jpg', 'ao-thun-co-tru-nu_1420621262_286.66666666667x215.jpg', '', 2, 1, 1, 1, 1, 0, 1420621262, 1432890029);

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE `table_setting` (
  `id` int(10) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `ten_vi` varchar(225) NOT NULL,
  `slogan_vi` varchar(1024) NOT NULL,
  `title_vi` varchar(1024) NOT NULL,
  `keywords_vi` varchar(1024) NOT NULL,
  `description_vi` varchar(1024) NOT NULL,
  `address_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `slogan_en` varchar(1024) NOT NULL,
  `title_en` varchar(1024) NOT NULL,
  `keywords_en` varchar(1024) NOT NULL,
  `description_en` varchar(1024) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `photo_map` varchar(255) NOT NULL,
  `googlemaps` text NOT NULL,
  `geos` text NOT NULL,
  `hotline` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(255) NOT NULL,
  `fanpage` varchar(1024) NOT NULL,
  `copy_right` varchar(1024) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `popup_image` varchar(255) NOT NULL,
  `popup_link` varchar(255) NOT NULL,
  `popup_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`id`, `lang`, `ten_vi`, `slogan_vi`, `title_vi`, `keywords_vi`, `description_vi`, `address_vi`, `ten_en`, `slogan_en`, `title_en`, `keywords_en`, `description_en`, `address_en`, `fax`, `photo_map`, `googlemaps`, `geos`, `hotline`, `phone`, `email`, `website`, `fanpage`, `copy_right`, `logo`, `favicon`, `popup_image`, `popup_link`, `popup_title`) VALUES
(1, 'vi', 'Công Ty TNHH ABC', 'Slogan thứ 1, Slogan thứ 2, Slogan thứ 3, Slogan thứ 4', 'Công Ty TNHH ABC', 'Công Ty TNHH ABC', 'Công Ty TNHH ABC', '100 Đường ABC, Phường ABC, Quận ABC', '', '', '', '', '', '', '', 'photomap_1432914642.png', '10.835366, 106.665426', '', '0123 456 789 ', '(084) X XXX XXXX (Cửa hàng) - 0123 456 789 (ABC)', 'marketing.appvn@gmail.com', 'http://news.com.vn/', 'https://www.facebook.com/Th%E1%BA%BF-Gi%E1%BB%9Bi-N%C3%B4ng-S%E1%BA%A3n-1444484812533759/', '', 'logo_1449671906.png', 'favicon_1449671906.ico', 'imgpopup_1449671906.jpg', 'contact/', 'Hãy đặt hàng ngay hôm nay!!!');

-- --------------------------------------------------------

--
-- Table structure for table `table_slideshow`
--

CREATE TABLE `table_slideshow` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `caption_vi` varchar(255) NOT NULL,
  `caption_en` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `position` varchar(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_slideshow`
--

INSERT INTO `table_slideshow` (`id`, `ten_vi`, `ten_en`, `caption_vi`, `caption_en`, `photo`, `thumb`, `alt`, `link`, `position`, `width`, `height`, `numberic`, `shows`, `date_create`, `date_update`) VALUES
(24, 'Google wants more women in tech.', '', 'Caption Google wants more women in tech.', '', '1_1532619302.png', '1_1532619302_540x372.png', 'Google wants more women in tech.', 'https://www.google.com/', '', 0, 0, 1, 1, 1432912894, 1532620045),
(25, 'Small Businesses Surge against all expectations.', '', '', '', '3_1532619322.png', '3_1532619322_540x372.png', 'Small Businesses Surge against all expectations.', 'https://www.google.com/', '', 0, 0, 2, 1, 1432912922, 1532619396),
(26, 'Drones: Future of disaster response?', '', '', '', '5_1532619340.png', '5_1532619340_540x372.png', 'Drones: Future of disaster response?', 'https://www.google.com/', '', 0, 0, 3, 1, 1449669532, 1532619340),
(27, 'Hollywood cowboys retreat.', '', '', '', '4_1532619405.png', '4_1532619405_540x372.png', 'Hollywood cowboys retreat.', 'https://www.google.com/', '', 0, 0, 4, 1, 1449669573, 1532619405);

-- --------------------------------------------------------

--
-- Table structure for table `table_social`
--

CREATE TABLE `table_social` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_social`
--

INSERT INTO `table_social` (`id`, `ten`, `link`, `photo`, `thumb`, `alt`, `numberic`, `shows`, `date_create`, `date_update`, `viewed`) VALUES
(1, 'Facebook', 'https://www.facebook.com/Th%E1%BA%BF-Gi%E1%BB%9Bi-N%C3%B4ng-S%E1%BA%A3n-1444484812533759/', 'facebook_1443418982.png', 'facebook_1443418982_32x32.png', 'facebook', 1, 1, 1414723865, 1450791749, 0),
(2, 'Twitter', 'https://twitter.com/', 'twitter_1443419010.png', 'twitter_1443419010_32x32.png', 'twitter', 2, 1, 1414723948, 1443419010, 0),
(3, 'Google', 'http://google.com/', 'google_1443419016.png', 'google_1443419016_32x32.png', 'google', 3, 1, 1414723972, 1443419016, 0),
(4, 'Youtube', 'http://youtube.com/', 'youtube_1443419024.png', 'youtube_1443419024_32x32.png', 'youtube', 4, 1, 1414724006, 1443419024, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_status`
--

CREATE TABLE `table_status` (
  `id` int(11) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_status`
--

INSERT INTO `table_status` (`id`, `trangthai`) VALUES
(1, 'Mới đặt'),
(2, 'Đã xác nhận'),
(3, 'Đang giao hàng'),
(4, 'Đã giao'),
(5, 'Đã hủy');

-- --------------------------------------------------------

--
-- Table structure for table `table_support`
--

CREATE TABLE `table_support` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) NOT NULL,
  `ten_en` varchar(255) NOT NULL,
  `yahoo` varchar(50) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `numberic` int(11) NOT NULL,
  `shows` int(11) NOT NULL,
  `shows_product` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_support`
--

INSERT INTO `table_support` (`id`, `ten_vi`, `ten_en`, `yahoo`, `skype`, `phone`, `numberic`, `shows`, `shows_product`, `date_create`, `date_update`) VALUES
(1, 'Kinh doanh', '', 'kinhdoanh', 'kinhdoanh', '0982476002', 1, 1, 1, 1408508357, 1420625283),
(2, 'Thiết kế', '', 'Loan', '', '08 62717002', 2, 1, 1, 1408508388, 1420625353),
(3, 'Tư vấn', '', '', '', '08 62717002', 3, 1, 1, 1409801617, 1420625395),
(4, 'Bán hàng', '', 'banhang', 'banhang', '', 4, 0, 1, 1409801646, 0),
(5, 'Mua trả góp', '', 'muatragop', 'muatragop', '', 5, 0, 0, 1409801719, 0),
(6, 'Bán sỉ & hợp tác', '', 'bansihoptac', 'bansihoptac', '', 6, 0, 0, 1409801752, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `ten` varchar(225) NOT NULL,
  `dienthoai` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `diachi` varchar(225) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `ngaysinh` varchar(20) NOT NULL,
  `noidung` text NOT NULL,
  `nick_yahoo` varchar(225) NOT NULL,
  `nick_skype` varchar(225) NOT NULL,
  `congty` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `hienthi` tinyint(1) NOT NULL DEFAULT '1',
  `com` varchar(225) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id`, `username`, `password`, `ten`, `dienthoai`, `email`, `diachi`, `sex`, `ngaysinh`, `noidung`, `nick_yahoo`, `nick_skype`, `congty`, `country`, `city`, `role`, `hienthi`, `com`) VALUES
(1, 'Administrator', 'dc3565645d8002becb5fd7977aeef3e1', 'admin', '', 'thuan.nguyendinh89@gmail.com', '', 0, '', '', '', '', '', '', '', 1, 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `table_useronline`
--

CREATE TABLE `table_useronline` (
  `session` char(100) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_useronline`
--

INSERT INTO `table_useronline` (`session`, `time`, `ip`) VALUES
('ufcnstu785om1lb7hfo2lbjel4', 1532620910, '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_about`
--
ALTER TABLE `table_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_about_list`
--
ALTER TABLE `table_about_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_advertise`
--
ALTER TABLE `table_advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_advisory`
--
ALTER TABLE `table_advisory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_banner`
--
ALTER TABLE `table_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_blog`
--
ALTER TABLE `table_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_blog_list`
--
ALTER TABLE `table_blog_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_city`
--
ALTER TABLE `table_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_contact`
--
ALTER TABLE `table_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_counter`
--
ALTER TABLE `table_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_courses`
--
ALTER TABLE `table_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_courses_list`
--
ALTER TABLE `table_courses_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_custome`
--
ALTER TABLE `table_custome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_district`
--
ALTER TABLE `table_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_event`
--
ALTER TABLE `table_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_event_list`
--
ALTER TABLE `table_event_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_faqs`
--
ALTER TABLE `table_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_farm`
--
ALTER TABLE `table_farm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_footer`
--
ALTER TABLE `table_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_helper`
--
ALTER TABLE `table_helper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_info`
--
ALTER TABLE `table_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_library`
--
ALTER TABLE `table_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_library_list`
--
ALTER TABLE `table_library_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_links`
--
ALTER TABLE `table_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_news`
--
ALTER TABLE `table_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_news_list`
--
ALTER TABLE `table_news_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_news_photo`
--
ALTER TABLE `table_news_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pricelist`
--
ALTER TABLE `table_pricelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_cat`
--
ALTER TABLE `table_product_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_color`
--
ALTER TABLE `table_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_compare`
--
ALTER TABLE `table_product_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_compare_properties`
--
ALTER TABLE `table_product_compare_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_item`
--
ALTER TABLE `table_product_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_list`
--
ALTER TABLE `table_product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_photo`
--
ALTER TABLE `table_product_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_provider`
--
ALTER TABLE `table_product_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_size`
--
ALTER TABLE `table_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_type`
--
ALTER TABLE `table_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_register_email`
--
ALTER TABLE `table_register_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_service`
--
ALTER TABLE `table_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_service_list`
--
ALTER TABLE `table_service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_slideshow`
--
ALTER TABLE `table_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_social`
--
ALTER TABLE `table_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_status`
--
ALTER TABLE `table_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_support`
--
ALTER TABLE `table_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_about`
--
ALTER TABLE `table_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `table_about_list`
--
ALTER TABLE `table_about_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_advertise`
--
ALTER TABLE `table_advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_advisory`
--
ALTER TABLE `table_advisory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_banner`
--
ALTER TABLE `table_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_blog`
--
ALTER TABLE `table_blog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `table_blog_list`
--
ALTER TABLE `table_blog_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_city`
--
ALTER TABLE `table_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `table_contact`
--
ALTER TABLE `table_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `table_counter`
--
ALTER TABLE `table_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_courses`
--
ALTER TABLE `table_courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `table_courses_list`
--
ALTER TABLE `table_courses_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_custome`
--
ALTER TABLE `table_custome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_district`
--
ALTER TABLE `table_district`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;
--
-- AUTO_INCREMENT for table `table_event`
--
ALTER TABLE `table_event`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table_event_list`
--
ALTER TABLE `table_event_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_faqs`
--
ALTER TABLE `table_faqs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_farm`
--
ALTER TABLE `table_farm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `table_footer`
--
ALTER TABLE `table_footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `table_helper`
--
ALTER TABLE `table_helper`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_info`
--
ALTER TABLE `table_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_library`
--
ALTER TABLE `table_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_library_list`
--
ALTER TABLE `table_library_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_links`
--
ALTER TABLE `table_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_news`
--
ALTER TABLE `table_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `table_news_list`
--
ALTER TABLE `table_news_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `table_news_photo`
--
ALTER TABLE `table_news_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_order`
--
ALTER TABLE `table_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `table_pricelist`
--
ALTER TABLE `table_pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `table_product_cat`
--
ALTER TABLE `table_product_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `table_product_color`
--
ALTER TABLE `table_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `table_product_compare`
--
ALTER TABLE `table_product_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `table_product_compare_properties`
--
ALTER TABLE `table_product_compare_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `table_product_item`
--
ALTER TABLE `table_product_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `table_product_list`
--
ALTER TABLE `table_product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `table_product_photo`
--
ALTER TABLE `table_product_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `table_product_provider`
--
ALTER TABLE `table_product_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `table_product_size`
--
ALTER TABLE `table_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_product_type`
--
ALTER TABLE `table_product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_register_email`
--
ALTER TABLE `table_register_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_service`
--
ALTER TABLE `table_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `table_service_list`
--
ALTER TABLE `table_service_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_setting`
--
ALTER TABLE `table_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_slideshow`
--
ALTER TABLE `table_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `table_social`
--
ALTER TABLE `table_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_status`
--
ALTER TABLE `table_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `table_support`
--
ALTER TABLE `table_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
