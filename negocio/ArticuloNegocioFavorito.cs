using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class ArticuloNegocioFavorito
    {
        public List<Articulo> listarFavoritoConSP(ArticuloFavorito nuevo)
        {
            List<Articulo> lista = new List<Articulo>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select A.Id, A.Nombre, A.Descripcion, A.Precio from FAVORITOS, ARTICULOS A where IdUser = @IdUser and IdArticulo = A.Id ");
                datos.setearParametro("@IdUser", nuevo.IdUser);
                datos.setearParametro("@IdArticulo", nuevo.IdArticulo);
                datos.ejecutarLectura();
                
                while (datos.Lector.Read())
                {
                    Articulo aux = new Articulo();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.Precio = (decimal)datos.Lector["Precio"];

                    lista.Add(aux);

                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteFavorito(ArticuloFavorito nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Delete from FAVORITOS where IdUser = @IdUser and IdArticulo = @IdArticulo");
                datos.setearParametro("@IdUser", nuevo.IdUser);
                datos.setearParametro("@IdArticulo", nuevo.IdArticulo);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void insertarFavoritoConSP(ArticuloFavorito nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearProcedimiento("insertarFavorito");
                datos.setearParametro("@idUser", nuevo.IdUser);
                datos.setearParametro("@idArticulo", nuevo.IdArticulo);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        
    }
}
