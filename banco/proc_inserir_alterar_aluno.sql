USE [SGEU]
GO

/****** Object:  StoredProcedure [dbo].[proc_inserir_alterar_aluno]    Script Date: 18/11/2015 10:39:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Almeida
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_inserir_alterar_aluno] 
	
	@idusuario int,
	@nome_usuario varchar(200),
	@telefone_usuario varchar(200),
	@login varchar(200),
	@endereco_usuario varchar(200),
	@id_turma int,
	@senha varchar(200),
	@idgrupousuario int

AS
BEGIN
	
	if exists(select * from usuarios where idusuario = @idusuario)		
		update usuarios set idgrupousuario=@idgrupousuario,idusuario = @idusuario,login = @login,telefone_usuario = @telefone_usuario,endereco_usuario = @endereco_usuario,id_turma = @id_turma, nome_usuario=@nome_usuario, senha=@senha where idusuario = @idusuario
	else
		begin
		
			
			if(@idusuario = null)
				set @idusuario = 1
			
			insert into usuarios(idusuario,nome_usuario,login,telefone_usuario,endereco_usuario,id_turma,senha,idgrupousuario) values (@idusuario, @nome_usuario, @login,@telefone_usuario,@endereco_usuario,@id_turma,@senha,@idgrupousuario)
		end
		
END

GO

