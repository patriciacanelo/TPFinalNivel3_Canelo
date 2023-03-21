using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public static class Seguridad
    {
        public static bool sesionActiva(object user)
        {
            Cliente trainee = user != null ? (Cliente)user : null;
            if (trainee != null && trainee.Id != 0)
                return true;
            else
                return false;
        }
        public static bool esAdmin(object user)
        {
            Cliente trainee = user != null ? (Cliente)user : null;
            return trainee != null ? trainee.Admin : false;
        }
    }   
}
