USE [ShoesShop2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[PhoneNum] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[IDStaff] [nvarchar](20) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[IDBill] [nvarchar](20) NOT NULL,
	[Date] [date] NULL,
	[IDCustomer] [int] NULL,
	[IDStaff] [nvarchar](20) NULL,
	[TypeBill] [nvarchar](20) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[IDBill] [nvarchar](20) NOT NULL,
	[IDProductDetail] [nvarchar](20) NOT NULL,
	[Number] [int] NULL,
	[Price] [money] NULL,
	[Discount] [int] NULL,
	[TotalPrice] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBill] ASC,
	[IDProductDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[IDColor] [nvarchar](20) NOT NULL,
	[ColorName] [nvarchar](20) NULL,
 CONSTRAINT [IDColor_pk] PRIMARY KEY CLUSTERED 
(
	[IDColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[PhoneNum] [int] NOT NULL,
	[CustomerName] [nvarchar](100) NULL,
	[IDCard] [bigint] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CustomerType] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PhoneNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [nvarchar](20) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[IDProductType] [nvarchar](20) NOT NULL,
	[IDCustomer] [int] NULL,
	[Status] [int] NULL,
	[Total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[IDProductDetail] [nvarchar](20) NOT NULL,
	[Size] [int] NULL,
	[Color] [nvarchar](20) NULL,
	[image] [nvarchar](100) NULL,
	[PriceIn] [money] NULL,
	[PriceOut] [money] NULL,
	[Number] [int] NULL,
	[IDProduct] [nvarchar](20) NULL,
	[ImageDetail] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProductDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[IDProductType] [nvarchar](20) NOT NULL,
	[ProductTypeName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[IDSize] [int] NOT NULL,
	[Width] [nvarchar](20) NULL,
	[Height] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 5/29/2021 9:03:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[IDStaff] [nvarchar](20) NOT NULL,
	[StaffName] [nvarchar](100) NULL,
	[Salary] [money] NULL,
	[PhoneNum] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Password], [PhoneNum], [Email], [IDStaff], [Status]) VALUES (N'Bill', N'123', 387666785, N'tai@gmail.com', N'BILL', 1)
GO
INSERT [dbo].[Bill] ([IDBill], [Date], [IDCustomer], [IDStaff], [TypeBill], [Status]) VALUES (N'HD1', CAST(N'2021-05-17' AS Date), 432493811, N'Bill', N'Hóa Ðon Bán', 1)
GO
INSERT [dbo].[BillDetail] ([IDBill], [IDProductDetail], [Number], [Price], [Discount], [TotalPrice]) VALUES (N'HD1', N'CT_42_#ff0000_SP1', 23, 323.0000, 0, 7429.0000)
INSERT [dbo].[BillDetail] ([IDBill], [IDProductDetail], [Number], [Price], [Discount], [TotalPrice]) VALUES (N'HD1', N'CT_40_#808080_SP4', 23, 323.0000, 0, 7429.0000)
GO
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-1', N'White')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-16645632', N'ff020200')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-16760832', N'ff004000')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-16777216', N'Black')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-32640', N'ffff8080')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-32704', N'ffff8040')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-65536', N'Red')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-8355776', N'ff808040')
INSERT [dbo].[Color] ([IDColor], [ColorName]) VALUES (N'-8372160', N'ff804040')
GO
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (123445671, N'Lê Văn Sỹ', 123456787653, N'sy@gmail.com', N'Tiền Giang', 1, N'Khách Hàng')
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (123456789, N'Nike', 123456789999, N'nike@gmail.com', N'Hồ Chí Minh', 1, N'Nhà Cung Cấp')
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (123542897, N'Balenciaga', 123234543678, N'balenciaga@gmail.com', N'Đà Nẵng', 1, N'Nhà Cung Cấp')
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (222222222, N'Ananas', 111122345565, N'ananas@gmail.com', N'Long An', 1, N'Nhà Cung Cấp')
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (432493811, N'Nguyễn Hải Dương ', 121232123212, N'duong@gmail.com', N'Bến Tre', 1, N'Khách Hàng')
INSERT [dbo].[Customer] ([PhoneNum], [CustomerName], [IDCard], [Email], [Address], [Status], [CustomerType]) VALUES (1212121211, N'Bitis', 232323232322, N'bitis@gmail.com', N'HCM', 1, N'Nhà Cung Cấp')
GO
INSERT [dbo].[Product] ([IDProduct], [ProductName], [IDProductType], [IDCustomer], [Status], [Total]) VALUES (N'SP1', N'BKL', N'M', 1212121211, 0, 21)
INSERT [dbo].[Product] ([IDProduct], [ProductName], [IDProductType], [IDCustomer], [Status], [Total]) VALUES (N'SP2', N'AF1', N'M', 123456789, 0, 1)
INSERT [dbo].[Product] ([IDProduct], [ProductName], [IDProductType], [IDCustomer], [Status], [Total]) VALUES (N'SP3', N'BKL', N'W', 1212121211, 0, NULL)
GO
INSERT [dbo].[ProductDetail] ([IDProductDetail], [Size], [Color], [image], [PriceIn], [PriceOut], [Number], [IDProduct], [ImageDetail]) VALUES (N'CT_41_-1_SP1', 41, N'-1', N'bkld2.jpg', 2332.0000, 32332.0000, 4, N'SP1', N'bkld1.jpg;bkld2.jpg;bkld3.jpg;bkld4.jpg')
INSERT [dbo].[ProductDetail] ([IDProductDetail], [Size], [Color], [image], [PriceIn], [PriceOut], [Number], [IDProduct], [ImageDetail]) VALUES (N'CT_41_-1_SP2', 41, N'-1', N'nike3.jpg', 234.0000, 236.0000, 1, N'SP2', N'ctaf1.jpg;ctaf11.jpg;ctaf12.jpg;ctaf13.jpg')
INSERT [dbo].[ProductDetail] ([IDProductDetail], [Size], [Color], [image], [PriceIn], [PriceOut], [Number], [IDProduct], [ImageDetail]) VALUES (N'CT_41_-32704_SP1', 41, N'-32704', N'bkl4.jpg', 2332.0000, 32332.0000, 4, N'SP1', N'bkl1.jpg;bkl3.jpg;bkl4.jpg;bkt.jpg')
INSERT [dbo].[ProductDetail] ([IDProductDetail], [Size], [Color], [image], [PriceIn], [PriceOut], [Number], [IDProduct], [ImageDetail]) VALUES (N'CT_41_-65536_SP1', 41, N'-65536', N'bklđ2.jpg', 2332.0000, 32332.0000, 13, N'SP1', N'bklđ.jpg;bklđ1.jpg;bklđ2.jpg;bklđ4.jpg')
GO
INSERT [dbo].[ProductType] ([IDProductType], [ProductTypeName]) VALUES (N'GK', N'Giày Trẻ Em Nữ')
INSERT [dbo].[ProductType] ([IDProductType], [ProductTypeName]) VALUES (N'KID', N'Giày Trẻ Em')
INSERT [dbo].[ProductType] ([IDProductType], [ProductTypeName]) VALUES (N'L', N'Giày QƯ')
INSERT [dbo].[ProductType] ([IDProductType], [ProductTypeName]) VALUES (N'M', N'Giày Nam')
INSERT [dbo].[ProductType] ([IDProductType], [ProductTypeName]) VALUES (N'W', N'Giày Nữ')
GO
INSERT [dbo].[Size] ([IDSize], [Width], [Height]) VALUES (39, N'30', N'11.5')
INSERT [dbo].[Size] ([IDSize], [Width], [Height]) VALUES (40, N'30', N'11.5')
INSERT [dbo].[Size] ([IDSize], [Width], [Height]) VALUES (41, N'32', N'12')
GO
INSERT [dbo].[Staff] ([IDStaff], [StaffName], [Salary], [PhoneNum], [Email], [Address], [Status]) VALUES (N'Bill', N'Tai', 2223.0000, 387666785, N'tai@gmail.com', N'Bến Tre', 0)
INSERT [dbo].[Staff] ([IDStaff], [StaffName], [Salary], [PhoneNum], [Email], [Address], [Status]) VALUES (N'VU', N'Lê Anh Vũ', 2223.0000, 121212121, N'vui@gmail.com', N'HCM', 0)
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([IDStaff])
REFERENCES [dbo].[Staff] ([IDStaff])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([PhoneNum])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([IDStaff])
REFERENCES [dbo].[Staff] ([IDStaff])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([IDBill])
REFERENCES [dbo].[Bill] ([IDBill])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([IDProductDetail])
REFERENCES [dbo].[ProductDetail] ([IDProductDetail])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([PhoneNum])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([IDProductType])
REFERENCES [dbo].[ProductType] ([IDProductType])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([Color])
REFERENCES [dbo].[Color] ([IDColor])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([Size])
REFERENCES [dbo].[Size] ([IDSize])
GO
