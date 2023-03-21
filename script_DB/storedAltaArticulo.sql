USE [CATALOGO_WEB_DB]
GO
/****** Object:  StoredProcedure [dbo].[storedAltaArticulo]    Script Date: 15/3/2023 16:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[storedAltaArticulo]
@codigo varchar(10),
@nombre varchar(50),
@descripcion varchar(50),
@idMarca int,
@idTipo int,
@img varchar(300),
@precio int
as 
insert into ARTICULOS values (@codigo,@nombre,@descripcion,@idMarca, @idTipo, @img, @precio)