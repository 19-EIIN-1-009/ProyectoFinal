

/* Nombre: Demetrio Cabrera Matriocula: 19-EII-1-009 Seccin 0541 */




USE [master]
GO
/****** Object:  Database [EcomerceDB_19-EII-1-009]    Script Date: 10/04/2022 17:24:43 ******/
CREATE DATABASE [EcomerceDB_19-EII-1-009]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EcomerceDB_19-EII-1-009', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcomerceDB_19-EII-1-009.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EcomerceDB_19-EII-1-009_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EcomerceDB_19-EII-1-009_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EcomerceDB_19-EII-1-009].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ARITHABORT OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET  MULTI_USER 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET QUERY_STORE = OFF
GO
USE [EcomerceDB_19-EII-1-009]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/04/2022 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cedula] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 10/04/2022 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Producto_id] [varchar](50) NULL,
	[Fecha_ingreso] [date] NULL,
	[Tipo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/04/2022 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto_id] [varchar](50) NOT NULL,
	[Precio] [varchar](50) NULL,
	[Existencia] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/04/2022 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[User_id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Clave] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 10/04/2022 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Venta_id] [varchar](50) NULL,
	[Fecha_venta] [date] NULL,
	[Producto_id] [varchar](50) NULL,
	[Total] [decimal](18, 0) NULL,
	[User_id] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'458-8592257-8', N'Demetrio Cabrea', N'809-865-8951', N'Independecia', N'Real@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Perez Rojas', N'809-804-8528', N'Cercado', N'PR@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8554205-8', N'Demostenes ', N'849-858-5829', N'Feria', N'dm@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Dilenia', N'829-525-5285', N'Villa Tapia', N'Drj@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Duglas', N'809-525-9525', N'Italia', N'Tusprietis@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Lurdes', N'809-814-5485', N'Corea 87', N'Lbatista@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Milagros', N'809-520-4528', N'Juan primero', N'Pelusa@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Ronald', N'809-950-5204', N'Duarte 11', N'Lula89@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Raul', N'809-952-4185', N'Sarasota ', N'Azul4@gmail.com')
INSERT [dbo].[Cliente] ([Cedula], [Nombre], [Telefono], [Direccion], [Email]) VALUES (N'402-8584125-8', N'Cristian', N'809-884-4181', N'Quisqueya 75', N'RoseGuns@gmail.com')

GO
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'1', CAST(N'2021-12-06' AS Date), N'Ropa Mujer')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'2', CAST(N'2021-06-05' AS Date), N'Ropa Hombre')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'3', CAST(N'2022-09-07' AS Date), N'Ropa Nino')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'4', CAST(N'2221-05-04' AS Date), N'Ropa Hombre')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'5', CAST(N'2021-06-04' AS Date), N'Ropa Nino')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'6', CAST(N'2022-05-05' AS Date), N'Ropa Mujer')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'7', CAST(N'2022-08-05' AS Date), N'Ropa Mujer')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'8', CAST(N'2022-08-07' AS Date), N'Ropa Hombre')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'9', CAST(N'2022-09-08' AS Date), N'Ropa Hombre')
INSERT [dbo].[Inventario] ([Producto_id], [Fecha_ingreso], [Tipo]) VALUES (N'10', CAST(N'2022-08-04' AS Date), N'Ropa Nino')
GO
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'1', N'800', N'5', N'Ropa Mujer')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'10', N'5500', N'1', N'Ropa Mujer')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'2', N'1000', N'7', N'Ropa Nino')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'3', N'500', N'8', N'Ropa Mujer')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'4', N'1500', N'2', N'Ropa Nino')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'5', N'2000', N'7', N'Ropa Hombre')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'6', N'200', N'15', N'Ropa Nino')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'7', N'250,58', N'2', N'Ropa Mujer')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'8', N'900', N'7', N'Ropa Hombre')
INSERT [dbo].[Producto] ([Producto_id], [Precio], [Existencia], [Descripcion]) VALUES (N'9', N'4000', N'4', N'Ropa Hombre')
GO
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'DeJeCustom', N'Demostenes', N'Azul82@')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'DL287', N'Dilenia', N'5452090')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'Drtu21', N'Duglas', N'75R98')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'Lula', N'Lurdes', N'L78052')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'Petun', N'Perez', N'P78Rt')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'Quiks', N'Milagros', N'QM52306')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'Rp58', N'Ronald', N'85920')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'RTRojas', N'Raul', N'TR875052')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'TheFinal', N'Cristian', N'826623-')
INSERT [dbo].[Usuario] ([User_id], [Nombre], [Clave]) VALUES (N'VentaQF', N'Rosa', N'QF80520/')
GO
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'8205', CAST(N'2022-10-08' AS Date), N'5', CAST(2000 AS Decimal(18, 0)), N'DeJeCustom')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'8010', CAST(N'2021-02-05' AS Date), N'8', CAST(500 AS Decimal(18, 0)), N'DL287')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'80420', CAST(N'1996-05-08' AS Date), N'8', CAST(500 AS Decimal(18, 0)), N'Drtu21')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'50864', CAST(N'2022-09-05' AS Date), N'4', CAST(1500 AS Decimal(18, 0)), N'Lula')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'8010', CAST(N'2122-08-04' AS Date), N'2', CAST(1000 AS Decimal(18, 0)), N'Petun')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'80420', CAST(N'2021-05-01' AS Date), N'4', CAST(1500 AS Decimal(18, 0)), N'Quiks')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'8650', CAST(N'2022-04-06' AS Date), N'9', CAST(4000 AS Decimal(18, 0)), N'Rp58')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'89502', CAST(N'2022-09-05' AS Date), N'10', CAST(5500 AS Decimal(18, 0)), N'RTRojas')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'96508', CAST(N'2022-10-08' AS Date), N'10', CAST(5500 AS Decimal(18, 0)), N'TheFinal')
INSERT [dbo].[Venta] ([Venta_id], [Fecha_venta], [Producto_id], [Total], [User_id]) VALUES (N'96502', CAST(N'2022-09-05' AS Date), N'1', CAST(800 AS Decimal(18, 0)), N'VentaQF')
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Producto] FOREIGN KEY([Producto_id])
REFERENCES [dbo].[Producto] ([Producto_id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Producto]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY([User_id])
REFERENCES [dbo].[Usuario] ([User_id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Usuario]
GO
USE [master]
GO
ALTER DATABASE [EcomerceDB_19-EII-1-009] SET  READ_WRITE 
GO
