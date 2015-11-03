USE [master]
GO
/****** Object:  Database [PW3_20152C_TP2_Maratones]    Script Date: 9/13/2015 11:45:11 PM ******/
CREATE DATABASE [PW3_20152C_TP2_Maratones]
GO
USE [PW3_20152C_TP2_Maratones]
GO
/****** Object:  Table [dbo].[Maraton]    Script Date: 9/13/2015 11:45:11 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResultadoMaratonParticipante]    Script Date: 9/13/2015 11:45:11 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 9/13/2015 11:45:11 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_Admin]  DEFAULT ((0)) FOR [Admin]
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoMaratonParticipante_Maraton] FOREIGN KEY([IdMaraton])
REFERENCES [dbo].[Maraton] ([IdMaraton])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante] CHECK CONSTRAINT [FK_ResultadoMaratonParticipante_Maraton]
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoMaratonParticipante_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResultadoMaratonParticipante] CHECK CONSTRAINT [FK_ResultadoMaratonParticipante_Usuario]
