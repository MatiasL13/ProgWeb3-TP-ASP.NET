using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearMaraton_Click(object sender, EventArgs e)
        {
            int cantidadMaximaParticipantes = 0, primerPremio = 0, segundoPremio = 0, tercerPremio = 0, cantidadListaEspera = 0;
            Maraton maraton = new Maraton();
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            DateTime fecha;

            bool parseParticipantes = Int32.TryParse(txtCantParticipantes.Text, out  cantidadMaximaParticipantes);
            bool parseLista = Int32.TryParse(txtCantLista.Text, out  cantidadListaEspera);
            bool parsePrimerPremio = Int32.TryParse(txtPuesto1.Text, out  primerPremio);
            bool parseSegundoPremio = Int32.TryParse(txtPuesto2.Text, out  segundoPremio);
            bool parseTercerPremio = Int32.TryParse(txtPuesto3.Text, out  tercerPremio);
            bool dateConvert = DateTime.TryParse(txtFechaHora.Text, out fecha);
            

            if (parseParticipantes || parseLista || parsePrimerPremio || parseSegundoPremio || parseTercerPremio)
            {
                maraton.Nombre = txtNombre.Text;
                maraton.MaxParticipantes = cantidadMaximaParticipantes;
                maraton.LugarSalida = txtLugarSalida.Text;
                maraton.ParticipantesEnEspera = cantidadListaEspera;
                maraton.PrimerPremio = primerPremio;
                maraton.SegundoPremio = segundoPremio;
                maraton.TercerPremio = tercerPremio;
                maraton.FechaHorarioComienzo = fecha;

            }
            context.Maraton.AddObject(maraton);
            context.SaveChanges();

            /**/
            txtNombre.Text = null;
            txtCantLista.Text = null;
            txtLugarSalida.Text = null;
            txtCantParticipantes.Text = null;
            txtPuesto1.Text = null;
            txtPuesto2.Text = null;
            txtPuesto3.Text = null;
            txtFechaHora.Text = null;

        }
    }
}