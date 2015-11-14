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

            /*var consulta = context.Maraton.Where(m=>m.FechaHorarioComienzo>= DateTime.Now)
            var consulta=   from m in context.Maraton
                            where m.FechaHorarioComienzo >= DateTime.Now
                            group m by a.ResolvedDate into g
                            select new { ResolvedOn = g.Key, NumberResolved = g.Count() }
                TableMaratones. = context.Maraton;
            TableMaratones.DataBind();*/
        }
    }
}