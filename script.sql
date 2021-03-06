USE [master]
GO
/****** Object:  Database [PW3_20152C_TP2_Maratones]    Script Date: 11/23/2015 21:05:19 ******/
CREATE DATABASE [PW3_20152C_TP2_Maratones] ON  PRIMARY 
( NAME = N'PW3_20152C_TP2_Maratones', FILENAME = N'C:\DATA\PW3_20152C_TP2_Maratones.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PW3_20152C_TP2_Maratones_log', FILENAME = N'C:\DATA\PW3_20152C_TP2_Maratones_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PW3_20152C_TP2_Maratones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ARITHABORT OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET  ENABLE_BROKER
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET  READ_WRITE
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET  MULTI_USER
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PW3_20152C_TP2_Maratones] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'PW3_20152C_TP2_Maratones', N'ON'
GO
USE [PW3_20152C_TP2_Maratones]
GO
/****** Object:  Table [dbo].[Maraton]    Script Date: 11/23/2015 21:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maraton](
	[IdMaraton] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
	[MaxParticipantes] [int] NOT NULL,
	[LugarSalida] [nvarchar](200) NOT NULL,
	[ParticipantesEnEspera] [int] NOT NULL,
	[PrimerPremio] [int] NOT NULL,
	[SegundoPremio] [int] NOT NULL,
	[TercerPremio] [int] NOT NULL,
	[FechaHorarioComienzo] [datetime] NULL,
 CONSTRAINT [PK_Maraton] PRIMARY KEY CLUSTERED 
(
	[IdMaraton] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Maraton] ON
INSERT [dbo].[Maraton] ([IdMaraton], [Nombre], [MaxParticipantes], [LugarSalida], [ParticipantesEnEspera], [PrimerPremio], [SegundoPremio], [TercerPremio], [FechaHorarioComienzo]) VALUES (3, N'maraton dos', 20, N'moron', 10, 3000, 2000, 1000, CAST(0x0000A3F400D63BC0 AS DateTime))
INSERT [dbo].[Maraton] ([IdMaraton], [Nombre], [MaxParticipantes], [LugarSalida], [ParticipantesEnEspera], [PrimerPremio], [SegundoPremio], [TercerPremio], [FechaHorarioComienzo]) VALUES (4, N'maraton uno', 20, N'moron', 10, 3000, 2000, 1000, CAST(0x0000A3F400D63BC0 AS DateTime))
INSERT [dbo].[Maraton] ([IdMaraton], [Nombre], [MaxParticipantes], [LugarSalida], [ParticipantesEnEspera], [PrimerPremio], [SegundoPremio], [TercerPremio], [FechaHorarioComienzo]) VALUES (5, N'Maraton cuatro', 10, N'castelar', 0, 5000, 3000, 2000, CAST(0x0000A5620107AC00 AS DateTime))
INSERT [dbo].[Maraton] ([IdMaraton], [Nombre], [MaxParticipantes], [LugarSalida], [ParticipantesEnEspera], [PrimerPremio], [SegundoPremio], [TercerPremio], [FechaHorarioComienzo]) VALUES (6, N'maraton 3 ', 10, N'moron', 2, 3000, 2000, 2000, CAST(0x0000A58000F73140 AS DateTime))
INSERT [dbo].[Maraton] ([IdMaraton], [Nombre], [MaxParticipantes], [LugarSalida], [ParticipantesEnEspera], [PrimerPremio], [SegundoPremio], [TercerPremio], [FechaHorarioComienzo]) VALUES (7, N'maraton de mar del plata', 1, N'Mar del Plata', 1, 3000, 2000, 1000, CAST(0x0000A3F400D63BC0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Maraton] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/23/2015 21:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Contrasenia] [nvarchar](50) NOT NULL,
	[Admin] [bit] NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
	[Apellido] [nvarchar](200) NOT NULL,
	[FechaNac] [datetime] NOT NULL,
	[LugarResidencia] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([IdUsuario], [Email], [Contrasenia], [Admin], [Nombre], [Apellido], [FechaNac], [LugarResidencia]) VALUES (3, N'juan@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, N'user', N'users', CAST(0x0000A53D00000000 AS DateTime), N'moron')
INSERT [dbo].[Usuario] ([IdUsuario], [Email], [Contrasenia], [Admin], [Nombre], [Apellido], [FechaNac], [LugarResidencia]) VALUES (4, N'admin@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 1, N'admin', N'admin', CAST(0x0000A53C00000000 AS DateTime), N'moron')
INSERT [dbo].[Usuario] ([IdUsuario], [Email], [Contrasenia], [Admin], [Nombre], [Apellido], [FechaNac], [LugarResidencia]) VALUES (5, N'perez@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0, N'juan', N'Dominguez', CAST(0x0000A4C600000000 AS DateTime), N'moron')
INSERT [dbo].[Usuario] ([IdUsuario], [Email], [Contrasenia], [Admin], [Nombre], [Apellido], [FechaNac], [LugarResidencia]) VALUES (6, N'r@r.com.ar', N'e10adc3949ba59abbe56e057f20f883e', 0, N'esteban', N'Ramirez', CAST(0x0000A3F500000000 AS DateTime), N'moron')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[ResultadoMaratonParticipante]    Script Date: 11/23/2015 21:05:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoMaratonParticipante](
	[IdUsuario] [int] NOT NULL,
	[IdMaraton] [int] NOT NULL,
	[NroInscripcion] [int] NOT NULL,
	[PosicionFinal] [int] NULL,
	[TiempoLlegada] [int] NULL,
	[Finalizo] [bit] NULL,
 CONSTRAINT [PK_ResultadoMaratonParticipante_1] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdMaraton] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (3, 3, 1, 1, 90, 1)
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (3, 4, 1, NULL, NULL, NULL)
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (3, 7, 1, 1, 200, 1)
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (5, 3, 3, 2, 120, 1)
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (5, 7, 2, NULL, NULL, NULL)
INSERT [dbo].[ResultadoMaratonParticipante] ([IdUsuario], [IdMaraton], [NroInscripcion], [PosicionFinal], [TiempoLlegada], [Finalizo]) VALUES (6, 3, 2, 3, 200, 1)
/****** Object:  Default [DF_Usuario_Admin]    Script Date: 11/23/2015 21:05:19 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_Admin]  DEFAULT ((0)) FOR [Admin]
GO
/****** Object:  ForeignKey [FK_ResultadoMaratonParticipante_Maraton]    Script Date: 11/23/2015 21:05:19 ******/
ALTER TABLE [dbo].[ResultadoMaratonParticipante]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoMaratonParticipante_Maraton] FOREIGN KEY([IdMaraton])
REFERENCES [dbo].[Maraton] ([IdMaraton])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante] CHECK CONSTRAINT [FK_ResultadoMaratonParticipante_Maraton]
GO
/****** Object:  ForeignKey [FK_ResultadoMaratonParticipante_Usuario]    Script Date: 11/23/2015 21:05:19 ******/
ALTER TABLE [dbo].[ResultadoMaratonParticipante]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoMaratonParticipante_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante] CHECK CONSTRAINT [FK_ResultadoMaratonParticipante_Usuario]
GO
