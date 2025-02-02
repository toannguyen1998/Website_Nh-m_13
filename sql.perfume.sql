USE [master]
GO
/****** Object:  Database [WebNuocHoa]    Script Date: 05/28/2019 21:06:50 ******/
CREATE DATABASE [WebNuocHoa] ON  PRIMARY 
( NAME = N'WebNuocHoa', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.NGANSQL\MSSQL\DATA\WebNuocHoa.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebNuocHoa_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.NGANSQL\MSSQL\DATA\WebNuocHoa_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebNuocHoa] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebNuocHoa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebNuocHoa] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WebNuocHoa] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WebNuocHoa] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WebNuocHoa] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WebNuocHoa] SET ARITHABORT OFF
GO
ALTER DATABASE [WebNuocHoa] SET AUTO_CLOSE ON
GO
ALTER DATABASE [WebNuocHoa] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WebNuocHoa] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WebNuocHoa] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WebNuocHoa] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WebNuocHoa] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WebNuocHoa] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WebNuocHoa] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WebNuocHoa] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WebNuocHoa] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WebNuocHoa] SET  ENABLE_BROKER
GO
ALTER DATABASE [WebNuocHoa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WebNuocHoa] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WebNuocHoa] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WebNuocHoa] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WebNuocHoa] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WebNuocHoa] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WebNuocHoa] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WebNuocHoa] SET  READ_WRITE
GO
ALTER DATABASE [WebNuocHoa] SET RECOVERY SIMPLE
GO
ALTER DATABASE [WebNuocHoa] SET  MULTI_USER
GO
ALTER DATABASE [WebNuocHoa] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WebNuocHoa] SET DB_CHAINING OFF
GO
USE [WebNuocHoa]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 05/28/2019 21:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[GT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (4, N'Dao Ngoc Anh', N'Nữ', N'Hà Nội', N'012478954')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (5, N'Nguyễn Đức Toàn', N'Nam', N'Hải Phòng', N'012478954')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (6, N'Chu Việt Hà', N'Nam', N'Hà Nội', N'012478954')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (7, N'Nguyễn Tiến Mạnh', N'Nam', N'Cần Thơ', N'012478954')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (8, N'Trần Thị Hà', N'Nữ', N'Cầu Giấy', N'012478954')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (9, N'Lê Thị Ngọc', N'Nữ', N'Đống Đa', N'012457814')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (10, N'Nguyễn Văn Nam', N'Nam', N'Hà Đông', N'012457814')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (11, N'Trần Việt Cường', N'Nam', N'Thanh Xuân', N'012457814')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (12, N'Đào Bá Lộc', N'Nam', N'Cầu Giấy', N'012457814')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (13, N'Ánh', N'Nữ', N'Hà Nội', N'0124554545')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GT], [DiaChi], [SDT]) VALUES (14, N'Nguyễn Khánh Linh', N'Nữ', N'Hà Nội', N'0123526324')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
/****** Object:  Table [dbo].[NhanHieu]    Script Date: 05/28/2019 21:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHieu](
	[MaNH] [int] IDENTITY(1,1) NOT NULL,
	[TenNH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhanHieu] ON
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (1, N'Chanel')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (2, N'Gucci')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (3, N'Dior')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (4, N'Calvin Klein')
INSERT [dbo].[NhanHieu] ([MaNH], [TenNH]) VALUES (5, N'Burberrry')
SET IDENTITY_INSERT [dbo].[NhanHieu] OFF
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 05/28/2019 21:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (1, N'Nước hoa nam')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (2, N'Nước hoa nữ')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
/****** Object:  Table [dbo].[KhachHang]    Script Date: 05/28/2019 21:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Taikhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[GT] [int] NULL,
	[NS] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (1, N'Ðào Ngọc Ánh', N'anh11', N'ngoanh', N'anh12@gmail.com', N'Hà Nội', N'0988765245', 1, CAST(0x8B210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (2, N'Ngân Nguyễn', N'ngan23', N'nganha', N'congchua@gmail.com', N'Hà Nội', N'0988467298', 1, CAST(0xA6210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (3, N'Toàn Toàn', N'sieunhan', N'12345', N'sieunhan@gmail.com', N'Hà Nội', N'0988325664', 0, CAST(0x50210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (4, N'Chu Hà', N'chuoke', N'chuhu', N'chuchu@gmail.com', N'Hà Nội', N'0988764325', 0, CAST(0xCA210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (5, N'Ly Nguyen', N'lykute', N'lyly', N'ly@gmail.com', N'Hà Nội', N'0988765267', 1, CAST(0xAC210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (6, N'Phi Linh', N'123', N'456', N'anh1245@gmail.com', N'Hà Nội', N'0988765245', 1, CAST(0x92210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (7, N'Hoài Nam', N'namanh11', N'namanh', N'namanh12@gmail.com', N'Hà Nội', N'0988765243', 0, CAST(0xA6210B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Taikhoan], [MatKhau], [Email], [DiaChi], [SDT], [GT], [NS]) VALUES (8, N'Phí Hoài Anh', N'hoaianh', N'ngoanh43', N'hoaianh12@gmail.com', N'Hà Nội', N'0988088096', 1, CAST(0x61220B00 AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 05/28/2019 21:06:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[username] [varchar](50) NOT NULL,
	[matkhau] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Taikhoan] ([username], [matkhau]) VALUES (N'admin1', N'12345')
/****** Object:  StoredProcedure [dbo].[Account_Login]    Script Date: 05/28/2019 21:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Account_Login]
@username varchar(50),
@matkhau varchar(50)
as
begin
declare @count int 
declare @res bit
select @count= COUNT(*) from Taikhoan where username=@username and matkhau=@matkhau
if (@count>0)
set @res=1
else 
set @res=0;

select @res
end
GO
/****** Object:  Table [dbo].[SP]    Script Date: 05/28/2019 21:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
	[Khoiluong] [int] NULL,
	[Anh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[SolgTon] [int] NULL,
	[MaLSP] [int] NULL,
	[MaNH] [int] NULL,
	[Moi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SP] ON
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (1, N'Burberrry for her', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp1.jpg', N'ný?c hoa cho n?', 5, 2, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (2, N'Burberrry black', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp2.jpg', N'ný?c hoa cho nam', 5, 1, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (3, N'Burberrry vàng', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp3.jpg', N'ný?c hoa cho nam', 5, 1, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (4, N'Burberrry mis ', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp4.jpg', N'ný?c hoa cho nam', 5, 1, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (5, N'Burberrry touch for women', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp5.jpg', N'ný?c hoa cho n?', 5, 2, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (6, N'Burberrry pink', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp6.jpg', N'ný?c hoa cho n?', 5, 2, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (7, N'Burberrry weekend', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp7.jpg', N'ný?c hoa cho n?', 5, 2, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (8, N'Burberrry brit', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp8.jpg', N'ný?c hoa cho n?', 5, 2, 5, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (9, N'Burberrry touch for him', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp9.jpg', N'ný?c hoa cho n?', 5, 2, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (10, N'Burberrry sooc', CAST(2690000 AS Decimal(18, 0)), 15, N'burberry_sp10.jpg', N'ný?c hoa cho nam', 5, 1, 5, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (11, N'Chanel for you', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp1.jpg', N'ný?c hoa cho n?', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (12, N'Chanel pink', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp2.jpg', N'ný?c hoa cho n?', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (13, N'Chanel coco', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp3.jpg', N'ný?c hoa cho n?', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (14, N'Chanel bleu ', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp4.jpg', N'ný?c hoa cho n?', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (15, N'Chanel N19', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp5.jpg', N'ný?c hoa cho n?', 5, 2, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (16, N'Chanel cisal', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp6.jpg', N'ný?c hoa cho nam', 5, 1, 4, 1)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (17, N'Chanel beluw', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp7.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (18, N'Chanel with me', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp8.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (19, N'Chanel selw', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp9.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (20, N'Chanel bols', CAST(3500000 AS Decimal(18, 0)), 15, N'chanel_sp10.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (21, N'CK one', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp1.jpg', N'ný?c hoa cho n?', 5, 2, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (22, N'CK be', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp2.jpg', N'ný?c hoa cho n?', 5, 2, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (23, N'CK for men', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp3.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (24, N'CK euphoria', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp4.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (25, N'CK sheer', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp5.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (26, N'CK red', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp6.jpg', N'ný?c hoa cho n?', 5, 2, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (27, N'CK deep', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp7.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (28, N'CK summer', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp8.jpg', N'ný?c hoa cho nam', 5, 1, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (29, N'CK escape', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp9.jpg', N'ný?c hoa cho n?', 5, 2, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (30, N'CK tee', CAST(2450000 AS Decimal(18, 0)), 15, N'burberry_sp10.jpg', N'ný?c hoa cho n?', 5, 2, 4, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (31, N'Dior sauvage', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp1.jpg', N'ný?c hoa cho n?', 5, 2, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (32, N'Dior joy', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp2.jpg', N'ný?c hoa cho nam', 5, 1, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (33, N'Dior jadore', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp3.jpg', N'ný?c hoa cho n?', 5, 2, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (34, N'Dior hypnotic', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp4.jpg', N'ný?c hoa cho n?', 5, 2, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (35, N'Dior M', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp5.jpg', N'ný?c hoa cho n?', 5, 2, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (36, N'Dior black', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp6.jpg', N'ný?c hoa cho nam', 5, 1, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (37, N'Dior sensi', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp7.jpg', N'ný?c hoa cho n?', 5, 2, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (38, N'Dior christian', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp8.jpg', N'ný?c hoa cho nam', 5, 1, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (39, N'Dior homme', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp9.jpg', N'ný?c hoa cho nam', 5, 1, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (40, N'Dior Addict', CAST(1450000 AS Decimal(18, 0)), 15, N'chanel_sp10.jpg', N'ný?c hoa cho nam', 5, 1, 3, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (41, N'Gucci guilty', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp1.jpg', N'ný?c hoa cho nam', 5, 1, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (42, N'Gucci flora', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp2.jpg', N'ný?c hoa cho n?', 5, 2, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (43, N'Gucci guilty pink', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp3.jpg', N'ný?c hoa cho n?', 5, 2, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (44, N'Gucci by gucci', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp4.jpg', N'ný?c hoa cho nam', 5, 1, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (45, N'Gucci flora ye', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp5.jpg', N'ný?c hoa cho n?', 5, 2, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (46, N'Gucci bamboo', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp6.jpg', N'ný?c hoa cho n?', 5, 2, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (47, N'Gucci floraflow', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp7.jpg', N'ný?c hoa cho nam', 5, 1, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (48, N'Gucci pour homme', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp8.jpg', N'ný?c hoa cho n?', 5, 2, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (49, N'Gucci romantic', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp9.jpg', N'ný?c hoa cho nam', 5, 1, 2, NULL)
INSERT [dbo].[SP] ([MaSP], [TenSP], [Gia], [Khoiluong], [Anh], [MoTa], [SolgTon], [MaLSP], [MaNH], [Moi]) VALUES (50, N'Gucci intenciout', CAST(2300000 AS Decimal(18, 0)), 15, N'chanel_sp10.jpg', N'ný?c hoa cho nam', 5, 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[SP] OFF
/****** Object:  Table [dbo].[DonHang]    Script Date: 05/28/2019 21:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhtrangGH] [int] NULL,
	[ngaydat] [date] NULL,
	[ngaygiao] [date] NULL,
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (1, 1, 1, CAST(0x463F0B00 AS Date), CAST(0x623F0B00 AS Date), 1, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (2, 1, 1, CAST(0x463F0B00 AS Date), CAST(0xBE3F0B00 AS Date), 2, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (3, 1, 1, CAST(0x273F0B00 AS Date), CAST(0x813F0B00 AS Date), 3, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (4, 1, 1, CAST(0x463F0B00 AS Date), CAST(0x623F0B00 AS Date), 4, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (5, 1, 1, CAST(0xDD3F0B00 AS Date), CAST(0x1B400B00 AS Date), 5, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (6, 0, 0, CAST(0xA83F0B00 AS Date), CAST(0xAB3F0B00 AS Date), 6, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (7, 0, 0, CAST(0xA63F0B00 AS Date), CAST(0xA93F0B00 AS Date), 7, NULL)
INSERT [dbo].[DonHang] ([MaDH], [DaThanhToan], [TinhtrangGH], [ngaydat], [ngaygiao], [MaKH], [MaNV]) VALUES (8, 0, 0, CAST(0xA73F0B00 AS Date), CAST(0xA93F0B00 AS Date), 8, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
/****** Object:  Table [dbo].[CTDH]    Script Date: 05/28/2019 21:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDH](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NULL,
	[MaSP] [int] NULL,
	[soluong] [int] NULL,
	[thanhtien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CTDH] ON
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (1, 1, 1, 2, CAST(5380000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (2, 1, 3, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (3, 2, 2, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (4, 3, 4, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (5, 4, 5, 2, CAST(5380000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (6, 5, 1, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (7, 6, 2, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (8, 7, 1, 1, CAST(2690000 AS Decimal(18, 0)))
INSERT [dbo].[CTDH] ([MaCTDH], [MaDH], [MaSP], [soluong], [thanhtien]) VALUES (9, 8, 4, 1, CAST(2690000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CTDH] OFF
/****** Object:  ForeignKey [FK_SP_LoaiSP]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[SP]  WITH CHECK ADD  CONSTRAINT [FK_SP_LoaiSP] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSP] ([MaLSP])
GO
ALTER TABLE [dbo].[SP] CHECK CONSTRAINT [FK_SP_LoaiSP]
GO
/****** Object:  ForeignKey [FK_SP_NhanHieu]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[SP]  WITH CHECK ADD  CONSTRAINT [FK_SP_NhanHieu] FOREIGN KEY([MaNH])
REFERENCES [dbo].[NhanHieu] ([MaNH])
GO
ALTER TABLE [dbo].[SP] CHECK CONSTRAINT [FK_SP_NhanHieu]
GO
/****** Object:  ForeignKey [FK_DonHang_KhachHang]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
/****** Object:  ForeignKey [FK_DonHang_NhanVien]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_CTDH_DonHang]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_DonHang]
GO
/****** Object:  ForeignKey [FK_CTDH_SP]    Script Date: 05/28/2019 21:07:07 ******/
ALTER TABLE [dbo].[CTDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SP] ([MaSP])
GO
ALTER TABLE [dbo].[CTDH] CHECK CONSTRAINT [FK_CTDH_SP]
GO
