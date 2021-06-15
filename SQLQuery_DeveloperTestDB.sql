USE [master]
GO
/****** Object:  Database [DeveloperTestDB]    Script Date: 15/06/2021 7:53:29 a. m. ******/
CREATE DATABASE [DeveloperTestDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DeveloperTestDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DeveloperTestDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DeveloperTestDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DeveloperTestDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DeveloperTestDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DeveloperTestDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DeveloperTestDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DeveloperTestDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DeveloperTestDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DeveloperTestDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DeveloperTestDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DeveloperTestDB] SET  MULTI_USER 
GO
ALTER DATABASE [DeveloperTestDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DeveloperTestDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DeveloperTestDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DeveloperTestDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DeveloperTestDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DeveloperTestDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DeveloperTestDB', N'ON'
GO
ALTER DATABASE [DeveloperTestDB] SET QUERY_STORE = OFF
GO
USE [DeveloperTestDB]
GO
/****** Object:  Schema [Agreement]    Script Date: 15/06/2021 7:53:29 a. m. ******/
CREATE SCHEMA [Agreement]
GO
/****** Object:  Table [Agreement].[agreement]    Script Date: 15/06/2021 7:53:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Agreement].[agreement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Amount_Value] [decimal](18, 2) NULL,
	[Amount_Currency] [nvarchar](max) NULL,
 CONSTRAINT [PK_agreement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/06/2021 7:53:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Agreement].[agreement] ON 
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (3, N'Acuerdo Prueba', N'Esta es una prueba', CAST(N'2019-12-10T16:40:17.8770000' AS DateTime2), CAST(10000.00 AS Decimal(18, 2)), N'CO')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (4, N'Acuerdo Prueba 2', N'2', CAST(N'2020-12-10T16:40:17.8770000' AS DateTime2), CAST(30000.00 AS Decimal(18, 2)), N'CO')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (5, N'Monmouth Real Estate Investment Corporation', N'Argemone munita Durand & Hilg. ssp. rotundata (Rydb.) G.B. Ownbey', CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2), CAST(62286.09 AS Decimal(18, 2)), N'JPY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (6, N'USA Compression Partners, LP', N'Impatiens ecornuta Gerry Moore, Zika & Rushworth', CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), CAST(59635.15 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (7, N'Catasys, Inc.', N'Cyrtandra ×scabrella C.B. Clarke (pro sp.)', CAST(N'2020-08-29T00:00:00.0000000' AS DateTime2), CAST(37341.28 AS Decimal(18, 2)), N'PEN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (8, N'Centrais Electricas Brasileiras S.A.- Eletrobras', N'Stephanomeria exigua Nutt. ssp. macrocarpa Gottlieb', CAST(N'2020-10-23T00:00:00.0000000' AS DateTime2), CAST(3053.13 AS Decimal(18, 2)), N'LRD')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (9, N'Consumer Portfolio Services, Inc.', N'Nectandra coriacea (Sw.) Griseb.', CAST(N'2020-07-06T00:00:00.0000000' AS DateTime2), CAST(8450.37 AS Decimal(18, 2)), N'CLP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (10, N'Sensus Healthcare, Inc.', N'Hulsea nana A. Gray', CAST(N'2020-07-04T00:00:00.0000000' AS DateTime2), CAST(48054.97 AS Decimal(18, 2)), N'BDT')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (11, N'Synopsys, Inc.', N'Oplismenus compositus (L.) P. Beauv.', CAST(N'2020-04-30T00:00:00.0000000' AS DateTime2), CAST(23530.91 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (12, N'Taubman Centers, Inc.', N'Woodsia ilvensis (L.) R. Br.', CAST(N'2021-01-19T00:00:00.0000000' AS DateTime2), CAST(35878.14 AS Decimal(18, 2)), N'PLN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (13, N'Callaway Golf Company', N'Tonestus A. Nelson', CAST(N'2020-05-01T00:00:00.0000000' AS DateTime2), CAST(49247.97 AS Decimal(18, 2)), N'LYD')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (14, N'National Grid Transco, PLC', N'Thinopyrum Á. Löve', CAST(N'2021-03-07T00:00:00.0000000' AS DateTime2), CAST(42188.61 AS Decimal(18, 2)), N'PLN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (15, N'Apollo Senior Floating Rate Fund Inc.', N'Potentilla glandulosa Lindl. ssp. hansenii (Greene) D.D. Keck', CAST(N'2021-05-31T00:00:00.0000000' AS DateTime2), CAST(30051.62 AS Decimal(18, 2)), N'PKR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (16, N'First Trust Municipal CEF Income Opportunity ETF', N'Gardenia remyi H. Mann', CAST(N'2020-04-02T00:00:00.0000000' AS DateTime2), CAST(95945.38 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (17, N'Dave & Buster''s Entertainment, Inc.', N'Escobaria dasyacantha (Engelm.) Britton & Rose', CAST(N'2021-03-26T00:00:00.0000000' AS DateTime2), CAST(8909.88 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (18, N'Broadridge Financial Solutions, Inc.', N'Saxifraga tridactylites L.', CAST(N'2020-04-01T00:00:00.0000000' AS DateTime2), CAST(13704.48 AS Decimal(18, 2)), N'RUB')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (19, N'Tempur Sealy International, Inc.', N'Hygrophila difformis (L. f.) Blume', CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2), CAST(44972.28 AS Decimal(18, 2)), N'PLN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (20, N'Tesoro Logistics LP', N'Paspalum orbiculatum Poir.', CAST(N'2020-12-13T00:00:00.0000000' AS DateTime2), CAST(86323.36 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (21, N'Renesola Ltd.', N'Echinocereus chisoensis W.T. Marshall', CAST(N'2020-10-31T00:00:00.0000000' AS DateTime2), CAST(2709.78 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (22, N'Lydall, Inc.', N'Brickellia atractyloides A. Gray', CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2), CAST(81475.84 AS Decimal(18, 2)), N'TJS')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (23, N'Raymond James Financial, Inc.', N'Samolus L.', CAST(N'2021-06-10T00:00:00.0000000' AS DateTime2), CAST(72075.92 AS Decimal(18, 2)), N'CRC')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (24, N'American Midstream Partners, LP', N'Rubus laudatus A. Berger', CAST(N'2020-12-13T00:00:00.0000000' AS DateTime2), CAST(62669.70 AS Decimal(18, 2)), N'DOP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (25, N'NextEra Energy Partners, LP', N'Nymphaea mexicana Zucc.', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), CAST(12188.33 AS Decimal(18, 2)), N'PEN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (26, N'First Capital, Inc.', N'Sorghum bicolor (L.) Moench ssp. drummondii (Nees ex Steud.) de Wet & Harlan', CAST(N'2020-12-20T00:00:00.0000000' AS DateTime2), CAST(83532.40 AS Decimal(18, 2)), N'CZK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (27, N'Cotiviti Holdings, Inc.', N'Swertia perennis L.', CAST(N'2021-02-19T00:00:00.0000000' AS DateTime2), CAST(28595.95 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (28, N'Delta Technology Holdings Limited', N'Solanum lycopersicum L.', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), CAST(5380.18 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (29, N'Gladstone Commercial Corporation', N'Huperzia selago (L.) Bernh. ex Schrank & Mart.', CAST(N'2020-12-11T00:00:00.0000000' AS DateTime2), CAST(87917.81 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (30, N'Neustar, Inc.', N'Hypogymnia mollis L. Pike & Hale', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), CAST(13672.57 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (31, N'American Water Works', N'Althaea L.', CAST(N'2021-06-09T00:00:00.0000000' AS DateTime2), CAST(47601.26 AS Decimal(18, 2)), N'PHP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (32, N'Anadarko Petroleum Corporation', N'Betula L.', CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2), CAST(37758.51 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (33, N'ZTO Express (Cayman) Inc.', N'Verbesina virginica L. var. virginica', CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), CAST(38585.14 AS Decimal(18, 2)), N'MXN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (34, N'Pioneer Municipal High Income Trust', N'Nothocalais cuspidata (Pursh) Greene', CAST(N'2020-04-06T00:00:00.0000000' AS DateTime2), CAST(93662.23 AS Decimal(18, 2)), N'UAH')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (35, N'Torchmark Corporation', N'Gomphrena haageana Klotzsch', CAST(N'2020-11-08T00:00:00.0000000' AS DateTime2), CAST(24584.34 AS Decimal(18, 2)), N'LKR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (36, N'Essex Property Trust, Inc.', N'Lupinus culbertsonii Greene ssp. hypolasius (Greene) Cox', CAST(N'2020-05-22T00:00:00.0000000' AS DateTime2), CAST(33399.28 AS Decimal(18, 2)), N'PKR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (37, N'Xenon Pharmaceuticals Inc.', N'Viola wailenalenae (Rock) Skottsb.', CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), CAST(26112.18 AS Decimal(18, 2)), N'THB')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (38, N'First Trust Specialty Finance and Financial Opportunities Fund', N'Rubus macvaughii L.H. Bailey', CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), CAST(44084.53 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (39, N'Precision Drilling Corporation', N'Celtis tenuifolia Nutt.', CAST(N'2020-09-09T00:00:00.0000000' AS DateTime2), CAST(97709.62 AS Decimal(18, 2)), N'CZK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (40, N'Nuveenn Intermediate Duration Quality Municipal Term Fund', N'Galactia erecta (Walter) Vail', CAST(N'2020-09-29T00:00:00.0000000' AS DateTime2), CAST(55850.51 AS Decimal(18, 2)), N'USD')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (41, N'iShares Commodities Select Strategy ETF', N'Angelica genuflexa Nutt.', CAST(N'2021-03-18T00:00:00.0000000' AS DateTime2), CAST(6927.21 AS Decimal(18, 2)), N'PEN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (42, N'pdvWireless, Inc.', N'Morella cordifolia (L.) Killick', CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), CAST(3724.54 AS Decimal(18, 2)), N'USD')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (43, N'Federated National Holding Company', N'Acer saccharum Marshall', CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2), CAST(33849.69 AS Decimal(18, 2)), N'BYR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (44, N'Alexander''s, Inc.', N'Bahia absinthifolia Benth. var. dealbata (A. Gray) A. Gray', CAST(N'2021-03-06T00:00:00.0000000' AS DateTime2), CAST(95900.74 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (45, N'Digital Realty Trust, Inc.', N'Penstemon deustus Douglas ex Lindl. var. variabilis (Suksd.) Cronquist', CAST(N'2020-07-03T00:00:00.0000000' AS DateTime2), CAST(32200.95 AS Decimal(18, 2)), N'ILS')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (46, N'Evercore Partners Inc', N'Lithophragma affine A. Gray ssp. mixtum R.L. Taylor', CAST(N'2021-04-01T00:00:00.0000000' AS DateTime2), CAST(49032.42 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (47, N'First Trust Nasdaq Bank ETF', N'Celtis laevigata Willd.', CAST(N'2021-02-19T00:00:00.0000000' AS DateTime2), CAST(55473.12 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (48, N'iPath US Treasury Long Bond Bull ETN', N'Botrychium dissectum Spreng.', CAST(N'2020-12-29T00:00:00.0000000' AS DateTime2), CAST(70445.07 AS Decimal(18, 2)), N'UAH')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (49, N'Foamix Pharmaceuticals Ltd.', N'Micropsis dasycarpa (Griseb.) Beauverd', CAST(N'2020-11-10T00:00:00.0000000' AS DateTime2), CAST(42005.03 AS Decimal(18, 2)), N'PHP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (50, N'Rayonier Advanced Materials Inc.', N'Asperugo procumbens L.', CAST(N'2020-11-04T00:00:00.0000000' AS DateTime2), CAST(34878.48 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (51, N'Teekay Offshore Partners L.P.', N'Litsea aestivalis (L.) Fernald', CAST(N'2021-01-04T00:00:00.0000000' AS DateTime2), CAST(22007.14 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (52, N'Laredo Petroleum, Inc.', N'Gaura neomexicana Wooton ssp. neomexicana', CAST(N'2021-03-29T00:00:00.0000000' AS DateTime2), CAST(3568.61 AS Decimal(18, 2)), N'PKR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (53, N'Sanofi', N'Diphysa thurberi (A. Gray) Rydb.', CAST(N'2021-06-09T00:00:00.0000000' AS DateTime2), CAST(93305.71 AS Decimal(18, 2)), N'USD')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (54, N'Merrimack Pharmaceuticals, Inc.', N'Nemacladus ramosissimus Nutt.', CAST(N'2021-01-08T00:00:00.0000000' AS DateTime2), CAST(81165.97 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (55, N'Pentair plc.', N'Eriogonum longifolium Nutt. var. gnaphalifolium Gandog.', CAST(N'2020-04-05T00:00:00.0000000' AS DateTime2), CAST(77582.46 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (56, N'Frankly, Inc.', N'Mimulus moschatus Douglas ex Lindl. var. sessilifolius A. Gray', CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2), CAST(57201.38 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (57, N'Royal Bancshares of Pennsylvania, Inc.', N'Phyllodoce breweri (A. Gray) A. Heller', CAST(N'2020-08-20T00:00:00.0000000' AS DateTime2), CAST(47658.02 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (58, N'Dynex Capital, Inc.', N'Anthracothecium staurosporum (Tuck. ex Willey) Zahlbr.', CAST(N'2020-08-09T00:00:00.0000000' AS DateTime2), CAST(16113.21 AS Decimal(18, 2)), N'RUB')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (59, N'Danaos Corporation', N'Claytonia sibirica L.', CAST(N'2020-05-07T00:00:00.0000000' AS DateTime2), CAST(3833.45 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (60, N'iShares MSCI New Zealand Capped ETF', N'Iris spuria L. ssp. ochroleuca (L.) Dykes', CAST(N'2021-02-06T00:00:00.0000000' AS DateTime2), CAST(29326.63 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (61, N'Aehr Test Systems', N'Clermontia drepanomorpha Rock', CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2), CAST(14492.73 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (62, N'Toronto Dominion Bank (The)', N'Oenothera nutans Atk. & Bartlett', CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), CAST(1419.62 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (63, N'Gabelli Multi-Media Trust Inc. (The)', N'Pseudopanax K. Koch', CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), CAST(23277.50 AS Decimal(18, 2)), N'EGP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (64, N'Avid Technology, Inc.', N'Rinodina pyrina (Ach.) Arnold', CAST(N'2020-04-09T00:00:00.0000000' AS DateTime2), CAST(33535.28 AS Decimal(18, 2)), N'MDL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (65, N'Alphabet Inc.', N'Schaefferia frutescens Jacq.', CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2), CAST(27704.24 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (66, N'Fifth Street Finance Corp.', N'Equisetum pratense Ehrh.', CAST(N'2021-04-07T00:00:00.0000000' AS DateTime2), CAST(49900.33 AS Decimal(18, 2)), N'CZK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (67, N'Hartford Financial Services Group, Inc. (The)', N'Leymus ×multiflorus (Gould) Barkworth & Atkins', CAST(N'2020-11-10T00:00:00.0000000' AS DateTime2), CAST(55357.39 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (68, N'Pretium Resources, Inc.', N'Phlox subulata L. ssp. brittonii (Small) Wherry', CAST(N'2021-02-13T00:00:00.0000000' AS DateTime2), CAST(42184.29 AS Decimal(18, 2)), N'VND')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (69, N'Kingold Jewelry Inc.', N'Melocactus intortus (Mill.) Urb.', CAST(N'2020-11-28T00:00:00.0000000' AS DateTime2), CAST(30297.28 AS Decimal(18, 2)), N'MXN')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (70, N'Atlantic Capital Bancshares, Inc.', N'Abutilon theophrasti Medik.', CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), CAST(53860.16 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (71, N'Gaming Partners International Corporation', N'Rayjacksonia annua (Rydb.) R.L. Hartm. & M.A. Lane', CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), CAST(64874.28 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (72, N'Catalyst Pharmaceuticals, Inc.', N'Brotherella Loeske ex Fleisch.', CAST(N'2020-04-29T00:00:00.0000000' AS DateTime2), CAST(14301.73 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (73, N'RealPage, Inc.', N'Astragalus crassicarpus Nutt. var. crassicarpus', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), CAST(24428.59 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (74, N'Anthem, Inc.', N'Sorbus aucuparia L.', CAST(N'2020-10-19T00:00:00.0000000' AS DateTime2), CAST(8597.15 AS Decimal(18, 2)), N'PHP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (75, N'Albemarle Corporation', N'Jatropha dioica Cerv.', CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2), CAST(52523.77 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (76, N'The Ultimate Software Group, Inc.', N'Stephanomeria exigua Nutt. ssp. macrocarpa Gottlieb', CAST(N'2020-09-08T00:00:00.0000000' AS DateTime2), CAST(2274.97 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (77, N'CDK Global, Inc.', N'Carex ×subsalina Lepage', CAST(N'2020-08-12T00:00:00.0000000' AS DateTime2), CAST(38661.69 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (78, N'Akamai Technologies, Inc.', N'Xanthoria hasseana Rasanen', CAST(N'2020-06-20T00:00:00.0000000' AS DateTime2), CAST(18974.71 AS Decimal(18, 2)), N'SOS')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (79, N'VictoryShares Emerging Market Volatility Wtd ETF', N'Thalictrum clavatum DC.', CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2), CAST(15334.36 AS Decimal(18, 2)), N'HNL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (80, N'CPS Technologies Corp.', N'Charpentiera elliptica (Hillebr.) A. Heller', CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2), CAST(98342.02 AS Decimal(18, 2)), N'KRW')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (81, N'Fauquier Bankshares, Inc.', N'Oxytropis maydelliana Trautv.', CAST(N'2020-05-29T00:00:00.0000000' AS DateTime2), CAST(70692.03 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (82, N'Enbridge Inc', N'Pieris floribunda (Pursh) Benth. & Hook. f.', CAST(N'2020-10-23T00:00:00.0000000' AS DateTime2), CAST(9607.81 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (83, N'Sundance Energy Australia Limited', N'Nassella manicata (Desv.) Barkworth', CAST(N'2021-05-15T00:00:00.0000000' AS DateTime2), CAST(97021.12 AS Decimal(18, 2)), N'BRL')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (84, N'Illinois Tool Works Inc.', N'Calochortus clavatus S. Watson var. clavatus', CAST(N'2020-08-15T00:00:00.0000000' AS DateTime2), CAST(30217.14 AS Decimal(18, 2)), N'CZK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (85, N'WisdomTree Negative Duration High Yield Bond Fund', N'Iris tridentata Pursh', CAST(N'2021-01-30T00:00:00.0000000' AS DateTime2), CAST(88467.90 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (86, N'Duke Realty Corporation', N'Crocus tommasinianus Herb.', CAST(N'2020-08-13T00:00:00.0000000' AS DateTime2), CAST(59139.95 AS Decimal(18, 2)), N'SEK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (87, N'Prudential Bancorp, Inc.', N'Cyperus dentatus Torr.', CAST(N'2021-05-09T00:00:00.0000000' AS DateTime2), CAST(48448.54 AS Decimal(18, 2)), N'SEK')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (88, N'Pennsylvania Real Estate Investment Trust', N'Calystegia silvatica (Kit.) Griseb. ssp. fraterniflora (Mack. & Bush) Brummitt', CAST(N'2021-06-05T00:00:00.0000000' AS DateTime2), CAST(12471.82 AS Decimal(18, 2)), N'RUB')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (89, N'Principal Healthcare Innovators Index ETF', N'Cheiroglossa C. Presl', CAST(N'2020-09-15T00:00:00.0000000' AS DateTime2), CAST(75826.41 AS Decimal(18, 2)), N'GBP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (90, N'CECO Environmental Corp.', N'Pogogyne floribunda Jokerst', CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2), CAST(68002.19 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (91, N'Intrepid Potash, Inc', N'Melaleuca lanceolata Otto', CAST(N'2020-09-13T00:00:00.0000000' AS DateTime2), CAST(53937.18 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (92, N'NewMarket Corporation', N'Liatris microcephala (Small) K. Schum.', CAST(N'2020-10-04T00:00:00.0000000' AS DateTime2), CAST(1896.38 AS Decimal(18, 2)), N'RUB')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (93, N'Apollo Investment Corporation', N'Cyanea glabra (E. Wimm.) H. St. John', CAST(N'2021-04-01T00:00:00.0000000' AS DateTime2), CAST(31484.89 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (94, N'Calamos Dynamic Convertible & Income Fund', N'Eurhynchium pulchellum (Hedw.) Jenn. var. barnesii (Renauld & Cardot) Grout', CAST(N'2020-11-02T00:00:00.0000000' AS DateTime2), CAST(46226.98 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (95, N'Old Dominion Freight Line, Inc.', N'Cynodon bradleyi Stent', CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2), CAST(70241.24 AS Decimal(18, 2)), N'PHP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (96, N'Repros Therapeutics Inc.', N'Schismatomma Flotow & Körb. ex A. Massal.', CAST(N'2020-05-01T00:00:00.0000000' AS DateTime2), CAST(33671.04 AS Decimal(18, 2)), N'EUR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (97, N'CyberOptics Corporation', N'Thelypodium sagittatum (Nutt. ex Torr. & A. Gray) Endl. ex Walp.', CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2), CAST(17060.49 AS Decimal(18, 2)), N'SYP')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (98, N'Terreno Realty Corporation', N'Ludwigia longifolia (DC.) H. Hara', CAST(N'2021-01-22T00:00:00.0000000' AS DateTime2), CAST(49111.23 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (99, N'Verso Corporation', N'Toninia ruginosa (Tuck.) Herre', CAST(N'2020-10-04T00:00:00.0000000' AS DateTime2), CAST(25306.83 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (100, N'Summit Therapeutics plc', N'Abutilon eremitopetalum Caum', CAST(N'2020-12-14T00:00:00.0000000' AS DateTime2), CAST(47604.56 AS Decimal(18, 2)), N'IDR')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (101, N'Diamond Offshore Drilling, Inc.', N'Helianthus petiolaris Nutt. ssp. fallax Heiser', CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), CAST(57674.41 AS Decimal(18, 2)), N'UAH')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (102, N'Citigroup Inc.', N'Villadia squamulosa (S. Watson) Rose', CAST(N'2020-08-30T00:00:00.0000000' AS DateTime2), CAST(55198.06 AS Decimal(18, 2)), N'JPY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (103, N'Novartis AG', N'Eriastrum abramsii (Elmer) H. Mason', CAST(N'2020-08-15T00:00:00.0000000' AS DateTime2), CAST(81992.15 AS Decimal(18, 2)), N'CNY')
GO
INSERT [Agreement].[agreement] ([Id], [Name], [Description], [CreationDate], [Amount_Value], [Amount_Currency]) VALUES (104, N'Monmouth Real Estate Investment Corporation', N'Pertusaria hakkodensis Yasuda ex Rasanen', CAST(N'2020-08-19T00:00:00.0000000' AS DateTime2), CAST(77690.68 AS Decimal(18, 2)), N'DZD')
GO
SET IDENTITY_INSERT [Agreement].[agreement] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210614230718_InitialSchema', N'3.1.16')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210614230847_AddAgreementSchema', N'3.1.16')
GO
USE [master]
GO
ALTER DATABASE [DeveloperTestDB] SET  READ_WRITE 
GO
