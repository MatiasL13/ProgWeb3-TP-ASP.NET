using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            Usuario usuario  = context.Usuario.Where(r => r.Nombre == UserName.Text && r.Contrasenia == Password.Text).First();

          FormsAuthentication.SetAuthCookie(usuario.IdUsuario.ToString(), false /* createPersistentCookie */); // carga la cookie con el id de usuario
        }
    }
}
