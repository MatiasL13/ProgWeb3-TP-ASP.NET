using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Formulario_web13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
                    Usuario usuario = GetIdUsuario(context);
                    if (usuario != null)
                    {
                        txtNombre.Text = usuario.Nombre;
                        txtApellido.Text = usuario.Apellido;
                        txtResidencia.Text = usuario.LugarResidencia;
                        txtFechaNacimiento.Text = usuario.FechaNac.ToString();

                    }
                }
                catch (Exception ex)
                {

                }

            }
        }

        protected void btnEditarUser_Click(object sender, EventArgs e)
        {
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            DateTime fecha;
            bool dateConvert = DateTime.TryParse(txtFechaNacimiento.Text, out fecha);

            try
            {
                Usuario usuario = GetIdUsuario(context);
                if (usuario != null)
                {
                    usuario.Nombre = txtNombre.Text;
                    usuario.Apellido = txtApellido.Text;
                    usuario.LugarResidencia = txtResidencia.Text;
                    usuario.FechaNac = fecha;

                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {

            }

        }

        private Usuario GetIdUsuario(PW3_20152C_TP2_MaratonesEntities3 context)
        {
           
            int result = 0;
            string[] id = HttpContext.Current.User.Identity.Name.Split('-');
            bool ok = Int32.TryParse(id[0], out  result);

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
