using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*Esta pantalla deberá contener el listado de todos los maratones realizados por un usuario
            logueado. Además, indicar la posición en la que llegó en ese maratón, el tiempo que tardó en
            finalizar la carrera y, en caso de haber ganado un premio, mostrar la cantidad de dinero.            */

            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            Usuario usuario = GetIdUsuario(context);
            if (usuario != null)
            {
                int id_usuario = usuario.IdUsuario;

                var qh = (from mr in context.ResultadoMaratonParticipante
                          join m in context.Maraton
                          on mr.IdMaraton equals m.IdMaraton

                          where (mr.IdUsuario == id_usuario) && (mr.PosicionFinal != null)
                          orderby m.FechaHorarioComienzo descending

                          select new {
                              Maraton = m.Nombre,
                              Posicion = mr.PosicionFinal,
                              Tiempo = mr.TiempoLlegada,
                              Premio = mr.PosicionFinal==3 ? m.TercerPremio : (mr.PosicionFinal == 2 ? m.SegundoPremio : (mr.PosicionFinal == 1 ? m.PrimerPremio : 0))
                          }).ToList();
                GVHistorial.DataSource = qh;
                GVHistorial.DataBind();


            }
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


    }
}