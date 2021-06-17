USE [SGEU]
GO

/****** Object:  Table [dbo].[usuarios]    Script Date: 18/11/2015 10:12:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[usuarios](
	[idusuario] [int] NOT NULL,
	[nome_usuario] [varchar](50) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[telefone_usuario] [varchar](50) NOT NULL,
	[endereco_usuario] [varchar](50) NOT NULL,
	[id_turma] [int] NULL,
	[senha] [varchar](50) NOT NULL,
	[idgrupousuario] [int] NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_GrupoUsuario] FOREIGN KEY([idgrupousuario])
REFERENCES [dbo].[GrupoUsuario] ([idgrupousuario])
GO

ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_GrupoUsuario]
GO

ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_turmas] FOREIGN KEY([id_turma])
REFERENCES [dbo].[turmas] ([idturma])
GO

ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_turmas]
GO

