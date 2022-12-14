create database SWP392
USE [SWP392]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [varchar](50) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[role] [varchar](20) NOT NULL,
	[status] [varchar](5) NOT NULL,
	[phoneNumber] [int] NOT NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bin]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bin](
	[binID] [varchar](50) NOT NULL,
	[inventoryID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[capacity] [int] NOT NULL,
	[available] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[binID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[inventoryID] [int] IDENTITY(1,1) NOT NULL,
	[inputDate] [date] NOT NULL,
	[warranty] [varchar](30) NOT NULL,
	[note] [nvarchar](300) NULL,
	[stockKeeperID] [varchar](50) NOT NULL,
	[productID] [varchar](50) NOT NULL,
	[quantityOnHand] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[inventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issue]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue](
	[issueID] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](300) NULL,
	[accountantID] [varchar](50) NOT NULL,
	[sellerID] [varchar](50) NOT NULL,
	[orderID] [int] NOT NULL,
	[DateP] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[issueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[productID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](30) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[phoneNumber] [int] NOT NULL,
	[status] [varchar](13) NOT NULL,
	[note] [nvarchar](300) NULL,
	[deliveryDate] [date] NOT NULL,
	[sellerID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [varchar](50) NOT NULL,
	[model] [varchar](30) NOT NULL,
	[brand] [varchar](50) NOT NULL,
	[status] [varchar](5) NOT NULL,
	[type] [varchar](30) NOT NULL,
	[width] [float] NOT NULL,
	[depth] [float] NOT NULL,
	[height] [float] NOT NULL,
	[screenSize] [float] NOT NULL,
	[voiceRemote] [varchar](8) NOT NULL,
	[bluetooth] [varchar](8) NOT NULL,
	[manufacturingDate] [int] NOT NULL,
	[madeIn] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[receiptID] [int] IDENTITY(1,1) NOT NULL,
	[inputDate] [date] NOT NULL,
	[status] [varchar](5) NOT NULL,
	[totalQuantity] [int] NOT NULL,
	[note] [nvarchar](300) NULL,
	[accountantID] [varchar](50) NOT NULL,
	[stockKeeperID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[receiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetail](
	[receiptDetailID] [int] IDENTITY(1,1) NOT NULL,
	[quantityInBill] [int] NOT NULL,
	[quantityInShipping] [int] NOT NULL,
	[productID] [varchar](50) NOT NULL,
	[receiptID] [int] NOT NULL,
	[solution] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[receiptDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[reportID] [int] IDENTITY(1,1) NOT NULL,
	[checkingDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportDetail]    Script Date: 03/08/2022 5:28:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDetail](
	[reportDetailID] [int] IDENTITY(1,1) NOT NULL,
	[reportID] [int] NOT NULL,
	[productID] [varchar](50) NOT NULL,
	[quality] [int] NOT NULL,
	[quantityInChecking] [int] NOT NULL,
	[quantity] [int] NULL,
	[note] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[reportDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'ac123', N'Anh Bang', N'AC', N'True', 372837398, N'123')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'ac456', N'Phuong Anh', N'AC', N'True', 123456789, N'456')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'mn123', N'Van Khanh', N'MN', N'True', 321456879, N'123')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'mn456', N'Mai Xuan', N'MN', N'True', 1239874560, N'456')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'sk123', N'Quang Minh', N'SK', N'True', 321654987, N'123')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'sk456', N'Lien Minh', N'SK', N'True', 231654879, N'456')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'sl123', N'Nien Ket', N'SL', N'True', 367514735, N'123')
INSERT [dbo].[Account] ([accountID], [name], [role], [status], [phoneNumber], [password]) VALUES (N'sl456', N'Nhat Ha', N'SL', N'True', 227514753, N'456')
GO
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF1R1-1', 27, 15, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF1R1-2', 30, 35, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF1R2-1', 30, 15, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF1R3-1', 1, 0, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF2R1-1', 1, 0, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF2R2-1', 1, 0, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF2R3-1', 1, 0, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'AF2R4-1', 1, 0, 50, N'AQ')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF1R1-1', 28, 18, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF1R1-2', 31, 32, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF1R2-1', 31, 18, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF1R2-2', 31, 30, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF2R1-1', 1, 0, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF2R2-1', 1, 0, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'BF2R3-1', 1, 0, 50, N'LG')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF1R1-1', 25, 13, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF1R1-2', 29, 31, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF1R2-1', 1, 0, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF1R3-1', 1, 0, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF2R1-1', 1, 0, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'DF2R2-1', 1, 0, 50, N'SS')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'PF1R1-1', 23, 45, 50, N'CP')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'PF1R2-1', 1, 0, 50, N'CP')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'PF1R3-1', 1, 0, 50, N'CP')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'PF2R1-1', 1, 0, 50, N'CP')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'PF2R2-1', 1, 0, 50, N'CP')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'TF1R1-1', 26, 42, 50, N'TCL')
INSERT [dbo].[Bin] ([binID], [inventoryID], [quantity], [capacity], [available]) VALUES (N'TF1R2-1', 1, 0, 50, N'TCL')
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (1, CAST(N'2022-01-01' AS Date), N'Good', N'Available', N'sk123', N'AQ-LE50AQT6600UG', 0)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (19, CAST(N'2022-07-01' AS Date), N'Good', N'Not available', N'sk123', N'AQ-LE43AQT6600UG', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (23, CAST(N'2022-07-01' AS Date), N'Good', N'Available', N'sk123', N'CP-43FX6200', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (24, CAST(N'2022-07-01' AS Date), N'Good', N'Not available', N'sk123', N'LG-55UP7550PTC', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (25, CAST(N'2022-07-01' AS Date), N'Good', N'Available', N'sk123', N'SS-Q65A', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (26, CAST(N'2022-07-01' AS Date), N'Good', N'Available', N'sk123', N'TCL-43P615', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (27, CAST(N'2022-07-07' AS Date), N'Good', N'Available', N'sk123', N'AQ-LE43AQT6600UG', 30)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (28, CAST(N'2022-07-22' AS Date), N'Good', N'Available', N'sk123', N'LG-55UP7550PTC', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (29, CAST(N'2022-07-28' AS Date), N'Good', N'Available', N'sk123', N'SS-Q65A', 20)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (30, CAST(N'2022-08-01' AS Date), N'Good', N'Available', N'sk123', N'AQ-LE43AQT6600UG', 30)
INSERT [dbo].[Inventory] ([inventoryID], [inputDate], [warranty], [note], [stockKeeperID], [productID], [quantityOnHand]) VALUES (31, CAST(N'2022-08-01' AS Date), N'Good', N'Available', N'sk123', N'LG-55UP7550PTC', 30)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Issue] ON 

INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (4, N'Implemented', N'ac123', N'sl123', 2, CAST(N'2022-07-04' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (5, N'Implemented', N'ac123', N'sl456', 4, CAST(N'2022-07-04' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (6, N'Implemented', N'ac123', N'sl456', 7, CAST(N'2022-07-04' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (8, N'Implemented', N'ac123', N'sl123', 11, CAST(N'2022-07-08' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (9, N'Implemented', N'ac456', N'sl456', 12, CAST(N'2022-07-08' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (10, N'Implemented', N'ac456', N'sl123', 14, CAST(N'2022-07-08' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (11, N'Implemented', N'ac456', N'sl123', 15, CAST(N'2022-07-09' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (12, N'Implemented', N'ac456', N'sl456', 17, CAST(N'2022-07-10' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (13, N'Implemented', N'ac456', N'sl123', 18, CAST(N'2022-07-15' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (14, N'Implemented', N'ac456', N'sl456', 19, CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (15, N'Implemented', N'ac456', N'sl456', 20, CAST(N'2022-07-22' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (16, N'Implemented', N'ac456', N'sl456', 21, CAST(N'2022-07-22' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (17, N'Implemented', N'ac456', N'sl456', 22, CAST(N'2022-07-24' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (18, N'Implemented', N'ac456', N'sl456', 23, CAST(N'2022-07-24' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (19, N'Implemented', N'ac456', N'sl456', 25, CAST(N'2022-07-28' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (24, N'Implemented', N'ac456', N'sl456', 27, CAST(N'2022-07-28' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (26, N'Implementing', N'ac456', N'sl456', 28, CAST(N'2022-07-30' AS Date))
INSERT [dbo].[Issue] ([issueID], [note], [accountantID], [sellerID], [orderID], [DateP]) VALUES (27, N'Implementing', N'ac456', N'sl456', 29, CAST(N'2022-08-01' AS Date))
SET IDENTITY_INSERT [dbo].[Issue] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (1, 20, 2, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (3, 10, 2, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (4, 10, 4, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (5, 5, 4, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (7, 2, 7, N'TCL-43P615')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (8, 1, 9, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (9, 5, 11, N'CP-43FX6200')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (11, 10, 11, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (12, 5, 11, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (13, 1, 12, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (14, 1, 14, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (15, 1, 15, N'TCL-43P615')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (17, 1, 17, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (18, 20, 18, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (19, 30, 19, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (20, 10, 19, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (21, 5, 20, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (22, 5, 20, N'TCL-43P615')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (23, 1, 21, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (24, 1, 22, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (25, 10, 23, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (27, 50, 25, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (28, 50, 25, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (30, 1, 27, N'SS-Q65A')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (31, 1, 28, N'LG-55UP7550PTC')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (32, 1, 29, N'AQ-LE43AQT6600UG')
INSERT [dbo].[OrderDetail] ([orderDetailID], [quantity], [orderID], [productID]) VALUES (39, 1, 30, N'TCL-43P615')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (2, N'Nguyen Van An', N'TPHCM', 123465789, N'Confirm', NULL, CAST(N'2022-07-05' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (4, N'Ngo Van Binh', N'Quang Binh', 321456987, N'Confirm', NULL, CAST(N'2022-07-05' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (7, N'Nguyen Van Cuong', N'Hue', 123654789, N'Confirm', N'', CAST(N'2022-07-03' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (9, N'Tran Van Duong', N'Ha Tinh', 132456589, N'Cancel', N'Customer cancel order', CAST(N'2022-07-06' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (11, N'Nham Van Em', N'TPHCM', 987652331, N'Confirm', NULL, CAST(N'2022-07-10' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (12, N'Mai Van Phung', N'Nghe An', 123456789, N'Confirm', NULL, CAST(N'2022-07-10' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (14, N'Ha Van Giang', N'Ha Noi', 654223877, N'Confirm', NULL, CAST(N'2022-07-10' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (15, N'Nguyen Van Ha', N'Ca Mau', 582515160, N'Confirm', NULL, CAST(N'2022-07-10' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (17, N'Pham Van Yen', N'Dong Nai', 265622689, N'Confirm', NULL, CAST(N'2022-07-12' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (18, N'Phan Van Trung', N'Ben Tre', 645658800, N'Confirm', NULL, CAST(N'2022-07-20' AS Date), N'sl123')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (19, N'Ha Van Khoi', N'Vung Tau', 565556658, N'Confirm', NULL, CAST(N'2022-07-21' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (20, N'Dao Van Lam', N'TPHCM', 525521562, N'Confirm', NULL, CAST(N'2022-07-23' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (21, N'Do Van Muoi', N'Ben Tre', 558522212, N'Confirm', NULL, CAST(N'2022-07-23' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (22, N'Khuu Van Na', N'TPHCM', 222254512, N'Confirm', NULL, CAST(N'2022-07-25' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (23, N'Hoang Van Ong', N'Ha Noi', 549849856, N'Confirm', NULL, CAST(N'2022-07-26' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (25, N'Ho Van Phuong', N'Nam Dinh', 549898949, N'Confirm', NULL, CAST(N'2022-07-29' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (27, N'Nguyen Van Quyen', N'Ha Noi', 625656566, N'Confirm', NULL, CAST(N'2022-07-29' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (28, N'Nguyen Thi Ri', N'Hue', 545488236, N'Confirm', NULL, CAST(N'2022-08-03' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (29, N'Luong Van Sang', N'TPHCM', 525872133, N'Confirmed', NULL, CAST(N'2022-08-05' AS Date), N'sl456')
INSERT [dbo].[Orders] ([orderID], [customerName], [address], [phoneNumber], [status], [note], [deliveryDate], [sellerID]) VALUES (30, N'Nguyen Van An', N'TPHCM', 123465789, N'Not confirm', NULL, CAST(N'2022-08-10' AS Date), N'sl123')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'AQ-LE43AQT6600UG', N'LE43AQT6600UG', N'AQ-AQUA', N'True', N'TV', 50, 1.9, 29, 43, N'Have', N'Have', 2021, N'China', 70, N'Android Tivi AQUA 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'AQ-LE50AQT6600UG', N'LE50AQT6600UG', N'AQ-AQUA', N'True', N'TV', 50.5, 2, 28.6, 50, N'Have', N'Have', 2021, N'China', 0, N'Android Tivi AQUA 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'AQ-LE58AQT6600UG', N'LE58AQT6600UG', N'AQ-AQUA', N'True', N'TV', 50, 2, 30, 58, N'Have', N'Have', 2021, N'China', 0, N'Android Tivi AQUA 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'AQ-LE65AQT6600UG', N'LE65AQT6600UG', N'AQ-AQUA', N'True', N'TV', 52, 2.1, 30.1, 65, N'Have', N'Have', 2021, N'China', 0, N'Android Tivi AQUA 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'AQ-LE65AQTS6UG', N'LE65AQTS6UG', N'AQ-AQUA', N'True', N'TV', 52, 2.1, 30.1, 65, N'Have', N'Have', 2021, N'China', 0, N'Android Tivi AQUA 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'CP-43FX6200', N'43FX6200', N'CP-CASPER', N'True', N'TV', 41, 1.6, 27.5, 43, N'No', N'No', 2020, N'ThaiLand', 45, N'Smart Tivi Casper')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'LG-43NANO75TPA', N'43NANO75TPA', N'LG-LUCKY GOLDSTAR', N'True', N'TV', 49, 2.5, 29, 50, N'No', N'No', 2022, N'Korea', 0, N'Smart Tivi NanoCell LG 4K ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'LG-48A1PTA', N'48A1PTA', N'LG-LUCKY GOLDSTAR', N'True', N'TV', 50.5, 1.8, 29.3, 54.5, N'Have', N'Have', 2021, N'Korea', 0, N'Smart Tivi OLED LG 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'LG-55NANO75TPA', N'55NANO75TPA', N'LG-LUCKY GOLDSTAR', N'True', N'TV', 50, 2.7, 27, 55, N'Have', N'Have', 2021, N'Korea', 0, N'Smart Tivi NanoCell LG 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'LG-55UP7550PTC', N'55UP7550PTC', N'LG-LUCKY GOLDSTAR', N'True', N'TV', 49.3, 2.5, 27, 55, N'No', N'No', 2021, N'Korea', 98, N'Smart Tivi LG 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'LG-55UP7750PTB', N'55UP7750PTB', N'LG-LUCKY GOLDSTAR', N'True', N'TV', 48, 2.9, 28.3, 55, N'Have', N'Have', 2021, N'Korea', 0, N'Smart Tivi LG 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'SS-AU7200 ', N'AU7200 ', N'SS-SAMSUNG', N'True', N'TV', 48.4, 2, 27.3, 55, N'No', N'No', 2021, N'Korea', 0, N'Smart Tivi Samsung 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'SS-AU8100', N'AU8100', N'SS-SAMSUNG', N'True', N'TV', 48.5, 2, 30.2, 55, N'Have', N'Have', 2021, N'Korea', 0, N'Smart Tivi Samsung 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'SS-Q65A', N'Q65A', N'SS-SAMSUNG', N'True', N'TV', 40.2, 1.8, 30, 50, N'Have', N'Have', 2021, N'Korea', 44, N'Smart Tivi QLED ')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'SS-T4500 ', N'T4500 ', N'SS-SAMSUNG', N'True', N'TV', 51, 3.1, 29.5, 44.5, N'Have', N'Have', 2020, N'Korea', 0, N'Smart Tivi Samsung')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'SS-T6500 ', N'T6500 ', N'SS-SAMSUNG', N'True', N'TV', 50, 3, 27, 43, N'No', N'No', 2020, N'Korea', 0, N'Smart Tivi Samsung')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'TCL-43P615', N'43P615', N'TCL-Telephone Communication Limited', N'True', N'TV', 48, 1.5, 28, 43, N'Have', N'Have', 2021, N'China', 41, N'Android Tivi TCL')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'TCL-43P737', N'43P737', N'TCL-Telephone Communication Limited', N'True', N'TV', 38, 1.6, 25, 43, N'No', N'No', 2022, N'China', 0, N'Google Tivi TCL 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'TCL-55P615', N'55P615', N'TCL-Telephone Communication Limited', N'True', N'TV', 48.5, 1.7, 29, 55, N'No', N'No', 2022, N'China', 0, N'Android Tivi TCL 4K')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'TCL-L32S66A', N'L32S66A', N'TCL-Telephone Communication Limited', N'True', N'TV', 37, 1.2, 24, 32, N'No', N'No', 2022, N'China', 0, N'Android Tivi TCL')
INSERT [dbo].[Product] ([productID], [model], [brand], [status], [type], [width], [depth], [height], [screenSize], [voiceRemote], [bluetooth], [manufacturingDate], [madeIn], [quantity], [name]) VALUES (N'TCL-L43S5200', N'L43S5200', N'TCL-Telephone Communication Limited', N'True', N'TV', 48, 1.5, 28, 43, N'Have', N'Have', 2021, N'China', 0, N'Android Tivi TCL')
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([receiptID], [inputDate], [status], [totalQuantity], [note], [accountantID], [stockKeeperID]) VALUES (1, CAST(N'2022-07-01' AS Date), N'True', 250, NULL, N'ac123', N'sk123')
INSERT [dbo].[Receipt] ([receiptID], [inputDate], [status], [totalQuantity], [note], [accountantID], [stockKeeperID]) VALUES (3, CAST(N'2022-07-07' AS Date), N'True', 80, NULL, N'ac123', N'sk123')
INSERT [dbo].[Receipt] ([receiptID], [inputDate], [status], [totalQuantity], [note], [accountantID], [stockKeeperID]) VALUES (4, CAST(N'2022-07-22' AS Date), N'True', 60, NULL, N'ac123', N'sk123')
INSERT [dbo].[Receipt] ([receiptID], [inputDate], [status], [totalQuantity], [note], [accountantID], [stockKeeperID]) VALUES (5, CAST(N'2022-07-28' AS Date), N'True', 31, NULL, N'ac123', N'sk123')
INSERT [dbo].[Receipt] ([receiptID], [inputDate], [status], [totalQuantity], [note], [accountantID], [stockKeeperID]) VALUES (6, CAST(N'2022-08-02' AS Date), N'False', 50, N'Missing 5 product, processed with supplier', N'ac123', N'sk123')
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiptDetail] ON 

INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (3, 50, 50, N'AQ-LE43AQT6600UG', 1, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (4, 50, 50, N'CP-43FX6200', 1, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (7, 50, 50, N'LG-55UP7550PTC', 1, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (9, 50, 50, N'SS-Q65A', 1, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (11, 50, 50, N'TCL-43P615', 1, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (12, 80, 80, N'AQ-LE43AQT6600UG', 3, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (13, 60, 60, N'LG-55UP7550PTC', 4, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (15, 31, 31, N'SS-Q65A', 5, NULL)
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (17, 60, 55, N'AQ-LE43AQT6600UG', 6, N'Compensate 5 product next time')
INSERT [dbo].[ReceiptDetail] ([receiptDetailID], [quantityInBill], [quantityInShipping], [productID], [receiptID], [solution]) VALUES (19, 80, 80, N'LG-55UP7550PTC', 6, NULL)
SET IDENTITY_INSERT [dbo].[ReceiptDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Report] ON 

INSERT [dbo].[Report] ([reportID], [checkingDate]) VALUES (11, CAST(N'2022-08-02' AS Date))
INSERT [dbo].[Report] ([reportID], [checkingDate]) VALUES (12, CAST(N'2022-08-02' AS Date))
SET IDENTITY_INSERT [dbo].[Report] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportDetail] ON 

INSERT [dbo].[ReportDetail] ([reportDetailID], [reportID], [productID], [quality], [quantityInChecking], [quantity], [note]) VALUES (22, 11, N'AQ-LE43AQT6600UG', 100, 70, 70, N'')
INSERT [dbo].[ReportDetail] ([reportDetailID], [reportID], [productID], [quality], [quantityInChecking], [quantity], [note]) VALUES (23, 11, N'LG-55UP7550PTC', 100, 97, 98, N'Missing 1 product in stock')
INSERT [dbo].[ReportDetail] ([reportDetailID], [reportID], [productID], [quality], [quantityInChecking], [quantity], [note]) VALUES (24, 12, N'SS-Q65A', 98, 44, 44, N'')
SET IDENTITY_INSERT [dbo].[ReportDetail] OFF
GO
ALTER TABLE [dbo].[Bin]  WITH CHECK ADD FOREIGN KEY([inventoryID])
REFERENCES [dbo].[Inventory] ([inventoryID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Issue]  WITH CHECK ADD FOREIGN KEY([accountantID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Issue]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[Issue]  WITH CHECK ADD FOREIGN KEY([sellerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([sellerID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([accountantID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([stockKeeperID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD FOREIGN KEY([receiptID])
REFERENCES [dbo].[Receipt] ([receiptID])
GO
ALTER TABLE [dbo].[ReportDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[ReportDetail]  WITH CHECK ADD FOREIGN KEY([reportID])
REFERENCES [dbo].[Report] ([reportID])
GO
