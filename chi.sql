USE [master]
GO
/****** Object:  Database [DuAn]    Script Date: 6/22/2020 2:21:39 PM ******/
CREATE DATABASE [DuAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DuAn.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DuAn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DuAn_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DuAn] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuAn] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DuAn] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuAn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DuAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuAn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuAn] SET  MULTI_USER 
GO
ALTER DATABASE [DuAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuAn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DuAn]
GO
/****** Object:  Table [dbo].[AmThanh]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmThanh](
	[MaAmThanh] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiAT] [int] NULL,
	[TenAmThanh] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_AmThanh] PRIMARY KEY CLUSTERED 
(
	[MaAmThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camera]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camera](
	[MaCam] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiCam] [int] NULL,
	[TenCam] [nvarchar](50) NULL,
	[TinhNang] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_Camera] PRIMARY KEY CLUSTERED 
(
	[MaCam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NULL,
	[MaDienThoai] [int] NULL,
	[SoLuong] [float] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuNhap] [int] NULL,
	[MaDienThoai] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDienThoai] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiDT] [int] NULL,
	[TenDienThoai] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DongHo]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongHo](
	[MaDongHo] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiDH] [int] NULL,
	[TenDongHo] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[HeDieuHanh] [nvarchar](20) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_DongHo] PRIMARY KEY CLUSTERED 
(
	[MaDongHo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaKhachHang] [int] NULL,
	[NgayTao] [date] NULL,
	[TongTien] [money] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[SoDonHang] [varchar](15) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangGiaDungVaDoiSong]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangGiaDungVaDoiSong](
	[MaHangGiaDungVaDS] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_HangGiaDungVaDoiSong] PRIMARY KEY CLUSTERED 
(
	[MaHangGiaDungVaDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangMeBeVaDoChoi]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangMeBeVaDoChoi](
	[MaHangMeBeVaDoChoi] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_HangMeBeVaDoChoi] PRIMARY KEY CLUSTERED 
(
	[MaHangMeBeVaDoChoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LapTop]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LapTop](
	[MaLapTop] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiLT] [int] NULL,
	[TenLapTop] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_LapTop] PRIMARY KEY CLUSTERED 
(
	[MaLapTop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDienThoai]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDienThoai](
	[MaLoaiDT] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDT] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDienThoai] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[MaManHinh] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiManHinh] [int] NULL,
	[TenManHinh] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[DoPhanGiai] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_ManHinh] PRIMARY KEY CLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MayAnh]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayAnh](
	[MaMayAnh] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiMayAnh] [int] NULL,
	[TenMayAnh] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[DoPhanGiai] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_MayAnh] PRIMARY KEY CLUSTERED 
(
	[MaMayAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MayTinhBan]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayTinhBan](
	[MaMayTinhBan] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiMTBan] [int] NULL,
	[TenMTBan] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_MayTinhBan] PRIMARY KEY CLUSTERED 
(
	[MaMayTinhBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MayTinhBang]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayTinhBang](
	[MaMayTinhBang] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiMTB] [int] NULL,
	[TenMTB] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_MayTinhBang] PRIMARY KEY CLUSTERED 
(
	[MaMayTinhBang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtoXeMayVaThietBi]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtoXeMayVaThietBi](
	[MaOToXeMay] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_OtoXeMayVaThietBi] PRIMARY KEY CLUSTERED 
(
	[MaOToXeMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaNhaCungCap] [int] NULL,
	[NgayTao] [date] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[SoPhieuNhap] [varchar](15) NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhuKienDienTu]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuKienDienTu](
	[MaPKDienTu] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_PhuKienDienTu] PRIMARY KEY CLUSTERED 
(
	[MaPKDienTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuKienThoiTrang]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuKienThoiTrang](
	[MaPKThoiTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_PhuKienThoiTrang] PRIMARY KEY CLUSTERED 
(
	[MaPKThoiTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SieuThiTapHoa]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SieuThiTapHoa](
	[MaSTTapHoa] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_SieuThiTapHoa] PRIMARY KEY CLUSTERED 
(
	[MaSTTapHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SucKhoeVaLamDep]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucKhoeVaLamDep](
	[MaSKVaLamDep] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_SucKhoeVaLamDep] PRIMARY KEY CLUSTERED 
(
	[MaSKVaLamDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheThaoVaDuLich]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThaoVaDuLich](
	[MaTheThaoVaDuLich] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_TheThaoVaDuLich] PRIMARY KEY CLUSTERED 
(
	[MaTheThaoVaDuLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThoiTrangNam]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiTrangNam](
	[MaThoiTrangNam] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThoiTrangNam] PRIMARY KEY CLUSTERED 
(
	[MaThoiTrangNam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThoiTrangNu]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiTrangNu](
	[MaThoiTrangNu] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_ThoiTrangNu] PRIMARY KEY CLUSTERED 
(
	[MaThoiTrangNu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiViVaTBDiDong]    Script Date: 6/22/2020 2:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiViVaTBDiDong](
	[MaTVVaTBDiDong] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[GiaBan] [money] NULL,
 CONSTRAINT [PK_TiViVaTBDiDong] PRIMARY KEY CLUSTERED 
(
	[MaTVVaTBDiDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AmThanh] ON 

INSERT [dbo].[AmThanh] ([MaAmThanh], [MaLoaiAT], [TenAmThanh], [ThuongHieu], [MauSac], [GiaBan]) VALUES (1, 1, N'Tai nghe Bluetooth', N'PKCB', N'Đen', 12900.0000)
INSERT [dbo].[AmThanh] ([MaAmThanh], [MaLoaiAT], [TenAmThanh], [ThuongHieu], [MauSac], [GiaBan]) VALUES (2, 1, N'Tai nghe bluetooth i11', N'apple', N'Trắng', 52600.0000)
INSERT [dbo].[AmThanh] ([MaAmThanh], [MaLoaiAT], [TenAmThanh], [ThuongHieu], [MauSac], [GiaBan]) VALUES (4, 1, N'Loa Bluetooth', NULL, N'Đỏ', 15600.0000)
INSERT [dbo].[AmThanh] ([MaAmThanh], [MaLoaiAT], [TenAmThanh], [ThuongHieu], [MauSac], [GiaBan]) VALUES (5, 1, N'Loa nghe nhạc', N'PKCB', N'Xám', 1560.0000)
INSERT [dbo].[AmThanh] ([MaAmThanh], [MaLoaiAT], [TenAmThanh], [ThuongHieu], [MauSac], [GiaBan]) VALUES (6, 1, N'Loa Kẹo Kéo', NULL, N'Đỏ Đen', 19340.0000)
SET IDENTITY_INSERT [dbo].[AmThanh] OFF
SET IDENTITY_INSERT [dbo].[Camera] ON 

INSERT [dbo].[Camera] ([MaCam], [MaLoaiCam], [TenCam], [TinhNang], [GiaBan]) VALUES (1, 1, N'Camera IP wifi ngoài trời', N'phát hiện chuyển động', 38900.0000)
INSERT [dbo].[Camera] ([MaCam], [MaLoaiCam], [TenCam], [TinhNang], [GiaBan]) VALUES (2, 1, N'Camera Wifi 2.5 Ngoài Trời', NULL, 34850.0000)
INSERT [dbo].[Camera] ([MaCam], [MaLoaiCam], [TenCam], [TinhNang], [GiaBan]) VALUES (3, 1, N'Camera giám sát IP wifi ngoài trời', NULL, 4090.0000)
INSERT [dbo].[Camera] ([MaCam], [MaLoaiCam], [TenCam], [TinhNang], [GiaBan]) VALUES (4, 1, N'Camera YOOSEE IP WIFI 3.0', N'Góc siêu rộng, đàm thoại 2 chiều', 4500.0000)
INSERT [dbo].[Camera] ([MaCam], [MaLoaiCam], [TenCam], [TinhNang], [GiaBan]) VALUES (5, 1, N'CAMERA YOOSEE 2.0', N'cảm biến chuyển động,đàm thoại song phương', 3660.0000)
SET IDENTITY_INSERT [dbo].[Camera] OFF
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (88, 78, 60, 3, 3000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (89, 78, 62, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (90, 78, 61, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (91, 79, 60, 3, 3000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (92, 80, 57, 4, 40000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (93, 81, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (94, 81, 58, 1, 10000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (95, 81, 57, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (96, 81, 61, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (97, 82, 60, 3, 3000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (98, 82, 63, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (99, 82, 66, 3, 360000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (100, 83, 57, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (101, 83, 61, 3, 30000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (102, 84, 61, 4, 40000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (103, 84, 61, 4, 40000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (104, 84, 61, 4, 40000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (105, 87, 56, 2, 20000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (106, 87, 56, 2, 20000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (107, 87, 56, 6, 60000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (108, 87, 60, 120, 120000.0000)
INSERT [dbo].[ChiTietDonHang] ([MaCTDH], [MaDonHang], [MaDienThoai], [SoLuong], [TongTien]) VALUES (109, 89, 56, 5, 50000.0000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (36, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (37, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (38, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (39, 33, 60, 1000, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (40, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (41, 33, 60, 1000, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (43, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (44, 33, 60, 1000, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (46, 33, 62, 100, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (47, 33, 59, 1, 1000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (48, 33, 60, 1000, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (50, 33, 62, 100, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (51, 39, 64, 12, 1200000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (52, 39, 65, 12, 1200240.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (53, 39, 66, 13, 1560000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (54, 39, 67, 100, 50.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (56, 42, 71, 10, 10000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (57, 42, 72, 10, 1000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (58, 42, 73, 12, 1200000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [MaDienThoai], [SoLuong], [TongTien]) VALUES (59, 42, 74, 12, 2400000.0000)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[DienThoai] ON 

INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (56, 1, N'sam sung', NULL, N'mx2', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (57, 1, N'galxaxy', NULL, N'mx2', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (58, 1, N'galxaxy', NULL, N'mx2', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (59, 1, N'ss', NULL, N'ss', 100.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (60, 1, N'ss', NULL, N'ss', 100.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (61, 1, N'sam sung', NULL, N'mã5', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (62, 1, N'sam sung', NULL, N'mã5', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (63, 1, N'iphone', NULL, N'xs', 1000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (64, 1, N'iphone', NULL, N'xs', 10000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (65, 1, N'iphone', NULL, N'xs', 10002.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (66, 1, N'samsung', NULL, N'mx2', 12000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (67, 1, N'sammax', NULL, N'cs3', 500000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (68, 1, N'sammax', NULL, N'cs3', 50000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (69, 1, N'samsung', NULL, N'mk2', 10000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (70, 1, N'samsung', NULL, N'mk2', 2000000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (71, 1, N'samsung', NULL, N'mk2', 100.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (72, 1, N'samsung', NULL, N'mk2', 10000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (73, 1, N'iphone', NULL, N'xs', 10000.0000)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaLoaiDT], [TenDienThoai], [ThuongHieu], [MauSac], [GiaBan]) VALUES (74, 1, N'sam sung', NULL, N'xs', 20000.0000)
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
SET IDENTITY_INSERT [dbo].[DongHo] ON 

INSERT [dbo].[DongHo] ([MaDongHo], [MaLoaiDH], [TenDongHo], [ThuongHieu], [MauSac], [HeDieuHanh], [GiaBan]) VALUES (1, 1, N'Đồng hồ thông minh Smart Watch GM08', N'Smart Switch', N'Đen', N'Android', 1690.0000)
INSERT [dbo].[DongHo] ([MaDongHo], [MaLoaiDH], [TenDongHo], [ThuongHieu], [MauSac], [HeDieuHanh], [GiaBan]) VALUES (2, 1, N'Đồng hồ thông minh Smartwatch', N'PUTOCA', N'Trắng', N'Android', 1990.0000)
INSERT [dbo].[DongHo] ([MaDongHo], [MaLoaiDH], [TenDongHo], [ThuongHieu], [MauSac], [HeDieuHanh], [GiaBan]) VALUES (3, 1, N'Đồng hồ thông minh Xiaomi Amazfit', N'Xiaomi', N'Nâu', NULL, 30000.0000)
INSERT [dbo].[DongHo] ([MaDongHo], [MaLoaiDH], [TenDongHo], [ThuongHieu], [MauSac], [HeDieuHanh], [GiaBan]) VALUES (4, 1, N'Bộ Theo Dõi Sức Khỏe', N'Nexlux', N'Vàng Thép', NULL, 2720.0000)
INSERT [dbo].[DongHo] ([MaDongHo], [MaLoaiDH], [TenDongHo], [ThuongHieu], [MauSac], [HeDieuHanh], [GiaBan]) VALUES (5, 1, N'đồng hồ trẻ em', N'catwalk', N'Hồng', NULL, 470.0000)
SET IDENTITY_INSERT [dbo].[DongHo] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (78, 1, 1, CAST(0x84400B00 AS Date), 63000.0000, N'2@gmail.com', N'191220001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (79, 1, 1, CAST(0x7A400B00 AS Date), 3000.0000, N'2@gmail.com', N'191220002')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (80, 1, 1, CAST(0x69250B00 AS Date), 40000.0000, N'2@gmail.com', N'191220003')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (81, 1, 1, CAST(0x84400B00 AS Date), 71000.0000, N'2@gmail.com', N'191220004')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (82, 1, 1, CAST(0x85400B00 AS Date), 393000.0000, N'2@gmail.com', N'191221001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (83, 1, 1, CAST(0x83400B00 AS Date), 60000.0000, N'2@gmail.com', N'191221002')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (84, 1, 1, CAST(0x86400B00 AS Date), 40000.0000, N'2@gmail.com', N'191222001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (85, 1, 1, CAST(0x86400B00 AS Date), 40000.0000, N'2@gmail.com', N'191222001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (86, 1, 1, CAST(0x86400B00 AS Date), 40000.0000, N'2@gmail.com', N'191222001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (87, 1, 1, CAST(0x87400B00 AS Date), 20000.0000, N'2@gmail.com', N'191223001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (88, 1, 1, CAST(0x87400B00 AS Date), 200000.0000, N'2@gmail.com', N'191223001')
INSERT [dbo].[DonHang] ([MaDonHang], [MaNhanVien], [MaKhachHang], [NgayTao], [TongTien], [GhiChu], [SoDonHang]) VALUES (89, 1, 1, CAST(0x87400B00 AS Date), 50000.0000, N'2@gmail.com', N'191223003')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email]) VALUES (1, N'hoàng', CAST(0x49920500 AS Date), 1, N'2@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email]) VALUES (2, N'pro', CAST(0x27240B00 AS Date), 1, N'vl@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email]) VALUES (11, N'a', CAST(0x08240B00 AS Date), 0, N'nam@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [NgaySinh], [GioiTinh], [Email]) VALUES (12, N'thanh hai', CAST(0x6D910500 AS Date), 0, N'1@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LapTop] ON 

INSERT [dbo].[LapTop] ([MaLapTop], [MaLoaiLT], [TenLapTop], [ThuongHieu], [MauSac], [GiaBan]) VALUES (1, 1, N'Laptop Sinh Viên', N'Masstel', N'Bạc', 52400.0000)
INSERT [dbo].[LapTop] ([MaLapTop], [MaLoaiLT], [TenLapTop], [ThuongHieu], [MauSac], [GiaBan]) VALUES (2, 1, N'Laptop Dell 1545', N'Dell', N'Đen', 55900.0000)
INSERT [dbo].[LapTop] ([MaLapTop], [MaLoaiLT], [TenLapTop], [ThuongHieu], [MauSac], [GiaBan]) VALUES (3, 1, N'Laptop HP Pavilion 14', N'HP', N'Xám', 157900.0000)
INSERT [dbo].[LapTop] ([MaLapTop], [MaLoaiLT], [TenLapTop], [ThuongHieu], [MauSac], [GiaBan]) VALUES (4, 1, N'Laptop Asus ROG Strix G G731', N'Asus', N'Đen', 419900.0000)
INSERT [dbo].[LapTop] ([MaLapTop], [MaLoaiLT], [TenLapTop], [ThuongHieu], [MauSac], [GiaBan]) VALUES (5, 1, N'Máy tính Macbook Air 13 1.8GHz', N'Apple', N'Trắng', 194900.0000)
SET IDENTITY_INSERT [dbo].[LapTop] OFF
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] ON 

INSERT [dbo].[LoaiDienThoai] ([MaLoaiDT], [TenLoaiDT], [GhiChu]) VALUES (1, N'kk', N'')
INSERT [dbo].[LoaiDienThoai] ([MaLoaiDT], [TenLoaiDT], [GhiChu]) VALUES (2, N'bàn phím', N'102')
INSERT [dbo].[LoaiDienThoai] ([MaLoaiDT], [TenLoaiDT], [GhiChu]) VALUES (4, N'kk', N'')
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] OFF
SET IDENTITY_INSERT [dbo].[ManHinh] ON 

INSERT [dbo].[ManHinh] ([MaManHinh], [MaLoaiManHinh], [TenManHinh], [ThuongHieu], [DoPhanGiai], [GiaBan]) VALUES (1, 1, N'Màn hình vi tính LED', N'SamSung', N'23.8', 29900.0000)
INSERT [dbo].[ManHinh] ([MaManHinh], [MaLoaiManHinh], [TenManHinh], [ThuongHieu], [DoPhanGiai], [GiaBan]) VALUES (2, 1, N'Màn Hình Dell', N'Dell', N'24', 49970.0000)
INSERT [dbo].[ManHinh] ([MaManHinh], [MaLoaiManHinh], [TenManHinh], [ThuongHieu], [DoPhanGiai], [GiaBan]) VALUES (3, 1, N'Màn hình máy tính ASUS', N'Asus', N'21.5', 27900.0000)
INSERT [dbo].[ManHinh] ([MaManHinh], [MaLoaiManHinh], [TenManHinh], [ThuongHieu], [DoPhanGiai], [GiaBan]) VALUES (4, 1, N'Màn hình AOC', N'AOC', N'27', 44000.0000)
INSERT [dbo].[ManHinh] ([MaManHinh], [MaLoaiManHinh], [TenManHinh], [ThuongHieu], [DoPhanGiai], [GiaBan]) VALUES (5, 1, N'Màn Hình LED Slim Chân Nhỏ', N'Slim', N'15.6', 15000.0000)
SET IDENTITY_INSERT [dbo].[ManHinh] OFF
SET IDENTITY_INSERT [dbo].[MayAnh] ON 

INSERT [dbo].[MayAnh] ([MaMayAnh], [MaLoaiMayAnh], [TenMayAnh], [ThuongHieu], [MauSac], [DoPhanGiai], [GiaBan]) VALUES (1, 1, N'Máy Ảnh Kỹ Thuật Số 4K', N'OEM', N'Đen', N'4K', 2580.0000)
INSERT [dbo].[MayAnh] ([MaMayAnh], [MaLoaiMayAnh], [TenMayAnh], [ThuongHieu], [MauSac], [DoPhanGiai], [GiaBan]) VALUES (2, 1, N'Máy Ảnh Kỹ Thuật Số', N'Canon', N'Đen', N'720', 4850.0000)
INSERT [dbo].[MayAnh] ([MaMayAnh], [MaLoaiMayAnh], [TenMayAnh], [ThuongHieu], [MauSac], [DoPhanGiai], [GiaBan]) VALUES (3, 1, N'Máy quay phim cầm tay', N'DVC', N'Đen', N'16x', 6630.0000)
INSERT [dbo].[MayAnh] ([MaMayAnh], [MaLoaiMayAnh], [TenMayAnh], [ThuongHieu], [MauSac], [DoPhanGiai], [GiaBan]) VALUES (4, 1, N'Máy Quay Video HD', N'mega', N'Đen', N'1080', 3910.0000)
INSERT [dbo].[MayAnh] ([MaMayAnh], [MaLoaiMayAnh], [TenMayAnh], [ThuongHieu], [MauSac], [DoPhanGiai], [GiaBan]) VALUES (5, 1, N'Máy quay phim kỹ thuật số', N'CMOS', N'Đen', N'1080', 5090.0000)
SET IDENTITY_INSERT [dbo].[MayAnh] OFF
SET IDENTITY_INSERT [dbo].[MayTinhBan] ON 

INSERT [dbo].[MayTinhBan] ([MaMayTinhBan], [MaLoaiMTBan], [TenMTBan], [ThuongHieu], [GiaBan]) VALUES (1, 1, N'Bộ máy tính Văn phòng Dell Optiplex 3010', N'Dell', 40940.0000)
INSERT [dbo].[MayTinhBan] ([MaMayTinhBan], [MaLoaiMTBan], [TenMTBan], [ThuongHieu], [GiaBan]) VALUES (2, 1, N'Máy tính Intel NUC NUC8i7HVK', N'Intel', 319500.0000)
INSERT [dbo].[MayTinhBan] ([MaMayTinhBan], [MaLoaiMTBan], [TenMTBan], [ThuongHieu], [GiaBan]) VALUES (3, 1, N'Máy tính để bàn HP 200 Pro', N'HP', 152900.0000)
SET IDENTITY_INSERT [dbo].[MayTinhBan] OFF
SET IDENTITY_INSERT [dbo].[MayTinhBang] ON 

INSERT [dbo].[MayTinhBang] ([MaMayTinhBang], [MaLoaiMTB], [TenMTB], [ThuongHieu], [MauSac], [GiaBan]) VALUES (1, 1, N'Máy Tính Bảng Huawei', N'Huawei', N'Hồng', 29900.0000)
INSERT [dbo].[MayTinhBang] ([MaMayTinhBang], [MaLoaiMTB], [TenMTB], [ThuongHieu], [MauSac], [GiaBan]) VALUES (2, 1, N'Máy Tính Bảng Apple Ipad ', N'Apple', N'Đen', 17890.0000)
INSERT [dbo].[MayTinhBang] ([MaMayTinhBang], [MaLoaiMTB], [TenMTB], [ThuongHieu], [MauSac], [GiaBan]) VALUES (3, 1, N'Máy Tính Bảng Galaxy Tab A SM-T295', N'Galaxy', N'Trắng', 31000.0000)
INSERT [dbo].[MayTinhBang] ([MaMayTinhBang], [MaLoaiMTB], [TenMTB], [ThuongHieu], [MauSac], [GiaBan]) VALUES (4, 1, N'Máy Tính Bảng SamSung AS888', N'SamSung', N'Bạc', 23900.0000)
INSERT [dbo].[MayTinhBang] ([MaMayTinhBang], [MaLoaiMTB], [TenMTB], [ThuongHieu], [MauSac], [GiaBan]) VALUES (5, 1, N'Máy Tính Bảng Ipad 2', N'Apple', N'Đen', 13900.0000)
SET IDENTITY_INSERT [dbo].[MayTinhBang] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (1, N'hihi', NULL)
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (2, N'vl', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (3, N'iu', N'lol')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (4, N'bang', N'uc')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (5, N'j', N'j')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [GhiChu]) VALUES (6, N'a', N'a')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TaiKhoan], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [Email], [ChucVu]) VALUES (1, N'admin', N'1234', N'admin', CAST(0x31250B00 AS Date), 0, N'hai2k@gmail.com', N'Quản lý')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TaiKhoan], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [Email], [ChucVu]) VALUES (9, N'derid', N'anhnam', N'thanhnhair', CAST(0x5B950A00 AS Date), 1, N'nam@gmail.com', N'Quản lý')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TaiKhoan], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [Email], [ChucVu]) VALUES (17, N'admin', N'12', N'thanh hải', CAST(0x27240B00 AS Date), 0, N'hai@gmail.com', N'Quản lý')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TaiKhoan], [MatKhau], [HoTen], [NgaySinh], [GioiTinh], [Email], [ChucVu]) VALUES (18, N'admin', N'12', N'thanh hải', CAST(0x27240B00 AS Date), 0, N'hai@gmail.com', N'Quản lý')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (33, 1, 1, CAST(0x84400B00 AS Date), N'null', N'191220001', 1000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (34, 1, 1, CAST(0x84400B00 AS Date), N'null', N'191220001', 1000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (35, 1, 1, CAST(0x84400B00 AS Date), N'null', N'191220001', 1001000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (39, 1, 1, CAST(0x85400B00 AS Date), N'null', N'191221001', 1200000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (40, 1, 1, CAST(0x85400B00 AS Date), N'null', N'191221001', 1200240.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (42, 1, 1, CAST(0x87400B00 AS Date), N'null', N'191223001', 10000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (43, 1, 1, CAST(0x87400B00 AS Date), N'null', N'191223001', 1000000.0000)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [NgayTao], [GhiChu], [SoPhieuNhap], [TongTien]) VALUES (44, 1, 1, CAST(0x87400B00 AS Date), N'null', N'191223001', 3600000.0000)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DienThoai] FOREIGN KEY([MaDienThoai])
REFERENCES [dbo].[DienThoai] ([MaDienThoai])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DienThoai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [DuAn] SET  READ_WRITE 
GO
