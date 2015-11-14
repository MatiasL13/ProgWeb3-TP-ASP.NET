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
            ResultadoMaratonParticipante  resultadoDatos = new ResultadoMaratonParticipante();
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            GVResultados.DataSource = context.ResultadoMaratonParticipante;
            GVResultados.DataBind();

        }
    }
}
