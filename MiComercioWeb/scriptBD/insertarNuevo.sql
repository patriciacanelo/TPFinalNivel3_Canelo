USE [CATALOGOWEBDB]
GO
/****** Object:  StoredProcedure [dbo].[insertarNuevo]    Script Date: 15/3/2023 17:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertarNuevo]
@email varchar(50),
@pass varchar(50)
as 
insert into USERS (email, pass, admin) output inserted.Id values (@email, @pass, 0)