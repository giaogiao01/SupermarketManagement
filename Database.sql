use master
go

create database [QuanLySieuThi]
go

USE [QuanLySieuThi]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order Details]') AND type in (N'U'))
DROP TABLE [dbo].[Order Details]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2022 12:09:22 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
USE [master]
GO
/****** Object:  Database [QuanLySieuThi]    Script Date: 1/10/2022 12:09:22 AM ******/
DROP DATABASE [QuanLySieuThi]
GO
/****** Object:  Database [QuanLySieuThi]    Script Date: 1/10/2022 12:09:22 AM ******/
CREATE DATABASE [QuanLySieuThi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLySieuThi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QuanLySieuThi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLySieuThi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QuanLySieuThi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLySieuThi] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLySieuThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLySieuThi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLySieuThi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLySieuThi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLySieuThi] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLySieuThi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLySieuThi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLySieuThi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLySieuThi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLySieuThi] SET QUERY_STORE = OFF
GO
USE [QuanLySieuThi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [QuanLySieuThi]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[PhoneCustomer] [nvarchar](24) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[BirthDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[Notes] [nvarchar](max) NULL,
	[PassWord] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[PhoneCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[PhoneEmployee] [nvarchar](24) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[BirthDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[Notes] [nvarchar](max) NULL,
	[PassWord] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[PhoneEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerPhone] [nvarchar](24) NULL,
	[EmployeePhone] [nvarchar](24) NULL,
	[OrderDate] [datetime] NULL,
	[Freight] [money] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2022 12:09:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[UnitPrice] [money] NULL,
	[Discontinued] [bit] NULL,
	[Imgage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'b??nh k???o', N'b??nh k???o
M??n tr??ng mi???ng, k???o v?? b??nh m?? ng???t')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'????? u???ng', N'????? u???ng, 
N?????c ng???t, c?? ph??, tr??, bia v?? bia')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Gia v???', N'N?????c s???t ng???t v?? m???n, t????ng, ph???t v?? gia v???')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'S???n ph???m t??? s???a', N'Pho m??t')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'H???i s???n', N'C??, cua, t??m v?? m???c')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'????? ????ng h???p', N'Tr??i c??y s???y kh?? v?? s???a ????ng')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Th???t', N'Th???t t??? gia c???m, gia s??c')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Rau c???', NULL)
GO
INSERT [dbo].[Customers] ([PhoneCustomer], [LastName], [FirstName], [BirthDate], [Address], [Notes], [PassWord]) VALUES (N'0337602881', N'NV', N'B', NULL, NULL, NULL, N'123456')
INSERT [dbo].[Customers] ([PhoneCustomer], [LastName], [FirstName], [BirthDate], [Address], [Notes], [PassWord]) VALUES (N'0362348623', N'NV', N'A', NULL, NULL, NULL, N'123456')
GO
INSERT [dbo].[Employees] ([PhoneEmployee], [LastName], [FirstName], [BirthDate], [Address], [Notes], [PassWord]) VALUES (N'01689032365', N'NV', N'C', NULL, NULL, NULL, N'123456')
INSERT [dbo].[Employees] ([PhoneEmployee], [LastName], [FirstName], [BirthDate], [Address], [Notes], [PassWord]) VALUES (N'0989563301', N'NV', N'D', NULL, NULL, NULL, N'123654')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (1, N'B??nh snack', 1, N'g??i', 5000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (2, N'B??nh quy', 1, N'g??i', 11000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (3, N'B??nh g???o', 1, N'g??i', 12000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (4, N'B??nh x???p', 1, N'g??i', 13000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (5, N'B??nh tr???ng', 1, N'g??i', 14000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (6, N'Sigum', 1, N'h???p/b???ch', 20000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (7, N'Bia S??i G??n', 2, N'24 lon/th??ng', 330000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (8, N'Bia 333', 2, N'24 lon/ th??ng', 340000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (9, N'Sting', 2, N'24 chai/ th??ng', 180000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (10, N'C2', 2, N'24 chai/ th??ng', 150000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (11, N'R???ng ?????', 2, N'24 chai/ th??ng', 100000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (12, N'S???a t????i', 2, N'24 b???ch/ th??ng', 110000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (13, N'Aquafina', 2, N'Chai', 65000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (14, N'Tr?? s???a c??c lo???i', 2, N'Ly', 15000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (15, N'???????ng', 3, N'Gram', 32000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (16, N'Mu???i', 3, N'Gram', 21000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (17, N'B???t ng???t', 3, N'Gram', 11000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (18, N'B???t n??m', 3, N'Gram', 10000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (19, N'N?????c m???m chinsu ', 3, N'ml', 22000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (20, N'N?????c m???m ????? nh???', 3, N'ml', 23000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (21, N'D???u ??n', 3, N'ml', 33000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (22, N'T????ng ???t', 3, N'gram', 10000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (23, N'T????ng ??en', 3, N'gram', 9000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (24, N'N?????c t????ng', 3, N'ml', 8000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (25, N'Gi???m', 3, N'ml', 5000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (26, N'M???m t??m', 3, N'ml', 3000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (27, N'Th???t ba r???i heo', 7, N'gram', 150000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (28, N'Th???t ????i heo', 7, N'gram', 160000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (29, N'X????ng ???ng heo', 7, N'gram', 170000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (30, N'C???t l???t heo', 7, N'gram', 200000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (31, N'Th???t vai heo', 7, N'gram', 320000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (32, N'Th???t b?? t??i ??c', 7, N'gram', 210000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (33, N'B?? b??t t???t', 7, N'gram', 360000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (34, N'????i b?? nh???p kh???u', 7, N'gram', 251000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (35, N'G??n b?? m???', 7, N'gram', 123000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (36, N'???c g??', 7, N'gram', 321000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (37, N'????i g??', 7, N'gram', 256000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (38, N'C??nh g??', 7, N'gram', 147000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (39, N'G?? nguy??n con', 7, N'gram', 145000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (40, N'Tr???ng g??', 7, N'gram', 25000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (41, N'???c v???t', 7, N'gram', 140000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (42, N'????i v???t', 7, N'gram', 150000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (43, N'C??nh v???t', 7, N'gram', 321000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (44, N'V???t nguy??n con', 7, N'gram', 500000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (45, N'C?? chua', 8, N'gram', 4000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (46, N'Khoai t??y', 8, N'gram', 5000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (47, N'Khoai lang', 8, N'gram', 6000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (48, N'Khai m??n', 8, N'gram', 13000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (49, N'B?? ?????', 8, N'gram', 18000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (50, N'B?? ??ao', 8, N'gram', 27000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (51, N'B???u', 8, N'gram', 145000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (52, N'Rau mu???ng', 8, N'gram', 12000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (53, N'Rau m??ng t??i', 8, N'gram', 11000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (54, N'Rau ng??t', 8, N'gram', 11000.0000, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [DonViTinh], [UnitPrice], [Discontinued], [Imgage]) VALUES (55, N'Kh??? qua', 8, N'gram', 10000.0000, NULL, NULL)
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Orders]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerPhone])
REFERENCES [dbo].[Customers] ([PhoneCustomer])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeePhone])
REFERENCES [dbo].[Employees] ([PhoneEmployee])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [QuanLySieuThi] SET  READ_WRITE 
GO
