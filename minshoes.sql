-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 06:28 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onishop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaAnh` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(16, 82, 13, 'Đẹp', '2021-11-16 12:51:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(66, 82, 1, '1500000', '1500000', 40, 'Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(82, 39, 'Trắng', 100),
(82, 39, 'Vàng', 0),
(82, 40, 'Trắng', 99),
(82, 40, 'Vàng', 0),
(83, 40, 'Đen - Trắng', 0),
(83, 40, 'none', 0),
(83, 41, 'Đen - Trắng', 0),
(83, 41, 'none', 0),
(84, 39, 'Đen ', 0),
(84, 39, 'none', 0),
(84, 39, 'Vàng', 0),
(84, 40, 'Đen ', 0),
(84, 40, 'none', 0),
(84, 40, 'Vàng', 0),
(84, 41, 'Đen ', 0),
(84, 41, 'none', 0),
(84, 41, 'Vàng', 0),
(84, 42, 'Đen ', 0),
(84, 42, 'none', 0),
(84, 42, 'Vàng', 0),
(85, 38, 'none', 0),
(85, 38, 'Trắng', 0),
(85, 38, 'Vàng', 0),
(85, 39, 'none', 0),
(85, 39, 'Trắng', 0),
(85, 39, 'Vàng', 0),
(85, 40, 'none', 0),
(85, 40, 'Trắng', 0),
(85, 40, 'Vàng', 0),
(85, 41, 'none', 0),
(85, 41, 'Trắng', 0),
(85, 41, 'Vàng', 0),
(85, 42, 'none', 0),
(85, 42, 'Trắng', 0),
(85, 42, 'Vàng', 0),
(86, 41, 'Vàng', 0),
(86, 42, 'Vàng', 0),
(86, 43, 'Vàng', 0),
(87, 40, 'Trắng', 0),
(87, 40, 'Xanh', 0),
(87, 41, 'Trắng', 0),
(87, 41, 'Xanh', 0),
(87, 42, 'Trắng', 0),
(87, 42, 'Xanh', 0),
(88, 40, 'none', 0),
(88, 40, 'Vàng', 0),
(88, 41, 'none', 0),
(88, 41, 'Vàng', 0),
(88, 42, 'none', 0),
(88, 42, 'Vàng', 0),
(88, 43, 'none', 0),
(88, 43, 'Vàng', 0),
(89, 39, 'Đen - Trắng', 0),
(89, 39, 'none', 0),
(89, 40, 'Đen - Trắng', 0),
(89, 40, 'none', 0),
(89, 41, 'Đen - Trắng', 0),
(89, 41, 'none', 0),
(89, 42, 'Đen - Trắng', 0),
(89, 42, 'none', 0),
(89, 43, 'Đen - Trắng', 0),
(89, 43, 'none', 0),
(90, 39, 'Đỏ', 0),
(90, 39, 'Vàng', 0),
(90, 39, 'Xanh', 0),
(90, 41, 'Đỏ', 0),
(90, 41, 'Vàng', 0),
(90, 41, 'Xanh', 0),
(90, 42, 'Đỏ', 0),
(90, 42, 'Vàng', 0),
(90, 42, 'Xanh', 0),
(90, 43, 'Đỏ', 0),
(90, 43, 'Vàng', 0),
(90, 43, 'Xanh', 0),
(91, 39, 'none', 0),
(91, 39, 'Trắng', 0),
(91, 40, 'none', 0),
(91, 40, 'Trắng', 0),
(91, 41, 'none', 0),
(91, 41, 'Trắng', 0),
(91, 42, 'none', 0),
(91, 42, 'Trắng', 0),
(92, 40, 'Đen ', 0),
(92, 40, 'Đỏ', 0),
(92, 40, 'none', 0),
(92, 41, 'Đen ', 0),
(92, 41, 'Đỏ', 0),
(92, 41, 'none', 0),
(92, 42, 'Đen ', 0),
(92, 42, 'Đỏ', 0),
(92, 42, 'none', 0),
(92, 43, 'Đen ', 0),
(92, 43, 'Đỏ', 0),
(92, 43, 'none', 0),
(93, 38, 'none', 0),
(93, 38, 'Vàng', 0),
(93, 38, 'Xanh', 0),
(93, 39, 'none', 0),
(93, 39, 'Vàng', 0),
(93, 39, 'Xanh', 0),
(93, 40, 'none', 0),
(93, 40, 'Vàng', 0),
(93, 40, 'Xanh', 0),
(93, 41, 'none', 0),
(93, 41, 'Vàng', 0),
(93, 41, 'Xanh', 0),
(93, 42, 'none', 0),
(93, 42, 'Vàng', 0),
(93, 42, 'Xanh', 0),
(94, 38, 'Đỏ', 0),
(94, 38, 'none', 0),
(94, 38, 'Trắng', 0),
(94, 38, 'Xanh', 0),
(94, 39, 'Đỏ', 0),
(94, 39, 'none', 0),
(94, 39, 'Trắng', 0),
(94, 39, 'Xanh', 0),
(94, 40, 'Đỏ', 0),
(94, 40, 'none', 0),
(94, 40, 'Trắng', 0),
(94, 40, 'Xanh', 0),
(94, 41, 'Đỏ', 0),
(94, 41, 'none', 0),
(94, 41, 'Trắng', 0),
(94, 41, 'Xanh', 0),
(94, 42, 'Đỏ', 0),
(94, 42, 'none', 0),
(94, 42, 'Trắng', 0),
(94, 42, 'Xanh', 0),
(96, 39, 'Đen ', 0),
(96, 39, 'none', 0),
(96, 39, 'Vàng', 0),
(96, 40, 'Đen ', 0),
(96, 40, 'none', 0),
(96, 40, 'Vàng', 0),
(96, 41, 'Đen ', 0),
(96, 41, 'none', 0),
(96, 41, 'Vàng', 0),
(96, 42, 'Đen ', 0),
(96, 42, 'none', 0),
(96, 42, 'Vàng', 0);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(66, 13, 3, '2021-11-16 12:55:37', '2021-11-17 12:56:05', 'hoàn thành', '1500000', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(13, 'Nguyễn Đình Minh', 'ndminh.20it7@vku.udn.vn', 819273430, 'Huế', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(8, '20/11', 'Chào mừng n', 20, '20000', '2021-11-16', '2021-11-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(66, 'Nguyễn Đình Minh', 'Quảng Lợi, Quảng Điền, Huế', 819273430);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Balenciaga'),
(6, 'Vans'),
(7, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin.minshoes@gmail.com', 819273430, 'Huế', 'admin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` int(11) NOT NULL,
  `Mau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(151, 3, 82, 100, '1000000', '100000000', '2021-11-16 12:53:29', '', 39, 'Trắng'),
(152, 3, 82, 100, '1000000', '100000000', '2021-11-16 12:53:29', '', 40, 'Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `MaAnh` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AnhNen` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `MaAnh`, `AnhNen`) VALUES
(82, 'Nike Air Force 107 LV8', 1, 1, 199, '<p>Bảng chữ c&aacute;i Hangul của H&agrave;n Quốc đ&atilde; truyền cảm hứng cho đồ họa tr&ecirc;n phi&ecirc;n bản AF-1 mang t&iacute;nh biểu tượng n&agrave;y của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Thiết kế sạch sẽ l&agrave; một nghệ thuật về c&aacute;c k&yacute; tự, phụ &acirc;m v&agrave; nguy&ecirc;n &acirc;m của bảng chữ c&aacute;i. Lấy cảm hứng từ bạn H&igrave;nh dạng h&igrave;nh học bắt chước c&aacute;ch miệng của bạn di chuyển để ph&aacute;t &acirc;m c&aacute;c k&yacute; tự ch&iacute;nh. Đi bộ tr&ecirc;n kh&ocirc;ng Thiết bị Nike Air cung cấp đệm nhẹ. Nhiều lợi &iacute;ch hơn Điểm xoay tr&ecirc;n đế ngo&agrave;i cung cấp độ b&aacute;m v&agrave; lực k&eacute;o tuyệt vời. Cao su kh&ocirc;ng đ&aacute;nh dấu trong một thiết kế cupsole kiểu d&aacute;ng đẹp l&agrave; bền v&agrave; t&ocirc;n vinh c&aacute;i nh&igrave;n AF-1 truyền thống.</p>\r\n\r\n<p><strong><em>M&agrave;u sắc hiển thị:</em></strong> Cashmere / Trắng / Đại học Đỏ / Cashmere</p>\r\n\r\n<p><strong><em>Phong c&aacute;ch:</em></strong> DO2701-715</p>\r\n\r\n<p><strong><em>Quốc gia/V&ugrave;ng xuất xứ: </em></strong>Trung Quốc</p>\r\n', '1900000', NULL, 'air-force-1-07-lv8-shoes-8fpwGW.jpg'),
(83, 'Nike Air Force 107 PRM', 1, 1, 0, '<p><em><strong>TỎA S&Aacute;NG HƠN BẠN BIẾT PHẢI L&Agrave;M G&Igrave; VỚI.</strong></em></p>\r\n\r\n<p>Sự rạng rỡ sống trong Nike Air Force 1 07 Premium: OG b-ball th&ecirc;m một ch&uacute;t bling v&agrave;o những g&igrave; bạn biết r&otilde; nhất. N&oacute; c&oacute; da sắc n&eacute;t, kiểu d&aacute;ng dễ d&agrave;ng v&agrave; số lượng sheen ho&agrave;n hảo. Logo kim loại được n&acirc;ng l&ecirc;n tr&ecirc;n g&oacute;t ch&acirc;n v&agrave; lưỡi, một d&acirc;y x&iacute;ch dubrae v&agrave; snaps kim loại với ch&acirc;n đi k&egrave;m cho ph&eacute;p bạn phong c&aacute;ch cho bất kỳ dịp n&agrave;o. Lợi &iacute;ch Lớp phủ da mịn ở ph&iacute;a tr&ecirc;n th&ecirc;m phong c&aacute;ch di sản, độ bền v&agrave; hỗ trợ. C&aacute;c điểm nhấn kim loại th&ecirc;m lượng đ&egrave;n flash ho&agrave;n hảo v&agrave; kết hợp với c&aacute;c ch&acirc;n đi k&egrave;m v&agrave; một dubrae chuỗi. Ban đầu được thiết kế cho c&aacute;c v&ograve;ng hiệu suất, đệm Nike Air th&ecirc;m sự thoải m&aacute;i nhẹ. Cổ &aacute;o cắt thấp c&oacute; đệm tr&ocirc;ng b&oacute;ng bẩy v&agrave; cảm thấy tuyệt vời.</p>\r\n\r\n<p>Chi tiết sản phẩm Điểm chụp kim loại v&agrave; ghim trong bộ hộp đi k&egrave;m Lỗ thủng tr&ecirc;n b&agrave;n ch&acirc;n Đế giữa bọt</p>\r\n\r\n<p><strong><em>M&agrave;u sắc hiển thị:</em></strong> Trắng / Đen / Bạc kim loại / Trắng</p>\r\n\r\n<p><strong><em>Phong c&aacute;ch:</em></strong> DA8571-100</p>\r\n\r\n<p><strong><em>Quốc gia/V&ugrave;ng xuất xứ:</em></strong> Việt Nam</p>\r\n', '2300000', NULL, 'NIKE AIR FORCE 107 PRM.png'),
(84, 'Nike Air Force 1 Low Cozi', 1, 1, 0, '<p><strong><em>CẢM HỨNG CỦA RI&Ecirc;NG BẠN</em></strong></p>\r\n\r\n<p><em>Gh&eacute;p phần tr&ecirc;n của ri&ecirc;ng bạn bằng da thuộc, da lộn hoặc da tổng hợp cho c&aacute;c bộ phận kh&aacute;c nhau của gi&agrave;y. Th&ecirc;m một từ hoặc cụm từ v&agrave;o nh&atilde;n lưỡi &mdash; tối đa 30 k&yacute; tự, 10 k&yacute; tự tr&ecirc;n mỗi d&ograve;ng. T&Ugrave;Y CHỈNH GIAO DỊCH CỦA BẠN B&ecirc;n dưới đệm của một bộ phận Air-Sole, loại cao su được sử dụng cho đế ngo&agrave;i cũng c&oacute; thể được n&acirc;ng l&ecirc;n. </em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2829000', NULL, 'custom-nike-air-force-1-low-cozi-custom-shoe.jpg'),
(85, 'Nike Air Force 1 Shadow', 1, 1, 0, '<p>Những lợi &iacute;ch C&oacute; h&igrave;nh dạng mang t&iacute;nh biểu tượng giống như chiếc Air Force 1 ban đầu, đế giữa hơi ph&oacute;ng đại l&agrave;m cho chiếc gi&agrave;y được nhận biết ngay lập tức đồng thời ph&ugrave; hợp với tỷ lệ. Đế giữa bằng bọt v&agrave; đế ngo&agrave;i c&oacute; r&atilde;nh đảm bảo rằng gi&agrave;y nhẹ, linh hoạt v&agrave; thoải m&aacute;i. Với 2 k&iacute;nh che mắt, 2 tấm chắn b&ugrave;n, 2 tấm nền v&agrave; 2 thiết kế Swoosh, bạn sẽ c&oacute; được một c&aacute;i nh&igrave;n nhiều lớp với việc tăng gấp đ&ocirc;i thương hiệu.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết sản phẩm</strong></p>\r\n\r\n<p>Hỗn hợp da v&agrave; vật liệu tổng hợp Băng cao su</p>\r\n\r\n<p><em><strong>M&agrave;u sắc hiển thị:</strong></em> Trắng / V&agrave;ng Strike / Đội Cam / Đen</p>\r\n\r\n<p><em><strong>Phong c&aacute;ch:</strong></em> DO5872-100 Quốc gia /</p>\r\n\r\n<p><strong><em>Khu vực xuất xứ:</em></strong> Việt Nam</p>\r\n', '3980000', NULL, 'Nike Air Force 1 Shadow.png'),
(86, 'FORUM LOW', 1, 2, 0, '<p>D&ograve;ng adidas Forum ra mắt l&agrave; một mẫu gi&agrave;y b&oacute;ng rổ thập ni&ecirc;n 80, nhưng đ&atilde; nhanh ch&oacute;ng lấn s&acirc;n sang địa hạt thời trang. Phi&ecirc;n bản n&agrave;y b&oacute;c t&aacute;ch yếu tố đặc trưng nhất của phong c&aacute;ch ấy rồi t&ocirc;n bật l&ecirc;n bằng sắc m&agrave;u cực kỳ bắt mắt. Th&acirc;n gi&agrave;y cổ thấp l&agrave;m từ chất liệu da mịn v&agrave; b&ecirc;n dưới l&agrave; đế ngo&agrave;i bằng cao su.</p>\r\n\r\n<p><em><strong>TH&Ocirc;NG SỐ</strong></em></p>\r\n\r\n<p>C&oacute; d&acirc;y gi&agrave;y v&agrave; quai cổ ch&acirc;n</p>\r\n\r\n<p>Th&acirc;n gi&agrave;y bằng da Lớp l&oacute;t bằng vải dệt</p>\r\n\r\n<p>Đế ngo&agrave;i bằng cao su</p>\r\n\r\n<p><strong><em>M&agrave;u sản phẩm:</em></strong> Taupe Oxide / Taupe Oxide / True Orange&nbsp;</p>\r\n', '2890000', NULL, 'FORUM LOW.png'),
(87, 'FORUM CỔ THẤP ', 1, 2, 0, '<p>Kh&ocirc;ng chỉ l&agrave; một đ&ocirc;i gi&agrave;y, m&agrave; ch&iacute;nh l&agrave; một tuy&ecirc;n ng&ocirc;n. D&ograve;ng adidas Forum ra mắt năm 1984 v&agrave; cực kỳ được ưa chuộng cả tr&ecirc;n s&acirc;n b&oacute;ng rổ lẫn trong giới &acirc;m nhạc. Mẫu mới của d&ograve;ng gi&agrave;y kinh điển n&agrave;y t&aacute;i hiện tinh thần thập ni&ecirc;n 80, nguồn năng lượng b&ugrave;ng nổ tr&ecirc;n s&acirc;n đấu cũng như thiết kế quai cổ ch&acirc;n chữ X đặc trưng, kết tinh th&agrave;nh phi&ecirc;n bản cổ thấp đậm chất đường phố.</p>\r\n\r\n<p><strong>TH&Ocirc;NG SỐ</strong></p>\r\n\r\n<p>C&oacute; d&acirc;y gi&agrave;y v&agrave; quai t&ugrave;y chỉnh Th&acirc;n gi&agrave;y bằng da Đế ngo&agrave;i bằng cao su</p>\r\n\r\n<p><strong><em>M&agrave;u sản phẩm:</em></strong> Cloud White / Cloud White / Royal Blue&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2500000', NULL, 'CỔ THẤP FORUM.png'),
(88, 'Yeezy Boost 350 V2 Flax', 1, 2, 0, '<p><em>Với cấu tr&uacute;c Primeknit th&ocirc;ng thường với sọc lưới ở mặt b&ecirc;n, &quot;Flax&quot; được sử dụng trong một t&ocirc;ng m&agrave;u be kem rất linh hoạt. </em></p>\r\n\r\n<p><em>Tab g&oacute;t ch&acirc;n y&ecirc;u th&iacute;ch đ&atilde; được loại bỏ cho bản ph&aacute;t h&agrave;nh n&agrave;y để duy tr&igrave; vẻ thẩm mỹ giống như những mẫu kh&aacute;c , v&agrave; ở b&ecirc;n dưới, bạn sẽ t&igrave;m thấy phần đế giữa c&oacute; g&acirc;n nổi vẫn giữ nguy&ecirc;n kể từ lần ra mắt của thiết kế trước v&agrave;o năm 2016. </em></p>\r\n\r\n<p><em>Trong khi Ye c&oacute; thể chỉ để lại phần đế giữa được sơn m&agrave;u be, anh ấy đ&atilde; &aacute;p dụng một phần m&agrave;u x&aacute;m dọc theo hai b&ecirc;n để đ&ocirc;i gi&agrave;y tr&ocirc;ng ấn tượng hơn. Th&ecirc;m v&agrave;o đ&oacute;, bộ phận adidas Boost c&oacute; chiều d&agrave;i ph&ugrave; hợp nằm b&ecirc;n trong để tạo sự thoải m&aacute;i v&agrave; &ecirc;m.</em></p>\r\n', '3300000', NULL, 'adidas-yeezy-350-v2-flax-nam-nu-1-1.jpg'),
(89, 'YEEZY BOOST 700 INERTIA', 1, 2, 0, '<p>Thu hẹp khoảng c&aacute;ch giữa hai lần ph&aacute;t h&agrave;nh, &ldquo;Inertia&rdquo; sẽ trở lại tr&ecirc;n d&ograve;ng sản phẩm adidas Yeezy Boost 700 v2 cho m&ugrave;a thu năm nay để l&agrave;m thỏa l&ograve;ng người h&acirc;m mộ.</p>\r\n\r\n<p>Phi&ecirc;n bản Inertia thứ 2 với chất liệu vỏ lưới giống với phối m&agrave;u Static của Yeezy Boost 350 v2. B&ecirc;n cạnh những chi tiết m&agrave;u tương đồng tr&ecirc;n mudguard, đế v&agrave; mũi gi&agrave;y th&igrave; sản phẩm chỉ thay đổi ở lớp vỏ da v&agrave; vải lưới sang chất vải engineered mesh t&acirc;n tiến.</p>\r\n\r\n<p>Sự sắp xếp c&aacute;c layer tr&ecirc;n upper mang đến vẻ ngo&agrave;i mới lạ hơn với sự xuất hiện của gam m&agrave;u x&aacute;m nhạt chiếm hầu hết diện t&iacute;ch. Điểm nhấn m&agrave;u cam ở midsole kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c với phi&ecirc;n bản trước trong khi toecap v&agrave; lưỡi g&agrave; vẫn kh&aacute;c biệt trong t&ocirc;ng m&agrave;u xanh s&aacute;ng hơn.</p>\r\n', '2400000', NULL, 'giay-adidas-Yeezy-Boost-700.jpg'),
(90, 'Balenciaga Triple Blue RedS ', 1, 4, 0, '<p>Đ&acirc;y l&agrave; thương hiệu thời trang l&acirc;u đời nổi tiếng, cao cấp nhất nh&igrave; thế giới được th&agrave;nh lập từ năm 1919. Tiếp nối sự th&agrave;nh c&ocirc;ng, thương hiệu tiếp tục tung ra Triple S &ndash; d&ograve;ng gi&agrave;y đa sắc m&agrave;u, ph&aacute; bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải đi&ecirc;n đảo Đ&acirc;y l&agrave; mẫu gi&agrave;y cũng được nhiều người nghệ sĩ thế giới lựa chọn.</p>\r\n\r\n<p>Tại Việt Nam, gi&agrave;y Triple S được rất nhiều nghệ sĩ nổi tiếng y&ecirc;u th&iacute;ch. Thiết kế đột ph&aacute;. Một đ&ocirc;i gi&agrave;y ra đời đ&atilde; ph&aacute; vỡ những ti&ecirc;u chuẩn về thời trang hiện nay.</p>\r\n\r\n<p>Phần đế cao, uốn lượn hơn hẳn để bạn ăn gian th&ecirc;m v&agrave;i centimet Pha trộn những gam m&agrave;u vintage v&agrave; nhiều chất liệu vải kh&aacute;c nhau. Tr&ecirc;n th&acirc;n, g&oacute;t hay đế gi&agrave;y cũng đều được th&ecirc;u v&agrave; khắc t&ecirc;n thương hiệu, tạo sự đẳng cấp.</p>\r\n', '1505000', NULL, 'Triple-S-Trainer-Blue-Red-2018.jpg'),
(91, 'Balenciaga Triple  S White', 1, 4, 0, '<p>Đ&acirc;y l&agrave; thương hiệu thời trang l&acirc;u đời nổi tiếng, cao cấp nhất nh&igrave; thế giới được th&agrave;nh lập từ năm 1919. Tiếp nối sự th&agrave;nh c&ocirc;ng, thương hiệu tiếp tục tung ra Triple S &ndash; d&ograve;ng gi&agrave;y đa sắc m&agrave;u, ph&aacute; bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải đi&ecirc;n đảo Đ&acirc;y l&agrave; mẫu gi&agrave;y cũng được nhiều người nghệ sĩ thế giới lựa chọn.</p>\r\n\r\n<p>Tại Việt Nam, gi&agrave;y Triple S được rất nhiều nghệ sĩ nổi tiếng y&ecirc;u th&iacute;ch. Thiết kế đột ph&aacute;. Một đ&ocirc;i gi&agrave;y ra đời đ&atilde; ph&aacute; vỡ những ti&ecirc;u chuẩn về thời trang hiện nay.</p>\r\n\r\n<p>Phần đế cao, uốn lượn hơn hẳn để bạn ăn gian th&ecirc;m v&agrave;i centimet Pha trộn những gam m&agrave;u vintage v&agrave; nhiều chất liệu vải kh&aacute;c nhau. Tr&ecirc;n th&acirc;n, g&oacute;t hay đế gi&agrave;y cũng đều được th&ecirc;u v&agrave; khắc t&ecirc;n thương hiệu, tạo sự đẳng cấp.</p>\r\n', '1475000', NULL, 'white balen.png'),
(92, 'Balenciaga Triple S Black', 1, 4, 0, '<p>Đ&acirc;y l&agrave; thương hiệu thời trang l&acirc;u đời nổi tiếng, cao cấp nhất nh&igrave; thế giới được th&agrave;nh lập từ năm 1919. Tiếp nối sự th&agrave;nh c&ocirc;ng, thương hiệu tiếp tục tung ra Triple S &ndash; d&ograve;ng gi&agrave;y đa sắc m&agrave;u, ph&aacute; bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải đi&ecirc;n đảo Đ&acirc;y l&agrave; mẫu gi&agrave;y cũng được nhiều người nghệ sĩ thế giới lựa chọn.</p>\r\n\r\n<p>Tại Việt Nam, gi&agrave;y Triple S được rất nhiều nghệ sĩ nổi tiếng y&ecirc;u th&iacute;ch. Thiết kế đột ph&aacute;. Một đ&ocirc;i gi&agrave;y ra đời đ&atilde; ph&aacute; vỡ những ti&ecirc;u chuẩn về thời trang hiện nay.</p>\r\n\r\n<p>Phần đế cao, uốn lượn hơn hẳn để bạn ăn gian th&ecirc;m v&agrave;i centimet Pha trộn những gam m&agrave;u vintage v&agrave; nhiều chất liệu vải kh&aacute;c nhau. Tr&ecirc;n th&acirc;n, g&oacute;t hay đế gi&agrave;y cũng đều được th&ecirc;u v&agrave; khắc t&ecirc;n thương hiệu, tạo sự đẳng cấp.</p>\r\n', '1495000', NULL, 'Triple-S-Trainer-Black-Red-2018.jpg'),
(93, 'Balenciaga Triple S Yellow ', 1, 4, 0, '<p>Đ&acirc;y l&agrave; thương hiệu thời trang l&acirc;u đời nổi tiếng, cao cấp nhất nh&igrave; thế giới được th&agrave;nh lập từ năm 1919. Tiếp nối sự th&agrave;nh c&ocirc;ng, thương hiệu tiếp tục tung ra Triple S &ndash; d&ograve;ng gi&agrave;y đa sắc m&agrave;u, ph&aacute; bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải đi&ecirc;n đảo Đ&acirc;y l&agrave; mẫu gi&agrave;y cũng được nhiều người nghệ sĩ thế giới lựa chọn.</p>\r\n\r\n<p>Tại Việt Nam, gi&agrave;y Triple S được rất nhiều nghệ sĩ nổi tiếng y&ecirc;u th&iacute;ch. Thiết kế đột ph&aacute;. Một đ&ocirc;i gi&agrave;y ra đời đ&atilde; ph&aacute; vỡ những ti&ecirc;u chuẩn về thời trang hiện nay.</p>\r\n\r\n<p>Phần đế cao, uốn lượn hơn hẳn để bạn ăn gian th&ecirc;m v&agrave;i centimet Pha trộn những gam m&agrave;u vintage v&agrave; nhiều chất liệu vải kh&aacute;c nhau. Tr&ecirc;n th&acirc;n, g&oacute;t hay đế gi&agrave;y cũng đều được th&ecirc;u v&agrave; khắc t&ecirc;n thương hiệu, tạo sự đẳng cấp.</p>\r\n', '1340000', NULL, 'IMG_1030-1.jpg'),
(94, 'GUCCI RHYTON ', 1, 7, 0, '<p><em>Đơn giản nhưng đẳng cấp với gam m&agrave;u trắng thời thượng, dể d&agrave;ng kết hợp c&ugrave;ng nhiều trang phục. Điểm nổi bật của đ&ocirc;i gi&agrave;y chunky Gucci Rhyton nằm ở phần thuộc da &ocirc;m trọn gi&agrave;y, tạo n&ecirc;n sự sang trọng vốn c&oacute; của bất cứ sản phẩm n&agrave;o từ Gucci, b&ecirc;n canh lưỡi g&agrave; Gucci Rhyton cũng đặc biệt ngắn hơn hẳn những đ&ocirc;i chunky sneaker kh&aacute;c, gi&uacute;p bạn khoe cổ ch&acirc;n hoặc lớp vớ ấn tượng, vốn l&agrave; đặc trưng của người chơi gi&agrave;y sneaker v&agrave; cả d&ograve;ng vớ Gucci.</em></p>\r\n', '19000000', NULL, 'IMG_6178.jpg'),
(96, 'NIKE AIR FORCE 1 LOW COZI', 3, 1, 0, '<p><strong><em>CẢM HỨNG CỦA RI&Ecirc;NG BẠN</em></strong></p>\r\n\r\n<p><em>Gh&eacute;p phần tr&ecirc;n của ri&ecirc;ng bạn bằng da thuộc, da lộn hoặc da tổng hợp cho c&aacute;c bộ phận kh&aacute;c nhau của gi&agrave;y. Th&ecirc;m một từ hoặc cụm từ v&agrave;o nh&atilde;n lưỡi &mdash; tối đa 30 k&yacute; tự, 10 k&yacute; tự tr&ecirc;n mỗi d&ograve;ng. T&Ugrave;Y CHỈNH GIAO DỊCH CỦA BẠN B&ecirc;n dưới đệm của một bộ phận Air-Sole, loại cao su được sử dụng cho đế ngo&agrave;i cũng c&oacute; thể được n&acirc;ng l&ecirc;n.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2829000', NULL, 'custom-nike-air-force-1-low-cozi-custom-shoe.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(82, 8),
(83, 8),
(84, 8),
(85, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaAnh`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `MaAnh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `anhsp_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Các ràng buộc cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
