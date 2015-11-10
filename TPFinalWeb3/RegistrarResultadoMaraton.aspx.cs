using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string hola = "123";
            int conversion;

            bool resultado = Int32.TryParse(hola, out conversion);
         int numero = 123;
          string hola2 =  numero.ToString();
          if (resultado)
              lblCarreraStatus.Text = "CORRECTO!";*/

            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            var qMaraton = context.Maraton;

            DDLMaraton.DataValueField="IdMaraton";
            DDLMaraton.DataTextField = "Nombre";
            DDLMaraton.DataSource = qMaraton;
            DDLMaraton.DataBind();

            var part = context.Usuario.Select(u => new { IdUsuario = u.IdUsuario, NombreCompleto = u.Nombre + " " + u.Apellido});
            DDLParticipante.DataValueField = "IdUsuario";
            DDLParticipante.DataTextField="NombreCompleto";
            DDLParticipante.DataSource = part;
            DDLParticipante.DataBind();
        }
    }
}