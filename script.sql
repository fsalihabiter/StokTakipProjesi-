USE [StokTakip]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NULL,
	[StockCode] [nvarchar](20) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[StockAmount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC07149CFB74] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Kitap')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Bilgisayar/Tablet')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Telefon & Telefon Aksesuarları')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (4, N'TV, Görüntü & Ses Sistemleri')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (5, N'Yazıcılar & Projeksiyon')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (6, N'Klima ve Isıtıcılar')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (7, N'Elektrikli Ev Aletleri')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (8, N'Foto & Kamera')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (9, N'Foto & Kamera')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (10, N'Giyim')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (11, N'Ayakkabı')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (12, N'Çanta')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (13, N'Takı & Aksesuar')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (14, N'Kırtasiye')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (15, N'Mobilya')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (16, N'Yapı Market')
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (17, N'Beyaz Eşya')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (1, 2, N'15S-FQ1002NT Taşınabilir Bilgisayar', N'HP', N'Notebook', N'V00000XKGMX', 5199, 24)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (2, 2, N'V14 Taşınabilir Bilgisayar', N'Lenovo', N'Notebook', N'82C4011NTX51', 6779.99, 98)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (3, 2, N'X543MA-GQ1162-26 Taşınabilir Bilgisayar', N'Asus', N'Notebook', N'CV0000088I2J', 4859, 79)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (4, 5, N'L3156', N'Epson', N'Tanklı Yazıcı', N'V00000QF9QH', 1598.99, 454)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (5, 5, N'3025V_BI', N'Xerox', N'Laser Yazıcı', N'V000004YJG6', 1776, 400)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (6, 3, N'Redmi Note 9 Pro 128 GB', N'Xiaomi', N'Akıllı Cep Telefonu', N'V00000TOMR2', 3699.9, 10)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (7, 3, N'Galaxy M31s 128 GB', N'Samsung', N'Akıllı Cep Telefonu', N'V00000XK8Z2', 3149.9, 20)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (8, 3, N'iPhone 12 Pro Max 512 GB', N'iPhone', N'Akıllı Cep Telefonu', N'V00000YEBIK', 19499, 1)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (9, 6, N'Rba-05', N'Rubenis', N'Vantilatör', N'V000005726Q', 185.8, 500)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (10, 6, N'SF 16 Eco Plus', N'Raks', N'Vantilatör', N'V00000W72HA', 231.21, 350)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (11, 6, N'Flora Doğa Inverter 242', N'Vestel', N'Klima', N'V000018TKV0', 5978.16, 119)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (12, 11, N'Hrc-Q', N'Tonnyblack', N'Spor Ayakkabı', N'V00000PVKON', 89, 300)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (13, 10, N'Softshell', N'Arytone', N'Mont', N'CV000003KAV4', 254.9, 250)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (14, 15, N'Rigel 55500 Çalışma Koltuğu', N'Asbir', N'Ofis Mobilyası', N'V00000CJGKE', 469.9, 345)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (15, 17, N'BM 410 A++ 4 Programlı', N'Regal', N'Bulaşık Makinesi', N'V000007GAIC', 1698, 25)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (16, 7, N'MS23F300EEK Solo', N'Samsung', N'Mikrodalga Fırın', N'V00000NF1C2', 657, 32)
INSERT [dbo].[Products] ([Id], [CategoryId], [Name], [Brand], [Model], [StockCode], [UnitPrice], [StockAmount]) VALUES (19, 16, N'Te-Cd 18/50 Li Bl Matkap Vidalama + 3.0 Ah Plus Starter Kit + Çanta', N'Einhell', N'Elektrikli El Aletleri', N'CV000007YI61', 1353.73, 76)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [IsAdmin]) VALUES (2, N'kullanici1@gmail.com', N'kullanıcı1', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', 0)
INSERT [dbo].[Users] ([Id], [Email], [Username], [Password], [IsAdmin]) VALUES (3, N'admin@gmail.com', N'admin', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kategori IDsi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürün Adı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürün Markası' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Brand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürün Modeli (varsa zorunlu değil)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürünün Seri Numarası' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'StockCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürünün Birim Fiyatı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ürünün Stok Adedi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'StockAmount'
GO
