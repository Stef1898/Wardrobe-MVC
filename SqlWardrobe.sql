USE [master]
GO
/****** Object:  Database [Wardrobe-W6Proj]    Script Date: 5/16/2017 5:56:47 AM ******/
CREATE DATABASE [Wardrobe-W6Proj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe-W6Proj', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe-W6Proj.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe-W6Proj_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe-W6Proj_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe-W6Proj] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe-W6Proj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe-W6Proj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe-W6Proj] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe-W6Proj]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bags]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bags](
	[BagID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Bags] PRIMARY KEY CLUSTERED 
(
	[BagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dresses]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dresses](
	[DressID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Dresses] PRIMARY KEY CLUSTERED 
(
	[DressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hats]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hats](
	[HeadwearID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Hats] PRIMARY KEY CLUSTERED 
(
	[HeadwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[HeadwearID] [int] NULL,
	[TopID] [int] NULL,
	[DressID] [int] NULL,
	[BottomID] [int] NULL,
	[ShoeID] [int] NULL,
	[BagID] [int] NULL,
	[AccessoryID] [int] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/16/2017 5:56:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Photo] [nvarchar](500) NULL,
	[Type] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](200) NOT NULL,
	[Season] [nvarchar](200) NULL,
	[Occasion] [nvarchar](200) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Merida''s Gauntlet / Arm Guard', N'~\Content\Images\Merida_Gauntlet.jpg', N'hand crocheted gauntlet, crocodile stitch', N'Brown', N'Con Season / Winter', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Fawn''s Fairy Bracelet', N'~\Content\Images\Fawn_Bracelet.jpg', N'Tiger Bracelet', N'Orange / Black Stripes', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Jasmine''s Necklace', N'~\Content\Images\Jasmine_Necklace.jpg', N'Necklace', N'Gold', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Megara''s Necklace', N'~\Content\Images\Megara_Necklace.jpg', N'Necklace', N'Purple / Gold', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Merida''s Bow and Arrow Set w/ Leather Belt and Pouch', N'~\Content\Images\Merida_Bow&Arrow_Set.jpg', N'Bow and Arrows / Leather Belt / Pouch', N'Brown', N'Con Season', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'Fawn''s Fairy Wings and Feather Belt', N'~\Content\Images\Fawn_Fairy_Wings&Feather_Belt.jpg', N'Wings / Belt', N'White', N'Con Season', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, N'Elsa''s Coronation Crown', N'~\Content\Images\Elsa_Crown.jpg', N'Crown', N'Gold', N'Con Season', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (8, N'Rapunzel''s Crown', N'~\Content\Images\Rapunzels_Crown.jpg', N'Crown', N'Gold', N'Con Season', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (9, N'Jasmine''s Earrings', N'~\Content\Images\Jasmine_Earrings.jpg', N'Earrings', N'Gold', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (10, N'Merida''s Three Bear Necklace', N'~\Content\Images\Merida_3Bears_Necklace.jpg', N'Necklace', N'Silver / Green', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (11, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bags] ON 

INSERT [dbo].[Bags] ([BagID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Purple Purse (Megara / Jasmine)', N'~\Content\Images\Purple_Purse.jpg', N'Purse', N'Purple', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Bags] ([BagID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Merida Leather Bag', N'~\Content\Images\Merida_Leather_Bag.jpg', N'Leather Bag', N'Brown', N'Con Season', N'Comic Con')
INSERT [dbo].[Bags] ([BagID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bags] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Fawn Fairy Skirt', N'~\Content\Images\Fawn_Fairy_Skirt.jpg', N'High-Low', N'Orange', N'Con Season / Spring / Summer', N'Comic Con')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Dresses] ON 

INSERT [dbo].[Dresses] ([DressID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Megara Dress', N'~\Content\Images\Megara_Dress.jpg', N'Meg''s Dress', N'Purple', N'Con Season', N'Comic Con')
INSERT [dbo].[Dresses] ([DressID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Jasmine Dress', N'~\Content\Images\Jasmine_Dress.jpg', N'Jasmine''s Dress', N'Light Purple', N'Con Season', N'Comic Con')
INSERT [dbo].[Dresses] ([DressID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Merida Dress and Cape', N'~\Content\Images\Merida_Dress&Cape.jpg', N'Merida''s Dress / Cape', N'Forest Green / Black', N'Con Season', N'Comic Con')
INSERT [dbo].[Dresses] ([DressID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Dresses] OFF
SET IDENTITY_INSERT [dbo].[Hats] ON 

INSERT [dbo].[Hats] ([HeadwearID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Merida Wig', N'~\Content\Images\Merida_Wig.jpg', N'Wig', N'Red/Orange', N'Con Season', N'Comic Con')
INSERT [dbo].[Hats] ([HeadwearID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Jasmine Wig', N'~\Content\Images\Jasmine_Wig.jpg', N'Wig', N'Black', N'Con Season', N'Comic Con')
INSERT [dbo].[Hats] ([HeadwearID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Megara Laurel Hair Clip', N'~\Content\Images\Megara_Clip.jpg', N'Greek Laurel Hair Clip', N'Gold', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Hats] ([HeadwearID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hats] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [Name], [HeadwearID], [TopID], [DressID], [BottomID], [ShoeID], [BagID], [AccessoryID], [Date]) VALUES (1, N'Jasmine''s Outfit', 2, 2, 2, 2, 2, 1, 3, CAST(N'2015-05-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Outfit] ([OutfitID], [Name], [HeadwearID], [TopID], [DressID], [BottomID], [ShoeID], [BagID], [AccessoryID], [Date]) VALUES (2, N'Megara''s Outfit', 3, 2, 1, 2, 6, 1, 4, CAST(N'2015-05-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Outfit] ([OutfitID], [Name], [HeadwearID], [TopID], [DressID], [BottomID], [ShoeID], [BagID], [AccessoryID], [Date]) VALUES (3, N'Merida''s Outfit', 1, 2, 3, 2, 5, 2, 5, CAST(N'2015-05-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Outfit] ([OutfitID], [Name], [HeadwearID], [TopID], [DressID], [BottomID], [ShoeID], [BagID], [AccessoryID], [Date]) VALUES (4, N'Fawn''s Outfit', 4, 1, 4, 1, 3, 3, 6, CAST(N'2015-05-16 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Elsa''s Snow Queen Shoes', N'~\Content\Images\Elsa_SQ_Shoes.jpg', N'High Heels', N'Ice Blue', N'Con Season', N'Comic Con')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Jasmine''s Shoes', N'~\Content\Images\Jasmine_Shoes.jpg', N'Flats', N'Gold', N'Con Season / Any', N'Comic Con / Formal')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Fawn''s Fairy Boots', N'~\Content\Images\Fawn_Fairy_Boots.jpg', N'Boots', N'Brown', N'Con Season / Any', N'Comic Con')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Elsa''s Coronation Shoes', N'~\Content\Images\Elsa_Coronation_Shoes.jpg', N'Flats', N'Black', N'Con Season', N'Comic Con')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Merida''s Shoes', N'~\Content\Images\Merida_Shoes.jpg', N'Flats', N'Black', N'Con Season / Any', N'Comic Con / Formal')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'Megara''s Shoes', N'~\Content\Images\Megara_Shoes.jpg', N'Sandals', N'Brown', N'Con Season / Spring / Summer', N'Comic Con')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Fawn Fairy Shirt', N'~\Content\Images\Fawn_Fairy_Shirt.jpg', N'Single Sleeve Shirt', N'Orange', N'Con Season / Spring / Summer', N'Comic Con')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, NULL, N'...', N'.', N'.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessories]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bags] FOREIGN KEY([BagID])
REFERENCES [dbo].[Bags] ([BagID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bags]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottoms]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Dresses] FOREIGN KEY([DressID])
REFERENCES [dbo].[Dresses] ([DressID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Dresses]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Hats] FOREIGN KEY([HeadwearID])
REFERENCES [dbo].[Hats] ([HeadwearID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Hats]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoes]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe-W6Proj] SET  READ_WRITE 
GO
