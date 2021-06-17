USE [SGEU]
GO

/****** Object:  Table [dbo].[registro_horario]    Script Date: 18/11/2015 10:12:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[registro_horario](
	[idregistro] [int] NOT NULL,
	[idusuario] [int] NOT NULL,
	[entrada] [smalldatetime] NOT NULL,
	[saida] [smalldatetime] NOT NULL,
	[atividade] [varchar](200) NOT NULL,
	[data] [varchar](50) NOT NULL,
 CONSTRAINT [PK_registro_horario] PRIMARY KEY CLUSTERED 
(
	[idregistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

