USE [CATALOGOWEBDB]
GO
/****** Object:  StoredProcedure [dbo].[storedListar]    Script Date: 15/3/2023 17:44:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[storedListar] as
select A.Id, Codigo, Nombre, A.Descripcion, ImagenUrl, C.Descripcion Tipo, M.Descripcion Marca, Precio, A.IdCategoria, A.IdMarca, A.Id from ARTICULOS A, CATEGORIAS C, MARCAS M where C.Id = A.IdCategoria and M.Id = A.IdMarca
