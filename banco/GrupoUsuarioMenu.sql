USE [SGEU]
GO

/****** Object:  Table [dbo].[GrupoUsuarioMenu]    Script Date: 18/11/2015 10:12:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GrupoUsuarioMenu](
	[idmenu] [int] NOT NULL,
	[idgrupousuario] [int] NOT NULL,
 CONSTRAINT [PK_GrupoUsuarioMenu] PRIMARY KEY CLUSTERED 
(
	[idmenu] ASC,
	[idgrupousuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[GrupoUsuarioMenu]  WITH CHECK ADD  CONSTRAINT [FK_GrupoUsuarioMenu_GrupoUsuario] FOREIGN KEY([idgrupousuario])
REFERENCES [dbo].[GrupoUsuario] ([idgrupousuario])
GO

ALTER TABLE [dbo].[GrupoUsuarioMenu] CHECK CONSTRAINT [FK_GrupoUsuarioMenu_GrupoUsuario]
GO

ALTER TABLE [dbo].[GrupoUsuarioMenu]  WITH CHECK ADD  CONSTRAINT [FK_GrupoUsuarioMenu_Menu] FOREIGN KEY([idmenu])
REFERENCES [dbo].[Menu] ([idmenu])
GO

ALTER TABLE [dbo].[GrupoUsuarioMenu] CHECK CONSTRAINT [FK_GrupoUsuarioMenu_Menu]
GO

