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
            lblIncorrecto.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            try
            {
                Usuario usuario = context.Usuario.Where(r => r.Nombre == UserName.Text && r.Contrasenia == Password.Text).First();
                if (usuario != null)
                {
                    string roles = "Member";
                    FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(
                      1,
                      usuario.IdUsuario.ToString() + "-" + usuario.Nombre.ToString(),  //user id
                      DateTime.Now,
                      DateTime.Now.AddMinutes(20),  // expiry
                      false,  //do not remember
                      roles,
                      "/");
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName,
                                                       FormsAuthentication.Encrypt(authTicket));
                    Response.Cookies.Add(cookie);
                    Response.Redirect("/default.aspx");
                }
                else
                {
                    lblIncorrecto.Text = "Contraseña o Usuario Incorrecto";
                }
   
            }
            catch (Exception ex)
            {
                lblIncorrecto.Text = "Contraseña o Usuario Incorrecto ";
            }
         
        }
    }
}
