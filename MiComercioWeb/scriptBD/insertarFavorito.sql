USE [CATALOGOWEBDB]
GO
/****** Object:  StoredProcedure [dbo].[insertarFavorito]    Script Date: 15/3/2023 17:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertarFavorito]
@IdUser int,
@IdArticulo int
as 
insert into FAVORITOS(IdUser, IdArticulo) values (@IdUser, @IdArticulo)