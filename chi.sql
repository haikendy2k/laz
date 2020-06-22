USE [DuAn]
GO
/****** Object:  Table [dbo].[AmThanh]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[Camera]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[DienThoai]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[DongHo]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[HangGiaDungVaDoiSong]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[HangMeBeVaDoChoi]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[LapTop]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[LoaiDienThoai]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[ManHinh]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[MayAnh]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[MayTinhBan]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[MayTinhBang]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[OtoXeMayVaThietBi]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[PhuKienDienTu]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[PhuKienThoiTrang]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[SieuThiTapHoa]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[SucKhoeVaLamDep]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[TheThaoVaDuLich]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[ThoiTrangNam]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[ThoiTrangNu]    Script Date: 6/22/2020 2:18:22 PM ******/
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
/****** Object:  Table [dbo].[TiViVaTBDiDong]    Script Date: 6/22/2020 2:18:22 PM ******/
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
