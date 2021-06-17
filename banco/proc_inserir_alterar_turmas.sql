USE [SGEU]
GO

/****** Object:  StoredProcedure [dbo].[proc_inserir_alterar_turmas]    Script Date: 18/11/2015 10:39:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[proc_inserir_alterar_turmas] 
	
@idturma int,
@nome_turma varchar(50)

AS
BEGIN

if exists(select * from turmas where idturma = @idturma)		
		update turmas set idturma =@idturma, nome_turma = @nome_turma where idturma = @idturma
	else
		begin
			select @idturma = max(idturma)+1 from turmas
			
			if(@idturma = null)
				set @idturma = 1
			
			insert into turmas(idturma,nome_turma) values (@idturma, @nome_turma)
		end

END




GO

