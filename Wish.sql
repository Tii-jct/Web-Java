USE [master]
GO
/****** Object:  Database [Wish]    Script Date: 25/01/2024 6:33:51 CH ******/
CREATE DATABASE [Wish]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wish', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Wish.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Wish_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Wish_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Wish] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wish].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wish] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wish] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wish] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wish] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wish] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wish] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wish] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wish] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wish] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wish] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wish] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wish] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wish] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wish] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wish] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wish] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wish] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wish] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wish] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wish] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wish] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wish] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wish] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wish] SET  MULTI_USER 
GO
ALTER DATABASE [Wish] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wish] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wish] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wish] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Wish] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Wish] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Wish] SET QUERY_STORE = OFF
GO
USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 25/01/2024 6:33:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 25/01/2024 6:33:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25/01/2024 6:33:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 25/01/2024 6:33:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'titi', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'chiti', N'NSCT', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'tienbip', N'123', 6, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'hoahong', N'111', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'php', N'123', 15, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1012, N'ti', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1013, N'vidu', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'XE ĐẠP TRẺ EM')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'XE ĐẠP ĐỊA HÌNH')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'XE ĐẠP TOURING')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'XE ĐẠP GẤP')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1023, N'test', N'https://xedapgiakho.com/wp-content/uploads/2023/07/xe-dap-dua-dtfly-r-2000-700c-2.jpg', 1.0000, NULL, NULL, NULL, 11)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Xe đạp trẻ em Xaming-20', N'img/xedap2.jpg', 120.0000, N'Xe đạp trẻ em Xaming-20 được thiết kế kiểu dáng thể thao mạnh mẽ, giống chiếc xe của người lớn có nhiều tính năng nổi bật. Xe được làm bằng hợp kim cao cấp không rỉ sét.', N'Xe đạp trẻ em Xaming-20 được thiết kế kiểu dáng thể thao mạnh mẽ, giống chiếc xe của người lớn có nhiều tính năng nổi bật. Xe được làm bằng hợp kim cao cấp không rỉ sét.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Xe Đạp Mini Fascino FCD20', N'img/xedap1.jpg', 150.0000, N'Xe Đạp Mini Fascino FCD20', N'Xe Đạp Mini Fascino FCD20', 1, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Xe Đạp Trẻ Em RoyalBaby FreeStyle', N'https://xedapgiakho.com/wp-content/uploads/2021/04/3-4.png', 180.0000, N'RoyalBaby là thương hiệu xe đạp cho trẻ em được yêu thích tại Châu Âu, các sản phẩm của RoyalBaby được bán rất nhiều trên Amazon tại khu vực Bắc Âu.', N'RoyalBaby là thương hiệu xe đạp cho trẻ em được yêu thích tại Châu Âu, các sản phẩm của RoyalBaby được bán rất nhiều trên Amazon tại khu vực Bắc Âu.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1020, N'xe tăng remixx', N'https://upload.wikimedia.org/wikipedia/commons/3/32/Oboronexpo2014part1-10.jpg', 100.0000, NULL, NULL, NULL, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'testttttttttttttttt', N'https://xedapgiakho.com/wp-content/uploads/2021/04/3-4.png', 5.0000, NULL, NULL, NULL, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1024, N'fggg', N'https://xedapgiakho.com/wp-content/uploads/2023/07/xe-dap-dua-dtfly-r-2000-700c-2.jpg', 5.0000, NULL, NULL, NULL, 11)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1025, N'fggg', N'https://xedapgiakho.com/wp-content/uploads/2023/07/xe-dap-dua-dtfly-r-2000-700c-2.jpg', 5.0000, NULL, NULL, NULL, 11)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Xe Đạp Địa Hình Fornix FX26', N'https://xedapgiakho.com/wp-content/uploads/2022/02/Xe-Dap-The-Thao-26-Inch-Fornix-Fx26-xam-cam.jpg', 130.0000, N'Xe đạp địa hình thể thao  Fornix chất như nước cất', N'Xe đạp địa hình thể thao chất như nước cất', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Xe Đạp Địa Hình Catani CA-X6', N'https://xedapgiakho.com/wp-content/uploads/2022/08/xe-dap-touring-catani-tr3-0-700c-mau-xanh-2.jpg', 140.0000, N'Xe Đạp Thể Thao Catani đẹp nhất ', N'Xe Đạp Thể Thao Catani đẹp nhất ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'
Xe Đạp Địa Hình Fascino FS126S ', N'https://xedapgiakho.com/wp-content/uploads/2023/07/fascino-fs126s-26-inch-xanh-den.jpg', 180.0000, N'Xe đạp địa hình thể thao chất như nước cất', N'Xe đạp địa hình thể thao chất như nước cất', 2, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Xe Đạp  Touring Vivente Quick', N'https://xedapgiakho.com/wp-content/uploads/2021/03/xe-dap-duong-pho-touring-vivente-quick-700c-aaa_6537-600x398.jpg', 150.0000, N'Xe Đạp Đường Phố Touring Vivente Quick đẹp,giá rẻ', N'Xe Đạp Đường Phố Touring Vivente Quick giá rẻ', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Xe Đạp Touring Calli A6', N'https://xedapgiakho.com/wp-content/uploads/2022/08/xe-dap-touring-catani-tr3-0-700c-mau-xanh-2.jpg', 150.0000, N'Xe Đạp Touring Calli A6 khung nhôm ', N'Xe Đạp Touring Calli A6', 3, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Xe Đạp Touring Java Auriga', N'https://xedapgiakho.com/wp-content/uploads/2023/07/xe-dap-touring-java-auriga-700c-tay-ngang-1.jpg', 160.0000, N'Xe Đạp Touring Java Auriga', N'Xe Đạp Touring Java Auriga', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Mens Skid Resistant Hiking Shoes', N'https://xedapgiakho.com/wp-content/uploads/2022/08/xe-dap-touring-catani-tr3-0-700c-mau-xanh-2.jpg', 165.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'NEW Spring White Shoes Men', N'https://xedapgiakho.com/wp-content/uploads/2022/08/xe-dap-touring-catani-tr3-0-700c-mau-xanh-2.jpg', 185.0000, N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Xe Đạp Gấp Fascino FD20', N'https://xedapgiakho.com/wp-content/uploads/2023/06/xe-dap-gap-fascino-fd20-khung-thep-20-inch-1.jpg', 170.0000, N'Xe Đạp Gấp Fascino FD20 xịn', N'Xe Đạp Gấp Fascino FD20 xịn', 4, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Xe Đạp Gấp GIANT ITHINK CONWAY', N'https://xedapgiakho.com/wp-content/uploads/2022/03/Xe-Dap-Gap-GIANT-ITHINK-CONWAY-20-Inch-Vang.png', 100.0000, N'Xe Đạp Gấp GIANT ITHINK CONWAY', N'Xe Đạp Gấp GIANT ITHINK CONWAY', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Xe Đạp Đua DTFLY R-2000 trắng', N'https://xedapgiakho.com/wp-content/uploads/2023/07/Xe-Dap-Dua-DTFLY-R-2000-700c-Mau-Trang.jpg', 120.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Xe Đạp Đua DTFLY R-2000', N'https://xedapgiakho.com/wp-content/uploads/2023/07/xe-dap-dua-dtfly-r-2000-700c-2.jpg', 120.0000, N'Xe Đạp Đua DTFLY R-2000', N'Xe Đạp Đua DTFLY R-2000', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
USE [master]
GO
ALTER DATABASE [Wish] SET  READ_WRITE 
GO
