using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TPFinalWeb3
{
    /// <summary>
    /// Summary description for servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class servicio : System.Web.Services.WebService
    {

        public servicio()
        {

        }
        [WebMethod(EnableSession = true)]
        public List<ResultadoMaratonUsuario> ObtenerMaratonesRealizados()
        {
            var dataContext = new PW3_20152C_TP2_MaratonesEntities3();
            Usuario usuario = GetIdUsuario(dataContext);
            var q = from a in dataContext.Usuario
                    join r in dataContext.ResultadoMaratonParticipante on a.IdUsuario equals r.IdUsuario
                    join m in dataContext.Maraton on r.IdMaraton equals m.IdMaraton
                    where a.IdUsuario == usuario.IdUsuario
                    select new ResultadoMaratonUsuario { Maraton = m.Nombre };

            var qh = (from mr in dataContext.ResultadoMaratonParticipante
                      join m in dataContext.Maraton
                       on mr.IdMaraton equals m.IdMaraton

                       where (mr.IdUsuario == usuario.IdUsuario) && (mr.PosicionFinal != null)
                       orderby m.FechaHorarioComienzo descending

                      select new ResultadoMaratonUsuario
                       {
                           Maraton = m.Nombre,
                           Posicion = mr.PosicionFinal,
                           Tiempo = mr.TiempoLlegada,
                           Premio = mr.PosicionFinal == 3 ? m.TercerPremio : (mr.PosicionFinal == 2 ? m.SegundoPremio : (mr.PosicionFinal == 1 ? m.PrimerPremio : 0))
                       }).ToList();
            return qh;


        }
        private Usuario GetIdUsuario(PW3_20152C_TP2_MaratonesEntities3 context)
        {

            int result = 0;
            string[] id = HttpContext.Current.User.Identity.Name.Split('-');
            bool ok = Int32.TryParse(id[0], out result);

            try
            {
                return context.Usuario.Where(r => r.IdUsuario == result).First();
            }
            catch (Exception ex)
            {
                return null;
            }

        }

        public class ResultadoMaratonUsuario
        {

            public string Maraton { get; set; }

            public int? Posicion { get; set; }
            public int? Tiempo { get; set; }
            public int Premio { get; set; }


        }
    }
}
