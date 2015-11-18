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

        protected void btnRegistrarResultados_Click(object sender, EventArgs e)
        {
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            int id_maraton = Int32.Parse(DDLMaraton.SelectedValue);
            int id_usuario = Int32.Parse(DDLParticipante.SelectedValue);
            string estado = DDLCarreraStatus.SelectedValue;
            bool estadobool = false;
            if (estado == "true")
            {
                estadobool = true;
            }                

            ResultadoMaratonParticipante resultadoMaraton = (from rm in context.ResultadoMaratonParticipante
                                                            where rm.IdMaraton == id_maraton && rm.IdUsuario == id_usuario
                                                            select rm).First();

            resultadoMaraton.PosicionFinal = Int32.Parse(txtPosicion.Text);
            resultadoMaraton.TiempoLlegada = Int32.Parse(txtTiempo.Text);
            resultadoMaraton.Finalizo = estadobool;

            context.SaveChanges();

            txtPosicion.Text = "";
            txtTiempo.Text = "";

        }
    }
}