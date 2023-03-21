USE [CATALOGOWEBDB]
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteFavorito]    Script Date: 15/3/2023 17:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[storedDeleteFavorito]
@IdUser int,
@IdArticulo int
as 
delete from FAVORITOS where IdUser = @IdUser and IdArticulo = @IdArticulo