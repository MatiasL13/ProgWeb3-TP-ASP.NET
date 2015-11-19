using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (val1)
            {
                HttpContext.Current.Response.Redirect("UserIndex.aspx", true);
            }

            /*el resultado del último maratón registrado con los primeros 10 competidores.
            Si hay más de un maratón en simultáneo, mostrar el que tenga mayor cantidad de participantes
            registrados.*/

            //genero la vatiable context
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            //Obtengo primero la ultima maratón corrida
            DateTime hoy = DateTime.Now;
            List<Maraton> qm = (from ms in context.Maraton
                      join mr in context.ResultadoMaratonParticipante
                      on ms.IdMaraton equals mr.IdMaraton

                      where ms.FechaHorarioComienzo <= hoy && mr.PosicionFinal >=1 && mr.PosicionFinal<=10
                     orderby ms.FechaHorarioComienzo descending, ms.MaxParticipantes descending

                     select ms ).ToList();

            //var qmlista = qm.ToList();
            String NombreMaraton = "NO HAY MARATONES PARA MOSTRAR";
            if (qm.Count() > 0)
            {
                NombreMaraton = qm[0].Nombre;
                int idMaraton = qm[0].IdMaraton;

                var qp = (from mr in context.ResultadoMaratonParticipante
                                    join us in context.Usuario
                                    on mr.IdUsuario equals us.IdUsuario

                                    where (mr.IdMaraton == idMaraton) && (mr.PosicionFinal <= 10)
                                    orderby mr.PosicionFinal ascending

                                    select new { Nombre = us.Nombre + " " + us.Apellido, Posicion = mr.PosicionFinal }).ToList();
                GVResultados.DataSource = qp;
                GVResultados.DataBind();

            }//End if



            hMaraton.InnerText = NombreMaraton;

            //ResultadoMaratonParticipante contextResultadoMaratonParticipante = new ResultadoMaratonParticipante();

            //PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            //GVResultados.DataSource = context.ResultadoMaratonParticipante;
            //GVResultados.DataBind();

        }
    }
}
