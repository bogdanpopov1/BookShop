Create Database BookShop
GO

USE [BookShop]
GO
/****** Object:  Table [dbo].[ActiveDiscount]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActiveDiscount](
	[ActiveDiscountId] [int] NOT NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_ActiveDiscount] PRIMARY KEY CLUSTERED 
(
	[ActiveDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Unit] [nvarchar](10) NULL,
	[Price] [decimal](18, 0) NULL,
	[MaxDiscountId] [int] NULL,
	[MakerId] [int] NULL,
	[SupplierId] [int] NULL,
	[CategoryId] [int] NULL,
	[ActiveDiscountId] [int] NULL,
	[Count] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[Value] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maker]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maker](
	[MakerId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Maker] PRIMARY KEY CLUSTERED 
(
	[MakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaxDiscount]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaxDiscount](
	[MaxDiscountId] [int] NOT NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_MaxDiscount] PRIMARY KEY CLUSTERED 
(
	[MaxDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 04.05.2022 13:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ActiveDiscount] ([ActiveDiscountId], [Value]) VALUES (1, 5)
INSERT [dbo].[ActiveDiscount] ([ActiveDiscountId], [Value]) VALUES (2, 2)
INSERT [dbo].[ActiveDiscount] ([ActiveDiscountId], [Value]) VALUES (3, 3)
INSERT [dbo].[ActiveDiscount] ([ActiveDiscountId], [Value]) VALUES (4, 4)
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (1, N'А112Т4', N'Война и мир', N'шт.', CAST(600 AS Decimal(18, 0)), 1, 1, 1, 1, 1, 6, N'Война и мир, Толстой Л., 800 стр.', N'/Resources/А112Т4.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (2, N'T826R4', N'Лавка древностей', N'шт.', CAST(244 AS Decimal(18, 0)), 2, 2, 1, 1, 2, 41, N'Лавка древностей, Диккенс Ч.', N'/Resources/T826R4.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (3, N'T593T5', N'Воспламеняющая', N'шт.', CAST(412 AS Decimal(18, 0)), 3, 2, 2, 2, 3, 13, N'Воспламеняющая, Кинг С., 512 стр.', N'/Resources/T593T5.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (4, N'H628R4', N'Шаг вверх', N'шт.', CAST(280 AS Decimal(18, 0)), 2, 2, 1, 3, 3, 6, N'Шаг вверх, Земляной А., 352 стр.', N'/Resources/H628R4.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (5, N'F837T5', N'Гордость и предубеждение', N'шт.', CAST(830 AS Decimal(18, 0)), 4, 2, 2, 1, 4, 15, N'Гордость и предубеждение, Остин Дж., 256 стр.', N'/Resources/F837T5.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (6, N'G932T5', N'Письма к друзьям', N'шт.', CAST(129 AS Decimal(18, 0)), 4, 3, 2, 4, 2, 8, N'Письма к друзьям, Ван Гог В., 208 стр.', N'/Resources/G932T5.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (7, N'H902T6', N'Ньютон', N'шт.', CAST(390 AS Decimal(18, 0)), 3, 4, 1, 4, 3, 5, N'Ньютон, Кузнецов Б., 174 стр.', N'/Resources/H902T6.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (8, N'J927T5', N'Жизнь и шахматы', N'шт.', CAST(580 AS Decimal(18, 0)), 2, 5, 2, 4, 4, 2, N'Жизнь и шахматы, Карпов А., 512 стр.', N'/Resources/J927T5.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (9, N'G836T6', N'Избранное', N'шт.', CAST(217 AS Decimal(18, 0)), 4, 5, 1, 5, 2, 15, N'Избранное, Мандельштам О., 384 стр.', N'/Resources/G836T6.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (10, N'H938T5', N'Лирика', N'шт.', CAST(133 AS Decimal(18, 0)), 2, 6, 1, 5, 4, 2, N'Лирика, Дехлеви А., 304 стр.', N'/Resources/H938T5.jpg')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (11, N'H829G6', N'Маленький принц', N'шт.', CAST(483 AS Decimal(18, 0)), 4, 5, 2, 6, 2, 14, N'Маленький принц, Сент-Экзюпери А., 184 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (12, N'F826T5', N'Стихи для детей', N'шт.', CAST(341 AS Decimal(18, 0)), 3, 7, 2, 7, 4, 24, N'Стихм для детей, Барто А., 64 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (13, N'J717T5', N'Сказки', N'шт.', CAST(583 AS Decimal(18, 0)), 4, 7, 1, 6, 2, 4, N'Сказки, Пушкин А., 144 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (14, N'K732Y7', N'Муми-тролли и Приключения в Муми-доле', N'шт.', CAST(531 AS Decimal(18, 0)), 3, 2, 2, 6, 4, 29, N'Муми-тролли и Приключения в Муми-доле, Янссон Т., 160 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (15, N'F236H8', N'Дюймовочка', N'шт.', CAST(635 AS Decimal(18, 0)), 2, 7, 1, 6, 3, 14, N'Дюймовочка, Андерсен Г.-Х., 32 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (16, N'K826Y6', N'Винсент Ван Гог', N'шт.', CAST(423 AS Decimal(18, 0)), 4, 2, 1, 8, 4, 6, N'Винсент Ван Гог, Чудова А., 160 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (17, N'F672E4', N'Python глазами хакера', N'шт.', CAST(322 AS Decimal(18, 0)), 3, 8, 2, 9, 2, 5, N'Python глазами хакера, Бруцкий-Стемпковский М. (ред.), 178 стр.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (18, N'D671R5', N'Самоучитель Microsoft Windows 11', N'шт.', CAST(700 AS Decimal(18, 0)), 4, 8, 2, 9, 4, 2, N'Самоучитель Microsoft Windows 11, Колисниченко Д.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (19, N'T691R7', N'М. Лермонтов. Стихотворения. Поэмы', N'шт.', CAST(100 AS Decimal(18, 0)), 4, 2, 1, 5, 3, 26, N'М. Лермонтов. Стихотворения. Поэмы, Лермонтов М.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (20, N'J027T6', N'Ноутбук с нуля для любого возраста', N'шт.', CAST(204 AS Decimal(18, 0)), 2, 2, 1, 10, 2, 24, N'Ноутбук с нуля для любого возраста, Виннер М.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (21, N'S561R4', N'Самоучитель Mac OS X Mavericks.', N'шт.', CAST(647 AS Decimal(18, 0)), 3, 2, 2, 9, 3, 7, N'Самоучитель Mac OS X Mavericks, Райтман М.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (22, N'K901E4', N'Смартфоны на Android', N'шт.', CAST(217 AS Decimal(18, 0)), 4, 5, 1, 10, 2, 6, N'Смартфоны на Android, Мельникова О.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (23, N'D782U7', N'Дама с камелиями', N'шт.', CAST(210 AS Decimal(18, 0)), 3, 5, 2, 1, 4, 16, N'Дама с камелиями, Дюма А.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (24, N'K298T5', N'Портрет Дориана Грея', N'шт.', CAST(166 AS Decimal(18, 0)), 4, 2, 2, 1, 2, 23, N'Портрет Дориана Грея, Оскар Уайльд', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (25, N'D562U7', N'Маленькие женщины', N'шт.', CAST(178 AS Decimal(18, 0)), 3, 2, 1, 1, 3, 12, N'Маленькие женщины, Олкотт Луиза Мэй', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (26, N'S528E4', N'Дюна', N'шт.', CAST(694 AS Decimal(18, 0)), 5, 2, 1, 3, 4, 35, N'Дюна, Герберт Фрэнк', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (27, N'K910F5', N'Мастер и Маргарита', N'шт.', CAST(156 AS Decimal(18, 0)), 6, 2, 2, 1, 3, 23, N'Мастер и Маргарита, Булгаков М.А.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (28, N'C783T5', N'Триумфальная арка', N'шт.', CAST(276 AS Decimal(18, 0)), 2, 2, 2, 1, 2, 15, N'Триумфальная арка, Ремарк Э.М.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (29, N'J820H7', N'Три товарища', N'шт.', CAST(365 AS Decimal(18, 0)), 3, 2, 1, 1, 4, 24, N'Три товарища, Ремарк Э.М.', N'/Resources/picture.png')
INSERT [dbo].[Book] ([BookId], [Code], [Name], [Unit], [Price], [MaxDiscountId], [MakerId], [SupplierId], [CategoryId], [ActiveDiscountId], [Count], [Description], [Image]) VALUES (30, N'J827Y6', N'Ход королевы', N'шт.', CAST(435 AS Decimal(18, 0)), 4, 2, 2, 11, 2, 13, N'Ход королевы, Тевис Уолтер', N'/Resources/picture.png')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (1, N'Классика')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (2, N'Мистика.Ужасы')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (3, N'Фантастика')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (4, N'Биографии')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (5, N'Поэзия')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (6, N'Сказки')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (7, N'Стихи и песни')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (8, N'Изобразительное искусство')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (9, N'Технические науки')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (10, N'Образование')
INSERT [dbo].[Category] ([CategoryId], [Value]) VALUES (11, N'Зарубежная литература')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (1, N'Алгоритм')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (2, N'АСТ')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (3, N'Азбука СПб')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (4, N'Ленанд')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (5, N'Эксмо')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (6, N'Диля')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (7, N'Росмэн')
INSERT [dbo].[Maker] ([MakerId], [Name]) VALUES (8, N'БХВ-Петербург')
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (1, 30)
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (2, 15)
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (3, 10)
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (4, 5)
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (5, 20)
INSERT [dbo].[MaxDiscount] ([MaxDiscountId], [Value]) VALUES (6, 25)
INSERT [dbo].[Supplier] ([SupplierId], [Name]) VALUES (1, N'Лабиринт')
INSERT [dbo].[Supplier] ([SupplierId], [Name]) VALUES (2, N'Буквоед')
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_ActiveDiscount] FOREIGN KEY([ActiveDiscountId])
REFERENCES [dbo].[ActiveDiscount] ([ActiveDiscountId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_ActiveDiscount]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Maker] FOREIGN KEY([MakerId])
REFERENCES [dbo].[Maker] ([MakerId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Maker]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_MaxDiscount] FOREIGN KEY([MaxDiscountId])
REFERENCES [dbo].[MaxDiscount] ([MaxDiscountId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_MaxDiscount]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Supplier]
GO
