USE [CATALOGOWEBDB]
GO
/****** Object:  StoredProcedure [dbo].[storedModificarArticulo]    Script Date: 15/3/2023 17:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[storedModificarArticulo]
@codigo varchar(10),
@nombre varchar(30),
@descripcion varchar(50),
@idMarca int,
@idCategoria int,
@imagenUrl varchar(300),
@precio int,
@id int
as
update ARTICULOS set Codigo = @codigo, Nombre = @nombre, Descripcion = @descripcion, IdMarca = @idMarca, IdCategoria = @idCategoria, ImagenUrl = @imagenUrl, Precio = @precio 
where Id = @id