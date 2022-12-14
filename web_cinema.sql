USE [master]
GO
/****** Object:  Database [QuanLiRapPhim]    Script Date: 27/03/2022 11:28:07 ******/
CREATE DATABASE [QuanLiRapPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiRapPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLiRapPhim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiRapPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLiRapPhim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLiRapPhim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiRapPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiRapPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiRapPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiRapPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiRapPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiRapPhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiRapPhim] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiRapPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiRapPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiRapPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiRapPhim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiRapPhim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiRapPhim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLiRapPhim] SET QUERY_STORE = OFF
GO
USE [QuanLiRapPhim]
GO
/****** Object:  Table [dbo].[CaChieu]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaChieu](
	[MaCa] [int] IDENTITY(1,1) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
 CONSTRAINT [PK_CaChieu] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[MaSuatChieu] [int] IDENTITY(1,1) NOT NULL,
	[NgayChieu] [datetime] NULL,
	[CaChieu] [int] NULL,
	[SoPhongChieu] [int] NULL,
	[TienVe] [money] NULL,
	[MaPhim] [int] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaSuatChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](100) NULL,
	[MaLoai] [int] NULL,
	[MoTaPhim] [nvarchar](100) NULL,
	[GiaNhapPhim] [money] NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[SoPhongChieu] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongChieu] PRIMARY KEY CLUSTERED 
(
	[SoPhongChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[RePassword] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 27/03/2022 11:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaSuatChieu] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[SoGhe] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CaChieu] ON 

INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (1, N'9:00')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (2, N'11:00')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (3, N'13:30')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (4, N'15:30')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (5, N'17:45')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (6, N'20:00')
INSERT [dbo].[CaChieu] ([MaCa], [TenCa]) VALUES (7, N'22:00')
SET IDENTITY_INSERT [dbo].[CaChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieu] ON 

INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (1, CAST(N'2022-03-25T00:00:00.000' AS DateTime), 1, 1, 75000.0000, 1)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (2, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 1, 1, 75000.0000, 2)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (3, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 2, 2, 75000.0000, 3)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (4, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 3, 3, 75000.0000, 4)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (5, CAST(N'2022-03-24T00:00:00.000' AS DateTime), 4, 4, 75000.0000, 5)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (6, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 2, 2, 75000.0000, 1)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (7, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 4, 4, 75000.0000, 1)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (8, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 5, 5, 75000.0000, 1)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (9, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 3, 2, 75000.0000, 5)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (10, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 4, 2, 75000.0000, 2)
INSERT [dbo].[LichChieu] ([MaSuatChieu], [NgayChieu], [CaChieu], [SoPhongChieu], [TienVe], [MaPhim]) VALUES (11, CAST(N'2022-03-30T00:00:00.000' AS DateTime), 3, 3, 75000.0000, 1)
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (1, N'Bat Man', 2, N'Phim kể về cuộc chiến ở Gotham', 75000.0000, N'movies_1.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (2, N'Đấu trường âm nhạc', 8, N'Phim hay', 75000.0000, N'movies_2.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (3, N'Trăng rơi', 1, N'Phim bom tấn', 75000.0000, N'movies_3.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (4, N'Spiderman', 2, N'Phim rất hay', 75000.0000, N'movies_4.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (5, N'Gấu đỏ', 8, N'Phim hay', 75000.0000, N'movies_5.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (6, N'Gấu đỏ', 8, N'Phim hay', 75000.0000, N'movies_5.jpg')
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MaLoai], [MoTaPhim], [GiaNhapPhim], [Anh]) VALUES (7, N'Gấu đỏ', 8, N'Phim hay', 75000.0000, N'movies_5.jpg')
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongChieu] ON 

INSERT [dbo].[PhongChieu] ([SoPhongChieu], [TenPhong]) VALUES (1, N'Phong 1')
INSERT [dbo].[PhongChieu] ([SoPhongChieu], [TenPhong]) VALUES (2, N'Phong 2')
INSERT [dbo].[PhongChieu] ([SoPhongChieu], [TenPhong]) VALUES (3, N'Phong 3')
INSERT [dbo].[PhongChieu] ([SoPhongChieu], [TenPhong]) VALUES (4, N'Phong 4')
INSERT [dbo].[PhongChieu] ([SoPhongChieu], [TenPhong]) VALUES (5, N'Phong 5')
SET IDENTITY_INSERT [dbo].[PhongChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (1, N'Khoa học viễn tưởng')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (2, N'Hành động')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (3, N'Trinh Thám')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (4, N'Kinh dị')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (5, N'Tình cảm')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (6, N'Lãng mạn')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (7, N'Hài kịch')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (8, N'Hoạt hình')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (9, N'Phim tài liệu')
INSERT [dbo].[TheLoai] ([MaLoai], [TenTheLoai]) VALUES (10, N'Chính kịch')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
INSERT [dbo].[User] ([UserName], [Password], [RePassword], [TenKH], [Phone], [Email]) VALUES (N'a', N'123', N'123', N'Nguyen Van A', N'0123456789', N'abc@gmail.com')
INSERT [dbo].[User] ([UserName], [Password], [RePassword], [TenKH], [Phone], [Email]) VALUES (N'Admin', N'1', N'1', N'Admin', N'Admin', N'Admin@gmail.com')
INSERT [dbo].[User] ([UserName], [Password], [RePassword], [TenKH], [Phone], [Email]) VALUES (N'b', N'123', N'123', N'Nguyen Van B', N'0987654321', N'bac@gmail.com')
INSERT [dbo].[User] ([UserName], [Password], [RePassword], [TenKH], [Phone], [Email]) VALUES (N'dat', N'1', N'1', N'tienanh', N'0123456789', N'tienanh@gmail.com')
INSERT [dbo].[User] ([UserName], [Password], [RePassword], [TenKH], [Phone], [Email]) VALUES (N'tienanh', N'1', N'1', N'tienanh', N'0123456789', N'tienanh@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (2, 1, N'a', 15)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (3, 1, N'a', 16)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (4, 1, N'a', 18)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (5, 1, N'tienanh', 16)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (6, NULL, NULL, NULL)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (7, NULL, NULL, NULL)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (8, NULL, NULL, 12)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (9, 11, N'a', 10)
INSERT [dbo].[Ve] ([MaVe], [MaSuatChieu], [UserName], [SoGhe]) VALUES (10, 7, N'dat', 1)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_CaChieu] FOREIGN KEY([CaChieu])
REFERENCES [dbo].[CaChieu] ([MaCa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_CaChieu]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phim]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_PhongChieu] FOREIGN KEY([SoPhongChieu])
REFERENCES [dbo].[PhongChieu] ([SoPhongChieu])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_PhongChieu]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TheLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TheLoai]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([MaSuatChieu])
REFERENCES [dbo].[LichChieu] ([MaSuatChieu])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_User]
GO
USE [master]
GO
ALTER DATABASE [QuanLiRapPhim] SET  READ_WRITE 
GO
