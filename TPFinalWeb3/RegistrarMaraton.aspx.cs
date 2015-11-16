using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ResultadoMaratonParticipante resultadoDatos = new ResultadoMaratonParticipante();
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            var query = from m in context.Maraton
                        where m.FechaHorarioComienzo >= DateTime.Now
                          && (m.MaxParticipantes + m.ParticipantesEnEspera) >
                                                                            (from rm in context.ResultadoMaratonParticipante
                                                                             where rm.IdMaraton == m.IdMaraton
                                                                             select rm).Count()
                        select new { m.Nombre, m.LugarSalida, m.FechaHorarioComienzo };
            String mensaje = "No existen maratones disponibles por el momento";
            if (query.Count() > 0)
            {
                mensaje = "Cantidad de maratones disponibles: " + query.Count();
                GVMaratones.DataSource = query;
                GVMaratones.DataBind();
            }

            hMaraton.InnerText = mensaje;



            /*var consulta = context.Maraton.Where(m=>m.FechaHorarioComienzo>= DateTime.Now)
            var consulta=   from m in context.Maraton
                            where m.FechaHorarioComienzo >= DateTime.Now
                            group m by a.ResolvedDate into g
                            select new { ResolvedOn = g.Key, NumberResolved = g.Count() }
                TableMaratones. = context.Maraton;
            TableMaratones.DataBind();*/
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Inscribirme")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GVMaratones.Rows[index];

                // Add code here to add the item to the shopping cart.
            }

        }
    }
}