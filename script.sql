USE [master]
GO
/****** Object:  Database [DbProjectYAF]    Script Date: 10/11/2017 18.20.28 ******/
CREATE DATABASE [DbProjectYAF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbProjectYAF', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DbProjectYAF.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DbProjectYAF_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DbProjectYAF_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DbProjectYAF] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbProjectYAF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbProjectYAF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbProjectYAF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbProjectYAF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbProjectYAF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbProjectYAF] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbProjectYAF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbProjectYAF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DbProjectYAF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbProjectYAF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbProjectYAF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbProjectYAF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbProjectYAF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbProjectYAF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbProjectYAF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbProjectYAF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbProjectYAF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbProjectYAF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbProjectYAF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbProjectYAF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbProjectYAF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbProjectYAF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbProjectYAF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbProjectYAF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbProjectYAF] SET RECOVERY FULL 
GO
ALTER DATABASE [DbProjectYAF] SET  MULTI_USER 
GO
ALTER DATABASE [DbProjectYAF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbProjectYAF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbProjectYAF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbProjectYAF] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbProjectYAF', N'ON'
GO
USE [DbProjectYAF]
GO
/****** Object:  Table [dbo].[karyawan_detail]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_detail](
	[no] [int] IDENTITY(1,1) NOT NULL,
	[nama_karyawan] [varchar](50) NOT NULL,
	[project] [varchar](50) NULL,
	[kantor] [int] NULL,
	[transport] [int] NULL,
	[cuti] [int] NULL,
	[sakit] [int] NULL,
	[terlambat] [int] NULL,
	[reward] [money] NULL,
	[lembur] [money] NULL,
	[tipe_klaim] [varchar](50) NULL,
	[jumlah] [money] NULL,
	[no_rek] [varchar](50) NULL,
	[periode_detail] [varchar](50) NULL,
	[total] [money] NULL,
 CONSTRAINT [PK_karyawan_detail] PRIMARY KEY CLUSTERED 
(
	[nama_karyawan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[karyawan_headers]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_headers](
	[no] [varchar](50) NULL,
	[nama] [varchar](50) NULL,
	[jenis_kelamin] [varchar](50) NULL,
	[cabang] [varchar](50) NULL,
	[tanggal_masuk] [date] NULL,
	[nik] [varchar](50) NULL,
	[no_absen] [varchar](50) NULL,
	[no_rekening] [varchar](50) NULL,
	[periode_header] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[karyawan_keterangan]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_keterangan](
	[kode_keterangan] [varchar](50) NULL,
	[kantor] [int] NULL,
	[transport] [int] NULL,
	[cuti] [int] NULL,
	[sakit] [int] NULL,
	[terlambat] [int] NULL,
	[reward] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[karyawan_klaim]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_klaim](
	[kode_klaim] [varchar](50) NULL,
	[transport] [money] NULL,
	[parkir] [money] NULL,
	[kesehatan] [money] NULL,
	[bpjs] [money] NULL,
	[reward_monthly] [money] NULL,
	[reward_triwulan] [money] NULL,
	[taxi] [money] NULL,
	[entertain_internal] [money] NULL,
	[entertain_external] [money] NULL,
	[other] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[karyawan_other]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_other](
	[kode_other] [varchar](50) NULL,
	[desc_other] [varchar](50) NULL,
	[value_other] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[karyawan_projects]    Script Date: 10/11/2017 18.20.28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[karyawan_projects](
	[kode_project] [varchar](50) NULL,
	[nama_project] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[karyawan_detail] ON 

INSERT [dbo].[karyawan_detail] ([no], [nama_karyawan], [project], [kantor], [transport], [cuti], [sakit], [terlambat], [reward], [lembur], [tipe_klaim], [jumlah], [no_rek], [periode_detail], [total]) VALUES (1, N'Aji', N'FIF', 12, 21, 1, 0, 10, 10.0000, 10.0000, N'1', 200000.0000, N'HSJB6802', N'September', 2000000.0000)
SET IDENTITY_INSERT [dbo].[karyawan_detail] OFF
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'1', N'Bharat Ongso', N'L', N'IGT', CAST(0x75250B00 AS Date), N'01010001', N'01001', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'2', N'Imam Nurcahyo', N'L', N'IGT', CAST(0x75250B00 AS Date), N'01010003', N'01003', N'164 - 036 - 3963', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'3', N'Sukardi Nur', N'L', N'IGT', CAST(0x75250B00 AS Date), N'01010002', N'01002', N'397 - 110 - 6806', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'4', N'Herman', N'L', N'IGT', CAST(0x68260B00 AS Date), N'01110031', N'01031', N'494 - 003 - 0833', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'5', N'Hendry Himawan', N'L', N'IGT', CAST(0xE2260B00 AS Date), N'02010047', N'02047', N'218 - 146 - 4161', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'6', N'Eddy Sukardi', N'L', N'IGT', CAST(0x02270B00 AS Date), N'02020017', N'02017', N'372 - 110 - 8676', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'7', N'Kresno Budoyo', N'L', N'IGT', CAST(0x5A270B00 AS Date), N'02050042', N'02042', N'035 - 056 - 6376', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'8', N'Johannes O Schmitt', N'L', N'IGT', CAST(0x79270B00 AS Date), N'02070073', N'02073', N'095 - 019 - 7633', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'9', N'Wiranata Kusuma Sungkono', N'L', N'IGT', CAST(0x97270B00 AS Date), N'02070120', N'02120', N'035 - 039 - 0430', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'10', N'Irwan Tirta Phu', N'L', N'IGT', CAST(0x7B280B00 AS Date), N'03020038', N'03038', N'179 - 131 - 0704', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'11', N'Damar Alam', N'L', N'IGT', CAST(0x002B0B00 AS Date), N'04110028', N'04028', N'526 - 002 - 4002', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'12', N'Rio Hardiansyah', N'L', N'IGT', CAST(0x002B0B00 AS Date), N'04110085', N'04085', N'687 - 033 - 9451', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'13', N'Moh. Husni', N'L', N'IGT', CAST(0x2E2B0B00 AS Date), N'05010030', N'05030', N'526 - 002 - 2042', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'14', N'Mia amelia', N'P', N'IGT', CAST(0x4A2B0B00 AS Date), N'05020147', N'05147', N'552 - 021 - 0271', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'15', N'Hendra', N'L', N'IGT', CAST(0xDF2B0B00 AS Date), N'05070028', N'05028', N'179 - 125 - 7269', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'16', N'Erick Christyadi Josmady', N'L', N'IGT', CAST(0x572E0B00 AS Date), N'07030150', N'07150', N'119 - 146 - 8223', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'17', N'Tjhai Fung Cin', N'P', N'IGT', CAST(0xA22E0B00 AS Date), N'07060024', N'07024', N'527 - 079 - 7107', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'18', N'Hendy Andiawan', N'L', N'IGT', CAST(0xD82E0B00 AS Date), N'07110055', N'07055', N'434 - 108 - 6412', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'19', N'Hidayati', N'P', N'IGT', CAST(0xD82E0B00 AS Date), N'07080034', N'07034', N'739 - 054 - 5091', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'20', N'Aryanto', N'L', N'IGT', CAST(0xB4300B00 AS Date), N'08110015', N'08015', N'482 - 022 - 1813', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'21', N'Roni Wibowo', N'L', N'IGT', CAST(0xFE300B00 AS Date), N'09029989', N'09989', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'22', N'Chintia Dewi', N'P', N'IGT', CAST(0x29310B00 AS Date), N'09030026', N'09026', N'527 - 082 - 2799', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'23', N'Wilson', N'L', N'IGT', CAST(0xF0310B00 AS Date), N'09100126', N'09126', N'527 - 071 - 9360', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'24', N'Robet Rinson Sutisna', N'L', N'IGT', CAST(0x6B320B00 AS Date), N'10020159', N'10159', N'007 - 282 - 7820', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'25', N'Anju Hikari Mulyadi', N'L', N'IGT', CAST(0x6C320B00 AS Date), N'10020161', N'10161', N'683 - 015 - 5757', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'26', N'Rajib Komarudin', N'L', N'IGT', CAST(0x79320B00 AS Date), N'10020128', N'10128', N'108 - 082 - 9210', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'27', N'Muhhamad Ronny Prasetyawan', N'L', N'IGT', CAST(0xEA320B00 AS Date), N'10060135', N'10135', N'229 - 164 - 0411', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'28', N'Yuvendra', N'L', N'IGT', CAST(0x0F330B00 AS Date), N'10070167', N'10167', N'817 - 054 - 1368', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'29', N'Asari Puspa Dewi Setyarini', N'P', N'IGT', CAST(0x1A330B00 AS Date), N'10070169', N'10169', N'198 - 229 - 6123', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'30', N'Dewabrata', N'L', N'IGT', CAST(0x63330B00 AS Date), N'10100179', N'10179', N'427 - 132 - 8171', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'31', N'Adi Kurnia Ramadhan', N'L', N'IGT', CAST(0x6E330B00 AS Date), N'10100181', N'10181', N'210 - 130 - 0392', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'32', N'Brama Kumbara', N'L', N'IGT', CAST(0x7C330B00 AS Date), N'10110185', N'10185', N'218 - 162 - 5017', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'33', N'Sandrotua Dokrima Pangihutan Gajah', N'L', N'IGT', CAST(0x7E330B00 AS Date), N'10110187', N'10187', N'541 - 030 - 6991', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'34', N'Rr. Retno Ardini', N'P', N'IGT', CAST(0x83330B00 AS Date), N'10110189', N'10189', N'037 - 223 - 1571', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'35', N'Dadang ', N'L', N'IGT', CAST(0x9A330B00 AS Date), N'10060136', N'10136', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'36', N'Lidya Novrida Ambarita', N'P', N'IGT', CAST(0xA8330B00 AS Date), N'10120145', N'10145', N'198 - 229 - 3922', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'37', N'Warih Sabdani', N'P', N'IGT', CAST(0xB6330B00 AS Date), N'10120195', N'10195', N'198 - 402 - 4323', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'38', N'Anna Mareta Masie', N'P', N'IGT', CAST(0xBB330B00 AS Date), N'11010196', N'11196', N'775 - 067 - 1980', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'39', N'Muhamad Lutfi Abduloh', N'L', N'IGT', CAST(0xC9330B00 AS Date), N'11010203', N'11203', N'835 - 000 - 5138', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'40', N'Roy Ridho Semata', N'L', N'IGT', CAST(0xC9330B00 AS Date), N'11010204', N'11204', N'167 - 064 - 3758', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'41', N'Etika Fitriana', N'P', N'ICN', CAST(0xD2330B00 AS Date), N'11010207', N'11207', N'887 - 023 - 9280', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'42', N'Anton Budi Pranata', N'L', N'IGT', CAST(0xE5330B00 AS Date), N'11020211', N'11211', N'199 - 023 - 1300', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'43', N'Helen Lumban Tobing', N'P', N'IGT', CAST(0xEE330B00 AS Date), N'11020218', N'11218', N'198 - 226 - 4345', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'44', N'Dyahrianti Sedianingtyas', N'P', N'IGT', CAST(0x0C340B00 AS Date), N'11030226', N'11226', N'869 - 078 - 6509', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'45', N'Duwi Cahya Putri Pratiwi', N'P', N'IGT', CAST(0x1D340B00 AS Date), N'11040231', N'11231', N'893 - 019 - 4043', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'46', N'Fery Tino Maslianto', N'L', N'IMK', CAST(0x31340B00 AS Date), N'11050232', N'11232', N'035 - 008 - 9268', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'47', N'Rizky Trinanda Sebastian', N'L', N'IGT', CAST(0x32340B00 AS Date), N'11050235', N'11235', N'527 - 010 - 4811', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'48', N'Agus Eka Prasetyo', N'L', N'IMK', CAST(0x6E340B00 AS Date), N'11070245', N'11245', N'035 - 424 - 1729', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'49', N'Muhamad Haikal', N'L', N'IGT', CAST(0x78340B00 AS Date), N'11070250', N'11250', N'527 - 012 - 1740', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'50', N'Silvie', N'P', N'IGT', CAST(0xC0340B00 AS Date), N'11090252', N'11252', N'705 - 010 - 5321', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'51', N'Muhammad Hafid', N'L', N'IGT', CAST(0xD3340B00 AS Date), N'11100255', N'11255', N'414 - 180 - 3357', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'52', N'Antik Nurhayati', N'P', N'IGT', CAST(0xE1340B00 AS Date), N'11100259', N'11259', N'162 -1192 - 758', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'53', N'Endrik Kurniawan', N'L', N'IGT', CAST(0xE1340B00 AS Date), N'11100258', N'11258', N'139 - 176 - 7179', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'54', N'Neno Ardhianto Saputra', N'L', N'IGT', CAST(0xE9340B00 AS Date), N'11110265', N'11265', N'796 - 026 - 5577', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'55', N'Syamsul Bachri', N'L', N'IGT', CAST(0x07350B00 AS Date), N'11120273', N'11273', N'835 - 001 - 6415', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'56', N'Fajriyan Athoillah ', N'L', N'IGT', CAST(0x07350B00 AS Date), N'11120272', N'11272', N'835 - 001 - 6512', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'57', N'Akbar Maulana', N'L', N'IGT', CAST(0x45350B00 AS Date), N'12020283', N'12283', N'198 - 233 - 2804', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'58', N'Parlindungan Martin', N'L', N'IGT', CAST(0x4C350B00 AS Date), N'12020288', N'12288', N'198 - 233 - 4521', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'59', N'Dilla Fadhilah', N'P', N'IGT', CAST(0x51350B00 AS Date), N'12020291', N'12291', N'198 - 405 - 3412', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'60', N'Wendy Bayu Ikranegara', N'L', N'IGT', CAST(0x59350B00 AS Date), N'12020294', N'12294', N'035 - 039 - 0430', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'61', N'Dini Urwati Wusqa', N'P', N'IGT', CAST(0x62350B00 AS Date), N'12030296', N'12296', N'037 - 244 - 2172', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'62', N'Martine Eka Putra', N'L', N'IGT', CAST(0x6A350B00 AS Date), N'12030299', N'12299', N'198 - 001 - 7661', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'63', N'Sugeng Prasetyo', N'L', N'IGT', CAST(0x70350B00 AS Date), N'12030301', N'12301', N'287 - 228 - 6757', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'64', N'Grant Andress', N'L', N'IGT', CAST(0xFB350B00 AS Date), N'12080317', N'12317', N'282 - 007 - 5377', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'65', N'Fauzan Nur Huda', N'L', N'IGT', CAST(0xFB350B00 AS Date), N'12080322', N'12322', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'66', N'Herru Anggara', N'L', N'IGT', CAST(0x69360B00 AS Date), N'12110332', N'12332', N'343 - 060 - 0019', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'67', N'Suzanna Murtany', N'P', N'IGT', CAST(0x96360B00 AS Date), N'13010340', N'13340', N'307 - 010 - 3639', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'68', N'Sylvia Astrida Gozali', N'P', N'IMK', CAST(0xB6360B00 AS Date), N'13030352', N'13352', N'680 - 041 - 2232', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'69', N'Handri Fajar Budiman', N'L', N'IGT', CAST(0xFC360B00 AS Date), N'13040354', N'13354', N'272 - 164 - 0169', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'70', N'Pradipta Brahmandia', N'L', N'IGT', CAST(0x04370B00 AS Date), N'10100182', N'10182', N'663 - 060 - 6061', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'71', N'Diyas Chandra Kandikaresi', N'L', N'IGT', CAST(0x06370B00 AS Date), N'13040359', N'13359', N'473 - 125 - 6530', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'72', N'Dwi Restiany', N'P', N'IMK', CAST(0x18370B00 AS Date), N'13050362', N'13362', N'162 - 120 - 1307', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'73', N'Wulan Pamudica Fikroh', N'P', N'IGT', CAST(0x2D370B00 AS Date), N'13060378', N'13378', N'198 - 237 - 6437', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'74', N'Imamul Muttaqin', N'L', N'IGT', CAST(0x3B370B00 AS Date), N'13060381', N'13381', N'066 - 289 - 3682', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'75', N'Sugiharto', N'L', N'IGT', CAST(0x3B370B00 AS Date), N'13060384', N'13384', N'638 - 013 - 7486', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'76', N'Supriyadi', N'L', N'IMK', CAST(0x50370B00 AS Date), N'13070394', N'13394', N'547 - 505 - 4391', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'77', N'Tetra Sunu Dioh', N'L', N'IGT', CAST(0x5E370B00 AS Date), N'13070391', N'13391', N'437 - 144 - 7525', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'78', N'Heru Margono', N'L', N'IGT', CAST(0x87370B00 AS Date), N'13090397', N'13397', N'577 - 065 - 9487', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'79', N'R.K Novian Faisal. S', N'L', N'IGT', CAST(0xB4370B00 AS Date), N'13100414', N'13414', N'687 - 069 -3255', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'80', N'Elviyani', N'P', N'IGT', CAST(0xC0370B00 AS Date), N'13100413', N'13413', N'248 - 159 - 7686', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'81', N'Jean Pierrot Urban Gozali', N'L', N'IGT', CAST(0xC4370B00 AS Date), N'13100409', N'13409', N'218 - 166 - 5159', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'82', N'Suhardi', N'L', N'IGT', CAST(0xC4370B00 AS Date), N'13100410', N'13410', N'218 - 166 - 6198', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'83', N'Sahroni', N'L', N'IGT', CAST(0xE3370B00 AS Date), N'13110418', N'13418', N'162 - 122 - 9155', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'84', N'Ferdy Yusuf Djoendjoenan', N'L', N'IGT', CAST(0xE7370B00 AS Date), N'13110420', N'13420', N'777 - 137 - 9013', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'85', N'Vincent', N'L', N'IGT', CAST(0x01380B00 AS Date), N'13120422', N'13422', N'277 - 165 - 4161', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'86', N'Wulan Krista Waty', N'P', N'IGT', CAST(0x30380B00 AS Date), N'14020426', N'14426', N'792 - 071 - 2309', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'87', N'Saiful Rohman', N'L', N'IGT', CAST(0x33380B00 AS Date), N'14020437', N'14437', N'680 - 012 - 9221', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'88', N'Aditya Robby Javier', N'L', N'IGT', CAST(0x3B380B00 AS Date), N'14020431', N'14431', N'108 - 462 - 7626', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'89', N'Mulyono Jamaludin', N'L', N'IGT', CAST(0x3B380B00 AS Date), N'14020432', N'14432', N'162 - 122 - 3050', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'90', N'Vincent Santausa', N'L', N'IGT', CAST(0x45380B00 AS Date), N'14030427', N'14427', N'038 - 432 - 6001', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'91', N'Suci Mudiati', N'P', N'IGT', CAST(0x5D380B00 AS Date), N'14040440', N'14440', N'268 -124 - 9526', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'92', N'Syarifatunisa Marmalia Putri', N'P', N'IGT', CAST(0x6A380B00 AS Date), N'14040438', N'14438', N'198 - 239 - 1169', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'93', N'Arvin', N'L', N'IGT', CAST(0x84380B00 AS Date), N'14050445', N'14445', N'658 - 059 - 6027', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'94', N'Nofan Irkham Munawar', N'L', N'IGT', CAST(0x86380B00 AS Date), N'14050446', N'14446', N'505 - 025 - 6601', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'95', N'Bayu Adi Yudha Prasetya', N'L', N'IGT', CAST(0xA7380B00 AS Date), N'14060455', N'14455', N'740 - 118 - 1915', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'96', N'Jonhson Subianto', N'L', N'IGT', CAST(0xD8380B00 AS Date), N'14080460', N'14460', N'527 - 019 - 6707', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'97', N'Tri Wahyu Indratno', N'L', N'IGT', CAST(0xDF380B00 AS Date), N'14080462', N'14462', N'230 - 085 - 5868', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'98', N'Dwi Haryantari', N'P', N'IGT', CAST(0xF4380B00 AS Date), N'14090470', N'14470', N'647 - 037 - 6439', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'99', N'Wilda Saputri', N'P', N'IGT', CAST(0x03390B00 AS Date), N'14090478', N'14478', N'248 - 160 - 4771', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'100', N'M. Irwan Hasanudin', N'L', N'IGT', CAST(0x18390B00 AS Date), N'14100496', N'14496', N'756 - 019 - 0705', NULL)
GO
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'101', N'Adi Pradana', N'L', N'IGT', CAST(0x18390B00 AS Date), N'14100490', N'14490', N'880 - 067 - 0455', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'102', N'Titiek Martha', N'P', N'IGT', CAST(0x20390B00 AS Date), N'14100488', N'14488', N'134 - 063 - 0609', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'103', N'Ika Puspa Nurani Amir Ys', N'P', N'IGT', CAST(0x20390B00 AS Date), N'14100497', N'14497', N'008 - 099 - 8767', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'104', N'Bahur Hidayat', N'L', N'IGT', CAST(0x25390B00 AS Date), N'14100499', N'14499', N'198 - 245 - 4420', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'105', N'Boby Widjaja', N'L', N'IGT', CAST(0x3A390B00 AS Date), N'14110505', N'14505', N'467 - 152 - 7873', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'106', N'Nur Sakinah DS', N'P', N'IGT', CAST(0x4F390B00 AS Date), N'14090507', N'14507', N'768 -511 -7240', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'107', N'Nadia Fitri Alviani', N'P', N'IGT', CAST(0x66390B00 AS Date), N'14120511', N'14511', N'203 - 040 - 1771', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'108', N'Tabita Dewi Krismanawati', N'P', N'IMK', CAST(0x72390B00 AS Date), N'15010518', N'15518', N'869 - 085 - 3737', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'109', N'Didi Prasetiyo', N'L', N'IGT', CAST(0x72390B00 AS Date), N'15010516', N'15516', N'198 - 247 - 4749', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'110', N'Fahrudin Julianto', N'L', N'IGT', CAST(0x80390B00 AS Date), N'15010523', N'15523', N'198 - 241 - 8580', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'111', N'Noviyanti', N'P', N'IGT', CAST(0x8E390B00 AS Date), N'15020524', N'15524', N'527 - 110 - 0982', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'112', N'Tania Larasati', N'P', N'IGT', CAST(0x95390B00 AS Date), N'15020525', N'15525', N'709 - 025 - 5449', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'113', N'Merkyana Nancy Sitorus', N'P', N'IGT', CAST(0xB8390B00 AS Date), N'15030531', N'15531', N'835 - 004 - 4397', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'114', N'Maryuri Septreziera', N'P', N'IGT', CAST(0xC1390B00 AS Date), N'15030541', N'15541', N'527 - 013 - 4787', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'115', N'Kevin Krisandi', N'L', N'IGT', CAST(0xCD390B00 AS Date), N'15040533', N'15533', N'527 - 100 - 0945', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'116', N'Loe Angela Muliawan', N'P', N'IGT', CAST(0xD6390B00 AS Date), N'15040535', N'15535', N'527 - 111 - 2590', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'117', N'Arya Isfandiari', N'L', N'IGT', CAST(0xE9390B00 AS Date), N'15050537', N'15537', N'527 - 100 - 3430', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'118', N'Soelini', N'P', N'IGT', CAST(0x1A3A0B00 AS Date), N'15060588', N'15588', N'746 - 007 - 5232', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'119', N'Rezkar Junistra Santoso', N'L', N'IGT', CAST(0x423A0B00 AS Date), N'15080542', N'15542', N'198 -244 - 1191', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'120', N'Amroh', N'P', N'IGT', CAST(0x4B3A0B00 AS Date), N'15080545', N'15545', N'134 - 165 - 0947', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'121', N'Dameria Christina Pasaribu', N'P', N'IGT', CAST(0x6E3A0B00 AS Date), N'15090546', N'15546', N'535 - 007 - 7091', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'122', N'Ahmad Hariyanto', N'L', N'IMK', CAST(0x6E3A0B00 AS Date), N'15090550', N'15550', N'179 - 007 - 5249', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'123', N'Siti Muslikah', N'P', N'IGT', CAST(0x753A0B00 AS Date), N'15100547', N'15547', N'162 - 000 - 2948', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'124', N'Nikko Nugraha', N'L', N'IGT', CAST(0x7F3A0B00 AS Date), N'15100558', N'15558', N'527 - 107 - 2075', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'125', N'Tommi Irawan', N'L', N'IGT', CAST(0x7F3A0B00 AS Date), N'15100557', N'15557', N'681 - 504 - 3247', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'126', N'Yogie Setiawan Nugraha', N'L', N'IGT', CAST(0x7F3A0B00 AS Date), N'15100556', N'15556', N'681 - 504 - 3450', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'127', N'Noverdi Safrizal', N'L', N'IGT', CAST(0x833A0B00 AS Date), N'15100554', N'15554', N'527 - 106 - 1065', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'128', N'Grayfield Miracle Moningkey', N'L', N'IGT', CAST(0x8E3A0B00 AS Date), N'15100565', N'15565', N'198 - 000 - 4968', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'129', N'Rizky Permana', N'L', N'IGT', CAST(0x8E3A0B00 AS Date), N'15100564', N'15564', N'473 - 138 - 0222', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'130', N'Alvinadi Widjaja', N'L', N'IGT', CAST(0x913A0B00 AS Date), N'15100561', N'15561', N'093 - 151 - 1661', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'131', N'Sodir', N'L', N'IGT', CAST(0x9E3A0B00 AS Date), N'15110689', N'15689', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'132', N'Bayu Sugara', N'L', N'IMK', CAST(0x9F3A0B00 AS Date), N'15110569', N'15569', N'230 - 188 - 6774', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'133', N'Danu Andaru', N'L', N'IGT', CAST(0xAE3A0B00 AS Date), N'15110573', N'15573', N'777 - 200 - 9448', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'134', N'Fajar Hening Kartika', N'L', N'IGT', CAST(0xAE3A0B00 AS Date), N'15110574', N'15574', N'343 - 098 - 1608', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'135', N'Jeffry Listiyadi', N'L', N'IGT', CAST(0xAE3A0B00 AS Date), N'15110572', N'15572', N'198 - 006 - 6162', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'136', N'Yoga Wiranda', N'L', N'IGT', CAST(0xAE3A0B00 AS Date), N'15110571', N'15571', N'198 - 000 - 6189', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'137', N'Nisrinah Nur M', N'P', N'IGT', CAST(0xBC3A0B00 AS Date), N'15120560', N'15560', N'715 - 056 - 5281', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'138', N'Ruli Pirmansyah', N'L', N'IGT', CAST(0xC23A0B00 AS Date), N'15120576', N'15576', N'198 - 251 - 9700', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'139', N'Ahmad Mulyana', N'L', N'IMK', CAST(0xC23A0B00 AS Date), N'15120577', N'15577', N'165 - 223 - 0410', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'140', N'Aditiya Nugraha', N'L', N'IGT', CAST(0xD73A0B00 AS Date), N'15120580', N'15580', N'730 - 018 - 2652', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'141', N'Ardi Pratama Riyadi', N'L', N'IGT', CAST(0xD73A0B00 AS Date), N'15120582', N'15582', N'162 - 004 -4730', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'142', N'Fetra Fydhianto', N'L', N'IGT', CAST(0xD73A0B00 AS Date), N'15120581', N'15581', N'162 - 004 - 5051', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'143', N'Imran Permadi', N'L', N'IGT', CAST(0xD73A0B00 AS Date), N'15120579', N'15579', N'162 - 000 - 3243', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'144', N'Hasty dwi Utami', N'P', N'IGT', CAST(0xE23A0B00 AS Date), N'16010584', N'16584', N'546 - 520 - 7831', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'145', N'Fredy Rythovius Lie', N'L', N'IGT', CAST(0xEF3A0B00 AS Date), N'16010586', N'16586', N'878 - 010 - 0878', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'146', N'Rizal Saputra', N'L', N'IMK', CAST(0xFA3A0B00 AS Date), N'16020611', N'16611', N'869 - 041 - 9301', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'147', N'Luqman Mujianto', N'L', N'IGT', CAST(0x023B0B00 AS Date), N'16020585', N'16585', N'501 - 016 - 6502', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'148', N'Laili Fitriati', N'P', N'IGT', CAST(0x0F3B0B00 AS Date), N'16020589', N'16589', N'035 - 434 - 9562', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'149', N'Achmad Ari Wibowo', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010591', N'16591', N'593 - 031 - 0389', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'150', N'Afdal Yursa', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010597', N'16597', N'198 - 253 - 1700', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'151', N'Agus Nurul Iman', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010593', N'16593', N'218 - 005 - 5927', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'152', N'Albar Hutomo Putra', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010592', N'16592', N'092 - 000 - 5985', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'153', N'Andar Prasetyo', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010596', N'16596', N'092 - 000 - 0924', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'154', N'Awaludin Azis', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010594', N'16594', N'476 - 807 - 3561', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'155', N'Herman Johannes', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010599', N'16599', N'066 - 249 - 5644', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'156', N'Ivan Rekyan Fitrayana', N'L', N'IGT', CAST(0x123B0B00 AS Date), N'16010600', N'16600', N'374 - 075 - 9859', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'157', N'Ali Murtado', N'L', N'IGT', CAST(0x133B0B00 AS Date), N'16010601', N'16601', N'835 - 099 - 3640', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'158', N'Dery Willy Cahyadi', N'L', N'IGT', CAST(0x133B0B00 AS Date), N'16010604', N'16604', N'587 - 508 - 3713', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'159', N'Johanes Parasi', N'L', N'IGT', CAST(0x133B0B00 AS Date), N'16010602', N'16602', N'761 - 065 - 0265', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'160', N'Arif Nur Yahya', N'L', N'IGT', CAST(0x163B0B00 AS Date), N'16030606', N'16606', N'199 - 098 - 5801', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'161', N'Irwan Anwar', N'L', N'IGT', CAST(0x163B0B00 AS Date), N'16030607', N'16607', N'835 -  099 - 3607', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'162', N'Richard Mario', N'L', N'IGT', CAST(0x163B0B00 AS Date), N'16030608', N'16608', N'663 - 036 - 3959', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'163', N'Sendiawan Widarja', N'L', N'IGT', CAST(0x163B0B00 AS Date), N'16030609', N'16609', N'546 - 501 - 4536', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'164', N'Roy Deardth', N'L', N'IGT', CAST(0x183B0B00 AS Date), N'16030610', N'16610', N'165 - 006 - 3682', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'165', N'Ari Kusumo Wicaksono', N'L', N'IGT', CAST(0x393B0B00 AS Date), N'16040615', N'16615', N'577 - 100 - 7024', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'166', N'Astuti Purwaninsi', N'P', N'IGT', CAST(0x393B0B00 AS Date), N'16040616', N'16616', N'198 - 001 -1310', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'167', N'Diani Widyaningrum', N'P', N'IGT', CAST(0x393B0B00 AS Date), N'16040618', N'16618', N'551 - 070 - 5337', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'168', N'Ika Multi Surfiyanti', N'P', N'IMK', CAST(0x3B3B0B00 AS Date), N'16040630', N'16630', N'624 - 072 - 3016', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'169', N'Fadhlan Ahdian Pratama', N'L', N'IGT', CAST(0x433B0B00 AS Date), N'16040623', N'16623', N'547 - 101 - 4843', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'170', N'Jonggara Clinton', N'L', N'IGT', CAST(0x433B0B00 AS Date), N'16040626', N'16626', N'549 - 030 - 3067', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'171', N'Reza Aulia', N'L', N'IGT', CAST(0x433B0B00 AS Date), N'16040627', N'16627', N'872 - 101 - 1364', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'172', N'Valenthia Andriani Tiar', N'P', N'IGT', CAST(0x433B0B00 AS Date), N'16040628', N'16628', N'198 - 001 - 1239', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'173', N'Yoel Elbin Samuel Nababan', N'L', N'IGT', CAST(0x433B0B00 AS Date), N'16040629', N'16629', N'406 - 085 - 7879', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'174', N'Muhammad Hendrie Kurniawan', N'L', N'IGT', CAST(0x553B0B00 AS Date), N'16050632', N'16632', N'-', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'175', N'Hendra Sulanjana', N'L', N'IGT', CAST(0x783B0B00 AS Date), N'16060636', N'16636', N'775 - 013 - 8343', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'176', N'Siska Dwi Hastuti', N'P', N'IGT', CAST(0x783B0B00 AS Date), N'16060634', N'16634', N'527 - 093 - 7316', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'177', N'Fatur Rahman', N'L', N'IMK', CAST(0x863B0B00 AS Date), N'16060638', N'16638', N'681 - 507 - 8113', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'178', N'Ahmad Wahyu Pujianto', N'L', N'IMK', CAST(0x8D3B0B00 AS Date), N'16060639', N'16639', N'591 - 014 - 3010', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'179', N'Yacobus Sandi', N'L', N'IGT', CAST(0x9B3B0B00 AS Date), N'16070640', N'16640', N'016 - 014 - 9884', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'180', N'Hertayani Sihombing', N'P', N'IGT', CAST(0xA33B0B00 AS Date), N'16070641', N'16641', N'035 - 445 - 2975', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'181', N'Ernita Susanti', N'P', N'IGT', CAST(0xA63B0B00 AS Date), N'16070644', N'16644', N'537 - 510 - 6971', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'182', N'Yuli ', N'P', N'IGT', CAST(0xA93B0B00 AS Date), N'17020700', N'17700', N'514 - 019 - 3757', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'183', N'Sam Setya Mandiri', N'L', N'IGT', CAST(0xBF3B0B00 AS Date), N'16080646', N'16646', N'527 -  081 - 8945', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'184', N'Furqanuddin', N'L', N'IMK', CAST(0xCF3B0B00 AS Date), N'16080648', N'16648', N'661 - 066 - 8362', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'185', N'Tenti Hanna Sariani', N'P', N'IGT', CAST(0xDB3B0B00 AS Date), N'16090649', N'16649', N'633 - 069 - 2128', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'186', N'Elizabeth Novtalia Ratu Putri', N'P', N'IGT', CAST(0xDB3B0B00 AS Date), N'16090647', N'16647', N'654 - 027 - 9029', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'187', N'Ricky Maulana', N'L', N'IMK', CAST(0xEF3B0B00 AS Date), N'16100660', N'16660', N'715 - 090 - 2406', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'188', N'Matius Erick Prabowo', N'L', N'IGT', CAST(0xF03B0B00 AS Date), N'16100654', N'16654', N'001 - 122 - 5844', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'189', N'Icbal Aditya Firmansyah', N'L', N'IMK', CAST(0xF93B0B00 AS Date), N'16100662', N'16662', N'687 - 124 - 3562', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'190', N'Nova Nur Priyono', N'L', N'IGT', CAST(0x123C0B00 AS Date), N'16110663', N'16663', N'253 - 888 - 1991', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'191', N'Haryanto', N'L', N'IGT', CAST(0x203C0B00 AS Date), N'16110670', N'16670', N'581 - 019 - 8445', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'192', N'Eugenius Yosep Korsan Nuhuyanan', N'L', N'IGT', CAST(0x273C0B00 AS Date), N'16110672', N'16672', N'011 - 537 - 4791', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'193', N'Ossa Naviana', N'P', N'IGT', CAST(0x2A3C0B00 AS Date), N'16120678', N'16678', N'145 - 130 - 1930', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'194', N'Ghazali', N'L', N'IGT', CAST(0x2F3C0B00 AS Date), N'16120674', N'16674', N'121 - 113 - 7261', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'195', N'Alan Yudhistira', N'L', N'IGT', CAST(0x3C3C0B00 AS Date), N'16120668', N'16668', N'527 - 104 - 1498', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'196', N'Maulidya Nurhasanah', N'P', N'IGT', CAST(0x3C3C0B00 AS Date), N'16120680', N'16680', N'654 - 029 - 5091', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'197', N'Mia Rosdiana', N'P', N'IGT', CAST(0x3E3C0B00 AS Date), N'16120675', N'16675', N'633 - 029 - 8659', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'198', N'Rica Mandasari', N'P', N'IGT', CAST(0x4B3C0B00 AS Date), N'17010682', N'17682', N'539 - 058 - 2554', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'199', N'Shelly Silviah', N'P', N'IGT', CAST(0x4B3C0B00 AS Date), N'17010683', N'17683', N'547 - 047 - 0391', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'200', N'Budi', N'L', N'IGT', CAST(0x4C3C0B00 AS Date), N'17010685', N'17685', N'527 - 033 - 3933', NULL)
GO
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'201', N'Afra Zahara', N'P', N'IGT', CAST(0x4E3C0B00 AS Date), N'17010687', N'17687', N'223 - 005 - 9279', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'202', N'Sri Raharjo', N'L', N'IGT', CAST(0x533C0B00 AS Date), N'17010676', N'17676', N'775 - 060 - 4522', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'203', N'Agus Trianto', N'L', N'IGT', CAST(0x583C0B00 AS Date), N'17010696', N'17696', N'431 - 034 - 9327', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'204', N'Ahmad Ridho Murdi', N'L', N'IGT', CAST(0x583C0B00 AS Date), N'17010695', N'17695', N'345 - 014 - 5580', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'205', N'Dwi Cahya Pramanda', N'L', N'IGT', CAST(0x583C0B00 AS Date), N'17010697', N'17697', N'046 - 132 - 2351', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'206', N'Fadilah Aditya', N'L', N'IGT', CAST(0x5F3C0B00 AS Date), N'17010691', N'17691', N'145  -  143 -  5111', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'207', N'Fadly Mardhana', N'L', N'IGT', CAST(0x623C0B00 AS Date), N'17010699', N'17699', N'021 - 021 - 8565', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'208', N'James Christian Pangemanan K', N'L', N'IGT', CAST(0x663C0B00 AS Date), N'17010688', N'17688', N'761 - 057 - 6600', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'209', N'Adhitya Bayu Windyartha', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020707', N'17707', N'198 - 003 - 8480', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'210', N'Riyaldo Rio Parakasi', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020709', N'17709', N'414 - 020 - 4680', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'211', N'Adi Prassetio', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020702', N'17702', N'552 - 019 - 6686', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'212', N'Akbar Semesta', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020703', N'17703', N'552 - 018 -9311', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'213', N'Aditya Fitrah Fauzi', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020706', N'17706', N'198 - 003 - 4743', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'214', N'Muhamad Junaidi Salam', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020708', N'17708', N'198 - 003 - 4336', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'215', N'Septyandi Khairul Viki', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020710', N'17710', N'301 - 004 - 0832', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'216', N'Slamet Riyadi', N'L', N'IGT', CAST(0x683C0B00 AS Date), N'17020711', N'17711', N'198 - 003 - 8501', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'217', N'Ayu Indah Pertiwi', N'P', N'IGT', CAST(0x683C0B00 AS Date), N'17020728', N'17728', N'399 - 002 - 2894', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'218', N'Reisa Nidya Putri', N'P', N'IGT', CAST(0x6D3C0B00 AS Date), N'17020701', N'17701', N'527 - 129 - 5481', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'219', N'Handy Utama Gunardi', N'L', N'IGT', CAST(0x743C0B00 AS Date), N'17020712', N'17712', N'693 - 003 - 1974', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'220', N'Faisal Ichi Riyansah', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020714', N'17714', N'872 - 024 - 2258', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'221', N'Fajar Istiqomah', N'P', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020715', N'17715', N'253 - 003 - 8176', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'222', N'Irawan Wisnu Wardana', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020716', N'17716', N'835 - 005 - 3850', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'223', N'Reinaldo Noviandri', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020717', N'17717', N'094 - 829 - 9821', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'224', N'Rio Gunardi', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020718', N'17718', N'887 - 006 - 3681', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'225', N'Susilo Widiksono', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020719', N'17719', N'675 - 508 - 6294', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'226', N'Vicki Wahyudianto', N'L', N'IGT', CAST(0x7D3C0B00 AS Date), N'17020720', N'17720', N'624 - 073 - 9508', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'227', N'Evi Ropiah Nurlette', N'P', N'IGT', CAST(0x833C0B00 AS Date), N'17020721', N'17721', N'375 - 140 - 7287', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'228', N'Reno Velozy', N'L', N'IGT', CAST(0x843C0B00 AS Date), N'17030722', N'17722', N'037 - 351 - 0651', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'229', N'Suci Putri Herizona', N'P', N'IGT', CAST(0x853C0B00 AS Date), N'17030723', N'17723', N'706 - 013 - 1851', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'230', N'Ariyanto', N'L', N'IGT', CAST(0x903C0B00 AS Date), N'17030724', N'17724', N'241 - 122 - 4840', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'231', N'Linda Susanti', N'P', N'IGT', CAST(0x943C0B00 AS Date), N'17030729', N'17729', N'273 - 007 - 2956', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'232', N'Hadi Oktafiandy', N'L', N'IGT', CAST(0x973C0B00 AS Date), N'17030726', N'17726', N'528 - 034 - 0857', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'233', N'Ridwan Saeful Rohman', N'L', N'IGT', CAST(0x973C0B00 AS Date), N'17030725', N'17725', N'198 - 003 - 8323', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'234', N'Dwi Suci Rahmayati', N'P', N'IGT', CAST(0xA53C0B00 AS Date), N'17040731', N'17731', N'687 - 110 - 6140', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'235', N'Bambang Adhytia Permana', N'L', N'IMK', CAST(0xB33C0B00 AS Date), N'17040732', N'17732', N'604 - 131 - 9582', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'236', N'Muhamad Fairuz Fatin', N'L', N'IMK', CAST(0xB43C0B00 AS Date), N'17040733', N'17733', N'885 - 074 - 6801', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'237', N'Attamazaki Huda', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040734', N'17734', N'162 - 000 - 6463', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'238', N'Deti Aisyah', N'P', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040735', N'17735', N'302 - 055 - 2718', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'239', N'Nurman Hadi', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040737', N'17737', N'501 - 036 - 0872', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'240', N'Prita Purnamasari', N'P', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040738', N'17738', N'166 - 015 - 9726', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'241', N'Shafrizal', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040739', N'17739', N'162 - 000 - 6480', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'242', N'Vincent Selwyn', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040740', N'17740', N'527 - 126 - 3229', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'243', N'Wesley Hadi Wibowo', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040741', N'17741', N'685 - 012 - 7881', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'244', N'Winoko David Christofel', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040742', N'17742', N'162 - 000 - 6455', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'245', N'Wisnu Putra Pratama', N'L', N'IGT', CAST(0xBB3C0B00 AS Date), N'17040743', N'17743', N'527 - 115 - 8867', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'246', N'Deanita Rizky Ananda', N'P', N'IGT', CAST(0xBC3C0B00 AS Date), N'17040744', N'17744', N'162 - 000 - 6498', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'247', N'Anggrini Siringoringo', N'P', N'IGT', CAST(0xC33C0B00 AS Date), N'17050745', N'17745', N'198 - 004 - 3203', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'248', N'Dimas Agung Maulana Hidayatul Irsyad', N'L', N'IGT', CAST(0xC33C0B00 AS Date), N'17050746', N'17746', N'742 - 025 - 3251', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'249', N'Muhammad Rizky Hijriyah', N'L', N'IGT', CAST(0xC33C0B00 AS Date), N'17050747', N'17747', N'664 - 009 - 9915', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'250', N'Rayza Israceswendy Susliadi', N'L', N'IGT', CAST(0xC33C0B00 AS Date), N'17050748', N'17748', N'869 - 090 - 5524', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'251', N'Siti Nur Dhea Fadlia', N'P', N'IGT', CAST(0xC33C0B00 AS Date), N'17050749', N'17749', N'505 - 003 - 6792', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'252', N'Moch. Salih Rismadi', N'L', N'IGT', CAST(0xE03C0B00 AS Date), N'17060750', N'17750', N'166 - 248 - 7168', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'253', N'Bima Galih Ritwiyan', N'L', N'IMK', CAST(0xEE3C0B00 AS Date), N'17060752', N'17752', N'084 - 050 - 9770', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'254', N'Ahmed Rayhan Primadedas', N'L', N'IMK', CAST(0xF23C0B00 AS Date), N'17060753', N'17753', N'869 - 136 - 9005', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'255', N'Fathia Noverika', N'P', N'IGT', CAST(0x003D0B00 AS Date), N'17070751', N'17751', N'218 - 160 - 8171', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'256', N'Irwansyah', N'L', N'IGT', CAST(0x023D0B00 AS Date), N'17070781', N'17781', N'501 - 035 - 7308', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'257', N'Mikdar Ma''ruf', N'L', N'IGT', CAST(0x023D0B00 AS Date), N'17070773', N'17773', N'835 - 005 - 6361', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'258', N'Mukti Wibowo', N'L', N'IGT', CAST(0x023D0B00 AS Date), N'17070775', N'17775', N'835 - 005 - 6352', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'259', N'Ramon Tia Salmon', N'L', N'IGT', CAST(0x023D0B00 AS Date), N'17070776', N'17776', N'687 - 066 - 7246', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'260', N'Riki Nuraripin', N'L', N'IGT', CAST(0x023D0B00 AS Date), N'17070778', N'17778', N'198 - 005 - 2334', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'261', N'Vina Septiani', N'P', N'IGT', CAST(0x023D0B00 AS Date), N'17070779', N'17779', N'496 - 026 - 1947', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'262', N'Frendi Muhamad', N'L', N'IGT', CAST(0x073D0B00 AS Date), N'17070755', N'17755', N'319 - 002 - 8517', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'263', N'Muhammad Rizaldy', N'L', N'IGT', CAST(0x073D0B00 AS Date), N'17070756', N'17756', N'491 - 029 - 7142', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'264', N'Fajar Nur Hadi', N'L', N'IGT', CAST(0x113D0B00 AS Date), N'17070757', N'17757', N'149 - 043 - 9591', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'265', N'Junaedi Harmiansyah ', N'L', N'IGT', CAST(0x113D0B00 AS Date), N'17070758', N'17758', N'198 - 005 - 0757', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'266', N'Muhamad Indrawan', N'L', N'IGT', CAST(0x113D0B00 AS Date), N'17070759', N'17759', N'521 - 098 - 3009', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'267', N'Rakhmat Febriana', N'L', N'IGT', CAST(0x113D0B00 AS Date), N'17070760', N'17760', N'076 - 004 - 0592', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'268', N'Tomy Hidayat', N'L', N'IGT', CAST(0x113D0B00 AS Date), N'17070761', N'17761', N'201 - 696 - 6450', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'269', N'Abdurrokhman', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070762', N'17762', N'633 - 088 - 4311', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'270', N'Beny Ramdani', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070763', N'17763', N'534 - 504 - 8798', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'271', N'Fajar Kurniawan', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070764', N'17764', N'869 - 114 - 5671', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'272', N'Febry Andryani Ramadhany', N'P', N'IGT', CAST(0x123D0B00 AS Date), N'17070765', N'17765', N'095 - 363 - 4802', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'273', N'Hendri Wiguna', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070766', N'17766', N'774 - 055 - 0866', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'274', N'Irmayanti Mandasari', N'P', N'IGT', CAST(0x123D0B00 AS Date), N'17070767', N'17767', N'527 - 156 - 9131', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'275', N'Nieno Bagus Prasetyo', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070768', N'17768', N'198 - 005 - 0714', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'276', N'Noviana Dewi', N'P', N'IGT', CAST(0x123D0B00 AS Date), N'17070769', N'17769', N'752 - 024 - 9871', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'277', N'Ratna Pratiwi Saraswati', N'P', N'IGT', CAST(0x123D0B00 AS Date), N'17070770', N'17770', N'198 - 004 - 3173', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'278', N'Warsito Rakhman', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070771', N'17771', N'127-002-3696', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'279', N'Yoseph Reynaldi Tri Putra', N'L', N'IGT', CAST(0x123D0B00 AS Date), N'17070772', N'17772', N'427 - 002 - 3849', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'280', N'Kevin Aprilian', N'L', N'IGT', CAST(0x153D0B00 AS Date), N'17070782', N'17782', N'198 - 005 - 2083', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'281', N'Muhamat Faisal Muslim', N'L', N'IGT', CAST(0x153D0B00 AS Date), N'17070774', N'17774', N'198 - 005 - 2598', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'282', N'Chalimatus Sya''diah', N'P', N'IGT', CAST(0x233D0B00 AS Date), N'17080783', N'17783', N'542 - 513 - 6728', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'283', N'Purwo Herbidartanto', N'L', N'IGT', CAST(0x383D0B00 AS Date), N'17080785', N'17785', N'883 - 032 - 6759', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'284', N'Imanika Bunga Ayu', N'P', N'IGT', CAST(0x383D0B00 AS Date), N'17080784', N'17784', N'505 - 505 - 3135', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'285', N'Amelius Berty Lengkong', N'L', N'IGT', CAST(0x3F3D0B00 AS Date), N'17090786', N'17786', N'550 - 038 - 4648', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'286', N'Viyella Jacqueline Souissay', N'P', N'IGT', CAST(0x403D0B00 AS Date), N'17080787', N'17787', N'084 - 534 - 9211', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'287', N'Agam Sumirat', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090796', N'17796', N'094 - 819 - 8234', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'288', N'Asep Saepul', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090790', N'17790', N'309 - 134 - 6859', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'289', N'Dhahat Wira Atmaja', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090788', N'17788', N'660 - 035 - 3444', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'290', N'Didi Suryanto', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090789', N'17789', N'527 - 112 - 3150', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'291', N'Edwin Purnama', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090791', N'17791', N'231 - 017 - 9372', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'292', N'Fakhryan albar', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090793', N'17793', N'531 - 512 - 1768', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'293', N'Hanif Alfath Nur Muttqin', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090801', N'17801', N'883 - 229 - 1993', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'294', N'Jadmiko Dhani', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090792', N'17792', N'437 - 107 - 3561', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'295', N'Michael Antonius', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090797', N'17797', N'066 - 096 - 1879', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'296', N'Roni Ramdani', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090799', N'17799', N'198 - 005 - 6909', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'297', N'Satria Adhika Pamungkas', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090794', N'17794', N'198 - 005 - 6658', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'298', N'Syarif Nurhidayah', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090798', N'17798', N'528 - 035 - 0429', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'299', N'Tri Puji Widiastuti', N'P', N'IGT', CAST(0x413D0B00 AS Date), N'17090803', N'17803', N'066 - 096 - 2930', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'300', N'Yusep Maulana', N'L', N'IGT', CAST(0x413D0B00 AS Date), N'17090795', N'17795', N'880 - 089 - 3756', NULL)
GO
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'301', N'Krishna Dwipayana', N'L', N'IGT', CAST(0x423D0B00 AS Date), N'17090802', N'17802', N'095 - 365 - 9325', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'302', N'Donny', N'L', N'IMK', CAST(0x433D0B00 AS Date), N'17090804', N'17804', N'656 - 008 - 8939', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'303', N'Herdian Chandra', N'L', N'IGT', CAST(0x433D0B00 AS Date), N'17090800', N'17800', N'633 - 090 - 4095', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'304', N'Viola Silvya Irene', N'P', N'IGT', CAST(0x463D0B00 AS Date), N'17090730', N'17730', N'525 - 024 - 2087', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'305', N'Muhammad Fikri Adrian', N'L', N'IGT', CAST(0x483D0B00 AS Date), N'17090819', N'17819', N'580 - 032 - 1702', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'306', N'Fajar Aziz Rasyidi', N'L', N'IGT', CAST(0x4D3D0B00 AS Date), N'17090810', N'17810', N'587 - 519 - 0005', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'307', N'Ilham Surya', N'L', N'IGT', CAST(0x4D3D0B00 AS Date), N'17090808', N'17808', N'198 - 005 - 6691', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'308', N'Nur Fadly Muhammad', N'L', N'IGT', CAST(0x4D3D0B00 AS Date), N'17090809', N'17809', N'700 - 042 - 4808', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'309', N'Rizky Fadilah', N'L', N'IGT', CAST(0x4D3D0B00 AS Date), N'17090811', N'17811', N'198 - 005 - 7051', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'310', N'Laura', N'P', N'IGT', CAST(0x4E3D0B00 AS Date), N'17090806', N'17806', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'311', N'Peter Hendry Wior', N'L', N'IGT', CAST(0x4E3D0B00 AS Date), N'17090805', N'17805', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'312', N'Rizky Amelia', N'P', N'IMK', CAST(0x573D0B00 AS Date), N'17090822', N'17822', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'313', N'Anita Sembiring', N'P', N'IGT', CAST(0x5A3D0B00 AS Date), N'17100807', N'17807', N'094 - 096 - 0983', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'314', N'Angga Rismawan', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100812', N'17812', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'315', N'Bowo Budi Prasetyo', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100813', N'17813', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'316', N'Haditya Fajri', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100814', N'17814', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'317', N'Raafindra Wahyu Pratama', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100815', N'17815', N'084 - 098 - 6705', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'318', N'Rangga Pramuda Wardana', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100816', N'17816', N'882 - 067 - 6115', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'319', N'Rudiyanto', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100817', N'17817', N'527 - 111  - 9803', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'320', N'Wildan Nugraha', N'L', N'IGT', CAST(0x5F3D0B00 AS Date), N'17100818', N'17818', N'038 - 023 - 2227', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'321', N'Deddy Effendi', N'L', N'IGT', CAST(0x623D0B00 AS Date), N'17100820', N'17820', N'084 - 432 - 4401', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'322', N'Andre Berliansyah', N'L', N'IMK', CAST(0x693D0B00 AS Date), N'17100821', N'17821', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'323', N'Zulfikar Kamal Thoric', N'L', N'IGT', CAST(0x5A3D0B00 AS Date), N'17100823', N'17823', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'324', N'Maria Goreta Lilis Sugiani Alfiansyah', N'P', N'IGT', CAST(0x793D0B00 AS Date), N'17110824', N'17824', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'325', N'Ginanjar Prambudi', N'P', N'IGT', CAST(0x693D0B00 AS Date), N'17100825', N'17825', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'326', N'Gerald Kevin Suoth', N'L', N'IDS', CAST(0x7F3A0B00 AS Date), N'15100552', N'15552', N'016 - 013 - 9030', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'327', N'Robin Valentino Sitohang', N'L', N'IDS', CAST(0xF83B0B00 AS Date), N'16100657', N'16657', N'268 - 002- 6613', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'328', N'Irfani Yusuf', N'L', N'IDS', CAST(0xFD3B0B00 AS Date), N'16100661', N'16661', N'739 - 089 - 4265', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'329', N'Muhammad Deni Firdaus', N'L', N'IDS', CAST(0x0C3C0B00 AS Date), N'16110664', N'16664', N'705 - 017 - 2737', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'330', N'Farid Ananda', N'L', N'IDS', CAST(0x6D3C0B00 AS Date), N'17020704', N'17704', N'084 - 084 - 9384', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'331', N'Ihsanul Karim Ridhotullah', N'L', N'IDS', CAST(0x7B3C0B00 AS Date), N'17020002', N'17002', N'475 - 038 - 2458', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'332', N'Syofyan Sukmana', N'L', N'IDS', CAST(0x7B3C0B00 AS Date), N'17020003', N'17003', N'880 - 038 - 5912', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'333', N'Lamhot T.P Sianturi', N'L', N'IDS', CAST(0x893C0B00 AS Date), N'17030004', N'17004', N'733 - 031 - 1741', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'334', N'Rachman Diar', N'L', N'IDS', CAST(0x9E3C0B00 AS Date), N'17030005', N'17005', N'687 - 101 - 3443', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'335', N'Anisa Aprilia', N'P', N'IDS', CAST(0xA53C0B00 AS Date), N'17040006', N'17006', N'766 - 032 - 6361', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'336', N'Kisti Robbi Rosulli', N'P', N'IDS', CAST(0xA53C0B00 AS Date), N'17040010', N'17010', N'067 - 800 - 9833', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'337', N'Duddy Triawan', N'L', N'IDS', CAST(0xAC3C0B00 AS Date), N'17040007', N'17007', N'865-004-5484', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'338', N'Elzah Sentiawati', N'P', N'IDS', CAST(0xB33C0B00 AS Date), N'17040008', N'17008', N'869-113-5659', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'339', N'Kristina karo Sekali', N'P', N'IDS', CAST(0xBD3C0B00 AS Date), N'17050012', N'17012', N'095 - 331 - 8200', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'340', N'Andyka Farel Haryanto Tampubolon', N'L', N'IDS', CAST(0xC23C0B00 AS Date), N'17050014', N'17014', N'607 - 005 - 6699', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'341', N'Agnes Juliana Siregar', N'P', N'IDS', CAST(0xCF3C0B00 AS Date), N'17050016', N'17016', N'035 - 212 - 6495', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'342', N'Mia Triana', N'P', N'IDS', CAST(0xCF3C0B00 AS Date), N'17050018', N'17018', N'459 - 001 - 8495', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'343', N'Septiyani', N'P', N'IDS', CAST(0xCF3C0B00 AS Date), N'17050011', N'17011', N'872 - 014 - 9231', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'344', N'M. Rizki Saputra', N'L', N'IDS', CAST(0xD13C0B00 AS Date), N'17050013', N'17013', N'466 - 002 - 7985', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'345', N'David Hasiholan', N'L', N'IDS', CAST(0xE43C0B00 AS Date), N'17060019', N'17019', N'035 - 275 - 0539', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'346', N'Yan Adiputra Purnomo', N'L', N'IDS', CAST(0xE53C0B00 AS Date), N'17060017', N'17017', N'527-086-3428', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'347', N'Hendi Kemal Pradana', N'L', N'IDS', CAST(0xEB3C0B00 AS Date), N'17060021', N'17021', N'527 - 011 - 0781', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'348', N'Alan Maulana Rahman', N'L', N'IDS', CAST(0x013D0B00 AS Date), N'17070020', N'17020', N'248 - 011-2841', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'349', N'Rezano. S', N'L', N'IDS', CAST(0x043D0B00 AS Date), N'17070022', N'17022', N'421 - 267 - 0395', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'350', N'Ahmad Maulana Yusuf Bahtiar', N'L', N'IDS', CAST(0x1D3D0B00 AS Date), N'17080027', N'17027', N'687 - 103 - 7555', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'351', N'Popo Iswanto', N'L', N'IDS', CAST(0x1D3D0B00 AS Date), N'17080026', N'17026', N'527 - 115 - 7470', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'352', N'M. Kailani Ridwan', N'L', N'IDS', CAST(0x2B3D0B00 AS Date), N'17080025', N'17025', N'345 - 233 - 3136', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'353', N'Candra Ginanjar Setiawan', N'L', N'IDS', CAST(0x313D0B00 AS Date), N'17080024', N'17024', N'198 - 005 - 9886', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'354', N'Nicky Fandino', N'L', N'IDS', CAST(0x3F3D0B00 AS Date), N'17090032', N'17032', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'355', N'R. Wahyu Daruadi Jati', N'L', N'IDS', CAST(0x3F3D0B00 AS Date), N'17090028', N'17028', N'267 - 173 - 8341', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'356', N'Reza Kurniawan', N'L', N'IDS', CAST(0x3F3D0B00 AS Date), N'17090033', N'17033', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'357', N'Jacqueline Andreina Claudia P', N'P', N'IDS', CAST(0x413D0B00 AS Date), N'17090029', N'17029', N'248 - 702 - 0610', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'358', N'Muhamad Alfin Eka Rohadi', N'L', N'IDS', CAST(0x4B3D0B00 AS Date), N'17090030', N'17030', N'614 - 032 - 6761', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'359', N'Andri Gunawan', N'L', N'IDS', CAST(0x5A3D0B00 AS Date), N'17100034', N'17034', N'527 - 114 - 9451', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'360', N'Rudiyono', N'L', N'IDS', CAST(0x6B3D0B00 AS Date), N'17100031', N'17031', N'635 - 009 - 1325', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'361', N'Yudi Epriyadi', N'L', N'IDS', CAST(0x6B3D0B00 AS Date), N'17100035', N'17035', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'362', N'Edward Satriadi', N'L', N'IDS', CAST(0x793D0B00 AS Date), N'17110036', N'17036', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'363', N'Nika Aditia', N'P', N'IDS', CAST(0x793D0B00 AS Date), N'17110037', N'17037', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'364', N'Rudi Parlindungan Siregar', N'L', N'IDS', CAST(0x793D0B00 AS Date), N'17110038', N'17038', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'365', N'I Wayan Wisata Guna', N'L', N'IDS', CAST(0x793D0B00 AS Date), N'17110039', N'17039', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'366', N'Dio Pratama', N'L', N'IDS', CAST(0x5B3D0B00 AS Date), N'17100040', N'17040', N'', NULL)
INSERT [dbo].[karyawan_headers] ([no], [nama], [jenis_kelamin], [cabang], [tanggal_masuk], [nik], [no_absen], [no_rekening], [periode_header]) VALUES (N'367', N'Azmi Aziz Musowwi', N'L', N'IDS', CAST(0x793D0B00 AS Date), N'17110041', N'17041', N'', NULL)
INSERT [dbo].[karyawan_klaim] ([kode_klaim], [transport], [parkir], [kesehatan], [bpjs], [reward_monthly], [reward_triwulan], [taxi], [entertain_internal], [entertain_external], [other]) VALUES (NULL, 0.0000, 0.0000, 0.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'1')
INSERT [dbo].[karyawan_other] ([kode_other], [desc_other], [value_other]) VALUES (N'PO1', N'Perawatan Mobil', 200000.0000)
INSERT [dbo].[karyawan_other] ([kode_other], [desc_other], [value_other]) VALUES (N'001', N'Pijat', 20000.0000)
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR001', N'ACC')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR002', N'Rezeki')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR003', N'AOP')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR004', N'FIF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR005', N'WOM')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR006', N'Performance')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR007', N'Panin')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR008', N'Integerasi')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR009', N'AAB')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR010', N'BFI')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR011', N'Sunlife')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR012', N'CAR, AXA, Sunlife')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR013', N'CAR, AIA, Sunlife')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR014', N'CAR, AXA, AIA, Sunlife')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR015', N'Sheraton')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR016', N'AXA, Sunlife, WannaArtha')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR017', N'AIA,FWD,PANIN DAICHI')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR018', N'AIA, CAR')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR019', N'Alif Kuningan')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR020', N'Radana')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR021', N'AIA, Radana, Metropolitan Mall')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR022', N'CAR')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR023', N'Zurich')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR024', N'Columbia/Sanprima')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR025', N'Columbia/Sanprima, DLS')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR026', N'Kantor')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR027', N'Prudential')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR028', N'BCAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR029', N'Komatsu')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR030', N'Coca-cola')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR031', N'Axa')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR032', N'Mandala')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR033', N'Mandala - FIF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR034', N'Mandala - BCAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR035', N'MAA')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR036', N'DAF - FIF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR037', N'Adira')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR038', N'TAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR039', N'Wisna Serba Guna Senayan')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR040', N'KINO')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR041', N'Lotte')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR042', N'Ramba')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR043', N'Ramba, Lotte')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR044', N'AOP')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR045', N'Trakindo')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR046', N'AGCI')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR047', N'CSUL')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR048', N'DAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR049', N'Entertain')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR050', N'Astra Internasional')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR051', N'Starbridges')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR052', N'CCAI')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR053', N'IDU')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR054', N'Danamon')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR055', N'Danamon, Trakindo, Zurich')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR056', N'Marketing')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR057', N'All Project')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR058', N'Tibco, InfoConnect, Sanprima, Isid')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR059', N'BCAF ')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR060', N'POC')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR061', N'KAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR062', N'HMS')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR063', N'Komatsu')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR064', N'LAMP,FWD,Zurich,BCAF,Mandala')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR065', N'All project')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR066', N'Kantor')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR067', N'Marketing')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR068', N'Mandiri, Pruden, Mitra Info Sarana')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR069', N'ACC')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR070', N'Training')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR071', N'FIF-DAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR072', N'ACC, DLS')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR073', N'parkir')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR074', N'Rezeki,BCAF,WOMF,DSF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR075', N'WOMF & Zurich')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR076', N'Rezeki,WOMF,Zurich')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR077', N'Tokio Marine')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR078', N'HRD')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR079', N'BTPN')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR080', N'CIGNA')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR081', N'Bank Sahabat Sampoerna')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR082', N'MUF, Mitra Infosarana')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR083', N'Danamon, Fujitsu')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR084', N'DIPO')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR085', N'Satu Reka')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR086', N'DLS, Mitra, Bintang')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR087', N'ISID, Trakindo')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR088', N'CSUL,Columbia')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR089', N'FIF,Mitrajaya')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR090', N'Menara Mulia')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR091', N'Bank Permata')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR092', N'Staco')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR093', N'Mandiri, Pruden, Quad, Mitra')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR094', N'BSS, Astra, Cigna')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR095', N'KAF')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR096', N'NKI')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR097', N'HMS, Bintang')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR098', N'AIA')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR099', N'ETL Resource')
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR100', N'Ekreasi')
GO
INSERT [dbo].[karyawan_projects] ([kode_project], [nama_project]) VALUES (N'PR101', N'FIF, Danamon, Hiba')
USE [master]
GO
ALTER DATABASE [DbProjectYAF] SET  READ_WRITE 
GO
