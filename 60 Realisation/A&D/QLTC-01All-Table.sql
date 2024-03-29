USE [master]
GO
/****** Object:  Database [qltc]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE DATABASE [qltc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qltc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\qltc.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qltc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\qltc_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qltc] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qltc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qltc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qltc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qltc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qltc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qltc] SET ARITHABORT OFF 
GO
ALTER DATABASE [qltc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qltc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qltc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qltc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qltc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qltc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qltc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qltc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qltc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qltc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qltc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qltc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qltc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qltc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qltc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qltc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qltc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qltc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qltc] SET  MULTI_USER 
GO
ALTER DATABASE [qltc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qltc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qltc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qltc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qltc] SET DELAYED_DURABILITY = DISABLED 
GO
USE [qltc]
GO
/****** Object:  Schema [qltc]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE SCHEMA [qltc]
GO
/****** Object:  Table [qltc].[bao_cao]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[bao_cao](
	[MaBC] [int] IDENTITY(1001,1) NOT NULL,
	[Thang] [int] NULL,
	[TongDoanhThu] [real] NULL,
 CONSTRAINT [PK_bao_cao_MaBC] PRIMARY KEY CLUSTERED 
(
	[MaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[bkct_dat_tiec2019]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[bkct_dat_tiec2019](
	[MaCT_DatTiec] [int] IDENTITY(1,1) NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[MaMon] [int] NULL,
	[MaDV] [int] NULL,
	[BKTime] [datetime2](0) NULL,
	[DeleteTime] [datetime2](0) NULL,
 CONSTRAINT [PK_bkct_dat_tiec2019_MaCT_DatTiec] PRIMARY KEY CLUSTERED 
(
	[MaCT_DatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[bkct_hoa_don2019]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[bkct_hoa_don2019](
	[MaCT_HD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[TongTienDV] [real] NULL,
	[TongTienHoaDon] [real] NULL,
	[TienDatCoc] [real] NULL,
	[ConLai] [real] NULL,
	[BKTime] [datetime2](0) NULL,
	[DeleteTime] [datetime2](0) NULL,
 CONSTRAINT [PK_bkct_hoa_don2019_MaCT_HD] PRIMARY KEY CLUSTERED 
(
	[MaCT_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[bkdstiec2019]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[bkdstiec2019](
	[MaDSTiec] [int] IDENTITY(1,1) NOT NULL,
	[MaGD] [int] NOT NULL,
	[MaSanh] [int] NOT NULL,
	[Ngay] [nvarchar](10) NULL,
	[Gio] [nvarchar](5) NULL,
	[SoLuongBan] [int] NULL,
	[BKTime] [datetime2](0) NULL,
	[DeleteTime] [datetime2](0) NULL,
 CONSTRAINT [PK_bkdstiec2019_MaDSTiec] PRIMARY KEY CLUSTERED 
(
	[MaDSTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[bkdt2019]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[bkdt2019](
	[MaDatTiec] [int] IDENTITY(1,1) NOT NULL,
	[MaDSTiec] [int] NOT NULL,
	[MaGD] [int] NOT NULL,
	[MaCa] [int] NOT NULL,
	[TienDatCoc] [real] NULL,
	[SoBanDuTru] [int] NULL,
	[TrangThai] [binary](1) NULL,
	[TinhTrang] [nvarchar](15) NULL,
	[BKTime] [datetime2](0) NULL,
	[DeleteTime] [datetime2](0) NULL,
 CONSTRAINT [PK_bkdt2019_MaDatTiec] PRIMARY KEY CLUSTERED 
(
	[MaDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[bkhoadon2019]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[bkhoadon2019](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[TongTienBan] [real] NULL,
	[NgayThanhToan] [nvarchar](10) NULL,
	[TrangThai] [binary](1) NULL,
	[BKTime] [datetime2](0) NULL,
	[DeleteTime] [datetime2](0) NULL,
 CONSTRAINT [PK_bkhoadon2019_MaHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[ca]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[ca](
	[MaCa] [int] IDENTITY(3,1) NOT NULL,
	[TenCa] [nvarchar](4) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_ca_MaCa] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[ct_bao_cao]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[ct_bao_cao](
	[MaCT_BC] [int] IDENTITY(1001,1) NOT NULL,
	[MaBC] [int] NOT NULL,
	[Ngay] [nvarchar](10) NULL,
	[SoLuongTiec] [int] NULL,
	[DoanhThu] [real] NULL,
	[TiLe] [real] NULL,
 CONSTRAINT [PK_ct_bao_cao_MaCT_BC] PRIMARY KEY CLUSTERED 
(
	[MaCT_BC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[ct_dat_tiec]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[ct_dat_tiec](
	[MaCT_DatTiec] [int] IDENTITY(1010,1) NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[MaMon] [int] NULL,
	[MaDV] [int] NULL,
 CONSTRAINT [PK_ct_dat_tiec_MaCT_DatTiec] PRIMARY KEY CLUSTERED 
(
	[MaCT_DatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[ct_hoa_don]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[ct_hoa_don](
	[MaCT_HD] [int] IDENTITY(1003,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[TongTienDV] [real] NULL,
	[TongTienHoaDon] [real] NULL,
	[TienDatCoc] [real] NULL,
	[ConLai] [real] NULL,
 CONSTRAINT [PK_ct_hoa_don_MaCT_HD] PRIMARY KEY CLUSTERED 
(
	[MaCT_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[dat_tiec]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[dat_tiec](
	[MaDatTiec] [int] IDENTITY(1003,1) NOT NULL,
	[MaDSTiec] [int] NOT NULL,
	[MaGD] [int] NOT NULL,
	[MaCa] [int] NOT NULL,
	[TienDatCoc] [real] NULL,
	[SoBanDuTru] [int] NULL,
	[TrangThai] [bit] NULL,
	[TinhTrang] [nvarchar](15) NULL,
 CONSTRAINT [PK_dat_tiec_MaDatTiec] PRIMARY KEY CLUSTERED 
(
	[MaDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[dich_vu]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[dich_vu](
	[MaDV] [int] IDENTITY(21,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [real] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_dich_vu_MaDV] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[ds_sanh]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[ds_sanh](
	[MaSanh] [int] IDENTITY(6,1) NOT NULL,
	[TenSanh] [nvarchar](50) NULL,
	[LoaiSanh] [nchar](1) NULL,
	[SoLuongBanToiDa] [int] NULL,
	[DonGiaBanToiThieu] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [bit]NULL,
 CONSTRAINT [PK_ds_sanh_MaSanh] PRIMARY KEY CLUSTERED 
(
	[MaSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[ds_tiec_cuoi]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[ds_tiec_cuoi](
	[MaDSTiec] [int] IDENTITY(1003,1) NOT NULL,
	[MaGD] [int] NOT NULL,
	[MaSanh] [int] NOT NULL,
	[Ngay] [nvarchar](10) NULL,
	[Gio] [nvarchar](5) NULL,
	[SoLuongBan] [int] NULL,
 CONSTRAINT [PK_ds_tiec_cuoi_MaDSTiec] PRIMARY KEY CLUSTERED 
(
	[MaDSTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[gia_dinh]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[gia_dinh](
	[MaGD] [int] IDENTITY(1002,1) NOT NULL,
	[TenCoDau] [nvarchar](50) NULL,
	[TenChuRe] [nvarchar](50) NULL,
	[SDT] [nvarchar](11) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_gia_dinh_MaGD] PRIMARY KEY CLUSTERED 
(
	[MaGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[hoa_don]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[hoa_don](
	[MaHD] [int] IDENTITY(1003,1) NOT NULL,
	[MaDatTiec] [int] NOT NULL,
	[TongTienBan] [real] NULL,
	[NgayThanhToan] [nvarchar](10) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_hoa_don_MaHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[mon_an]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [qltc].[mon_an](
	[MaMon] [int] IDENTITY(101,1) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[Gia] [real] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_mon_an_MaMon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [qltc].[tai_khoan]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[tai_khoan](
	[SDT] [nvarchar](11) NOT NULL,
	[Password] [nvarchar](30) NULL,
 CONSTRAINT [PK_tai_khoan_SDT] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [qltc].[tham_so]    Script Date: 4/18/2019 9:21:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [qltc].[tham_so](
	[MaThamSo] [int] IDENTITY(10,1) NOT NULL,
	[TenThamSo] [nvarchar](50) NULL,
	[GiaTri] [real] NULL,
 CONSTRAINT [PK_tham_so_MaThamSo] PRIMARY KEY CLUSTERED 
(
	[MaThamSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [fkCTBC_BC_MaBC_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTBC_BC_MaBC_idx] ON [qltc].[ct_bao_cao]
(
	[MaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkCTDT_DT_MaDatTiec_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTDT_DT_MaDatTiec_idx] ON [qltc].[ct_dat_tiec]
(
	[MaDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkCTDT_DV_MaDV_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTDT_DV_MaDV_idx] ON [qltc].[ct_dat_tiec]
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkCTDT_Mon_MaMon_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTDT_Mon_MaMon_idx] ON [qltc].[ct_dat_tiec]
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkCTHD_CTDT_MaDatTiec_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTHD_CTDT_MaDatTiec_idx] ON [qltc].[ct_hoa_don]
(
	[MaDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkCTHD_HD_MaHD_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkCTHD_HD_MaHD_idx] ON [qltc].[ct_hoa_don]
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkDT_CA_MaCa_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkDT_CA_MaCa_idx] ON [qltc].[dat_tiec]
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkDT_DST_MaDSTiec_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkDT_DST_MaDSTiec_idx] ON [qltc].[dat_tiec]
(
	[MaDSTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkDT_GD_MaGD_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkDT_GD_MaGD_idx] ON [qltc].[dat_tiec]
(
	[MaGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkDSTC_DSSanh_MaSanh_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkDSTC_DSSanh_MaSanh_idx] ON [qltc].[ds_tiec_cuoi]
(
	[MaSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkDSTC_GD_MaGD_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkDSTC_GD_MaGD_idx] ON [qltc].[ds_tiec_cuoi]
(
	[MaGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [fkGD_TK_MaGD_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkGD_TK_MaGD_idx] ON [qltc].[gia_dinh]
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkHD_CTDT_MaCTDatTiec_idx]    Script Date: 4/18/2019 9:21:00 PM ******/
CREATE NONCLUSTERED INDEX [fkHD_CTDT_MaCTDatTiec_idx] ON [qltc].[hoa_don]
(
	[MaDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [qltc].[bao_cao] ADD  DEFAULT (NULL) FOR [Thang]
GO
ALTER TABLE [qltc].[bao_cao] ADD  DEFAULT (NULL) FOR [TongDoanhThu]
GO
ALTER TABLE [qltc].[bkct_dat_tiec2019] ADD  DEFAULT (NULL) FOR [MaMon]
GO
ALTER TABLE [qltc].[bkct_dat_tiec2019] ADD  DEFAULT (NULL) FOR [MaDV]
GO
ALTER TABLE [qltc].[bkct_dat_tiec2019] ADD  DEFAULT (NULL) FOR [BKTime]
GO
ALTER TABLE [qltc].[bkct_dat_tiec2019] ADD  DEFAULT (NULL) FOR [DeleteTime]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [TongTienDV]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [TongTienHoaDon]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [TienDatCoc]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [ConLai]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [BKTime]
GO
ALTER TABLE [qltc].[bkct_hoa_don2019] ADD  DEFAULT (NULL) FOR [DeleteTime]
GO
ALTER TABLE [qltc].[bkdstiec2019] ADD  DEFAULT (NULL) FOR [Ngay]
GO
ALTER TABLE [qltc].[bkdstiec2019] ADD  DEFAULT (NULL) FOR [Gio]
GO
ALTER TABLE [qltc].[bkdstiec2019] ADD  DEFAULT (NULL) FOR [SoLuongBan]
GO
ALTER TABLE [qltc].[bkdstiec2019] ADD  DEFAULT (NULL) FOR [BKTime]
GO
ALTER TABLE [qltc].[bkdstiec2019] ADD  DEFAULT (NULL) FOR [DeleteTime]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [TienDatCoc]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [SoBanDuTru]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [TinhTrang]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [BKTime]
GO
ALTER TABLE [qltc].[bkdt2019] ADD  DEFAULT (NULL) FOR [DeleteTime]
GO
ALTER TABLE [qltc].[bkhoadon2019] ADD  DEFAULT (NULL) FOR [TongTienBan]
GO
ALTER TABLE [qltc].[bkhoadon2019] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [qltc].[bkhoadon2019] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[bkhoadon2019] ADD  DEFAULT (NULL) FOR [BKTime]
GO
ALTER TABLE [qltc].[bkhoadon2019] ADD  DEFAULT (NULL) FOR [DeleteTime]
GO
ALTER TABLE [qltc].[ca] ADD  DEFAULT (NULL) FOR [TenCa]
GO
ALTER TABLE [qltc].[ca] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[ct_bao_cao] ADD  DEFAULT (NULL) FOR [Ngay]
GO
ALTER TABLE [qltc].[ct_bao_cao] ADD  DEFAULT (NULL) FOR [SoLuongTiec]
GO
ALTER TABLE [qltc].[ct_bao_cao] ADD  DEFAULT (NULL) FOR [DoanhThu]
GO
ALTER TABLE [qltc].[ct_bao_cao] ADD  DEFAULT (NULL) FOR [TiLe]
GO
ALTER TABLE [qltc].[ct_dat_tiec] ADD  DEFAULT (NULL) FOR [MaMon]
GO
ALTER TABLE [qltc].[ct_dat_tiec] ADD  DEFAULT (NULL) FOR [MaDV]
GO
ALTER TABLE [qltc].[ct_hoa_don] ADD  DEFAULT (NULL) FOR [TongTienDV]
GO
ALTER TABLE [qltc].[ct_hoa_don] ADD  DEFAULT (NULL) FOR [TongTienHoaDon]
GO
ALTER TABLE [qltc].[ct_hoa_don] ADD  DEFAULT (NULL) FOR [TienDatCoc]
GO
ALTER TABLE [qltc].[ct_hoa_don] ADD  DEFAULT (NULL) FOR [ConLai]
GO
ALTER TABLE [qltc].[dat_tiec] ADD  DEFAULT (NULL) FOR [TienDatCoc]
GO
ALTER TABLE [qltc].[dat_tiec] ADD  DEFAULT (NULL) FOR [SoBanDuTru]
GO
ALTER TABLE [qltc].[dat_tiec] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[dat_tiec] ADD  DEFAULT (NULL) FOR [TinhTrang]
GO
ALTER TABLE [qltc].[dich_vu] ADD  DEFAULT (NULL) FOR [TenDV]
GO
ALTER TABLE [qltc].[dich_vu] ADD  DEFAULT (NULL) FOR [SoLuong]
GO
ALTER TABLE [qltc].[dich_vu] ADD  DEFAULT (NULL) FOR [Gia]
GO
ALTER TABLE [qltc].[dich_vu] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [TenSanh]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [LoaiSanh]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [SoLuongBanToiDa]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [DonGiaBanToiThieu]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [qltc].[ds_sanh] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[ds_tiec_cuoi] ADD  DEFAULT (NULL) FOR [Ngay]
GO
ALTER TABLE [qltc].[ds_tiec_cuoi] ADD  DEFAULT (NULL) FOR [Gio]
GO
ALTER TABLE [qltc].[ds_tiec_cuoi] ADD  DEFAULT (NULL) FOR [SoLuongBan]
GO
ALTER TABLE [qltc].[gia_dinh] ADD  DEFAULT (NULL) FOR [TenCoDau]
GO
ALTER TABLE [qltc].[gia_dinh] ADD  DEFAULT (NULL) FOR [TenChuRe]
GO
ALTER TABLE [qltc].[gia_dinh] ADD  DEFAULT (NULL) FOR [SDT]
GO
ALTER TABLE [qltc].[gia_dinh] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[hoa_don] ADD  DEFAULT (NULL) FOR [TongTienBan]
GO
ALTER TABLE [qltc].[hoa_don] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [qltc].[hoa_don] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[mon_an] ADD  DEFAULT (NULL) FOR [TenMon]
GO
ALTER TABLE [qltc].[mon_an] ADD  DEFAULT (NULL) FOR [Gia]
GO
ALTER TABLE [qltc].[mon_an] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [qltc].[mon_an] ADD  DEFAULT (NULL) FOR [TrangThai]
GO
ALTER TABLE [qltc].[tai_khoan] ADD  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [qltc].[tham_so] ADD  DEFAULT (NULL) FOR [TenThamSo]
GO
ALTER TABLE [qltc].[tham_so] ADD  DEFAULT (NULL) FOR [GiaTri]
GO
ALTER TABLE [qltc].[ct_bao_cao]  WITH CHECK ADD  CONSTRAINT [ct_bao_cao$fkCTBC_BC_MaBC] FOREIGN KEY([MaBC])
REFERENCES [qltc].[bao_cao] ([MaBC])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ct_bao_cao] CHECK CONSTRAINT [ct_bao_cao$fkCTBC_BC_MaBC]
GO
ALTER TABLE [qltc].[ct_dat_tiec]  WITH CHECK ADD  CONSTRAINT [ct_dat_tiec$fkCTDT_DT_MaDatTiec] FOREIGN KEY([MaDatTiec])
REFERENCES [qltc].[dat_tiec] ([MaDatTiec])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ct_dat_tiec] CHECK CONSTRAINT [ct_dat_tiec$fkCTDT_DT_MaDatTiec]
GO
ALTER TABLE [qltc].[ct_dat_tiec]  WITH CHECK ADD  CONSTRAINT [ct_dat_tiec$fkCTDT_DV_MaDV] FOREIGN KEY([MaDV])
REFERENCES [qltc].[dich_vu] ([MaDV])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ct_dat_tiec] CHECK CONSTRAINT [ct_dat_tiec$fkCTDT_DV_MaDV]
GO
ALTER TABLE [qltc].[ct_dat_tiec]  WITH CHECK ADD  CONSTRAINT [ct_dat_tiec$fkCTDT_Mon_MaMon] FOREIGN KEY([MaMon])
REFERENCES [qltc].[mon_an] ([MaMon])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ct_dat_tiec] CHECK CONSTRAINT [ct_dat_tiec$fkCTDT_Mon_MaMon]
GO
ALTER TABLE [qltc].[ct_hoa_don]  WITH CHECK ADD  CONSTRAINT [ct_hoa_don$fkCTHD_HD_MaHD] FOREIGN KEY([MaHD])
REFERENCES [qltc].[hoa_don] ([MaHD])
GO
ALTER TABLE [qltc].[ct_hoa_don] CHECK CONSTRAINT [ct_hoa_don$fkCTHD_HD_MaHD]
GO
ALTER TABLE [qltc].[dat_tiec]  WITH CHECK ADD  CONSTRAINT [dat_tiec$fkDT_CA_MaCa] FOREIGN KEY([MaCa])
REFERENCES [qltc].[ca] ([MaCa])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[dat_tiec] CHECK CONSTRAINT [dat_tiec$fkDT_CA_MaCa]
GO
ALTER TABLE [qltc].[dat_tiec]  WITH CHECK ADD  CONSTRAINT [dat_tiec$fkDT_DST_MaDSTiec] FOREIGN KEY([MaDSTiec])
REFERENCES [qltc].[ds_tiec_cuoi] ([MaDSTiec])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[dat_tiec] CHECK CONSTRAINT [dat_tiec$fkDT_DST_MaDSTiec]
GO
ALTER TABLE [qltc].[dat_tiec]  WITH CHECK ADD  CONSTRAINT [dat_tiec$fkDT_GD_MaGD] FOREIGN KEY([MaGD])
REFERENCES [qltc].[gia_dinh] ([MaGD])
GO
ALTER TABLE [qltc].[dat_tiec] CHECK CONSTRAINT [dat_tiec$fkDT_GD_MaGD]
GO
ALTER TABLE [qltc].[ds_tiec_cuoi]  WITH CHECK ADD  CONSTRAINT [ds_tiec_cuoi$fkDSTC_DSSanh_MaSanh] FOREIGN KEY([MaSanh])
REFERENCES [qltc].[ds_sanh] ([MaSanh])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ds_tiec_cuoi] CHECK CONSTRAINT [ds_tiec_cuoi$fkDSTC_DSSanh_MaSanh]
GO
ALTER TABLE [qltc].[ds_tiec_cuoi]  WITH CHECK ADD  CONSTRAINT [ds_tiec_cuoi$fkDSTC_GD_MaGD] FOREIGN KEY([MaGD])
REFERENCES [qltc].[gia_dinh] ([MaGD])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[ds_tiec_cuoi] CHECK CONSTRAINT [ds_tiec_cuoi$fkDSTC_GD_MaGD]
GO
ALTER TABLE [qltc].[gia_dinh]  WITH CHECK ADD  CONSTRAINT [gia_dinh$fkGD_TK_MaGD] FOREIGN KEY([SDT])
REFERENCES [qltc].[tai_khoan] ([SDT])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[gia_dinh] CHECK CONSTRAINT [gia_dinh$fkGD_TK_MaGD]
GO
ALTER TABLE [qltc].[hoa_don]  WITH CHECK ADD  CONSTRAINT [hoa_don$fkHD_CTDT_MaDatTiec] FOREIGN KEY([MaDatTiec])
REFERENCES [qltc].[dat_tiec] ([MaDatTiec])
ON UPDATE CASCADE
GO
ALTER TABLE [qltc].[hoa_don] CHECK CONSTRAINT [hoa_don$fkHD_CTDT_MaDatTiec]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bao_cao' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bao_cao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bkct_dat_tiec2019' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bkct_dat_tiec2019'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bkct_hoa_don2019' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bkct_hoa_don2019'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bkdstiec2019' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bkdstiec2019'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bkdt2019' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bkdt2019'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.bkhoadon2019' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'bkhoadon2019'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ca' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ct_bao_cao' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ct_bao_cao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ct_dat_tiec' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ct_dat_tiec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ct_hoa_don' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ct_hoa_don'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.dat_tiec' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'dat_tiec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.dich_vu' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'dich_vu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ds_sanh' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ds_sanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.ds_tiec_cuoi' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'ds_tiec_cuoi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.gia_dinh' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'gia_dinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.hoa_don' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'hoa_don'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.mon_an' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'mon_an'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.tai_khoan' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'tai_khoan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'qltc.tham_so' , @level0type=N'SCHEMA',@level0name=N'qltc', @level1type=N'TABLE',@level1name=N'tham_so'
GO
USE [master]
GO
ALTER DATABASE [qltc] SET  READ_WRITE 
GO
EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"