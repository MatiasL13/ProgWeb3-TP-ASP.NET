using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace TPFinalWeb3
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        public string adminSession
        {
            get { return Session["admin"] as string; }
            set { Session.Add("admin", value); }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
          //  HttpContext.Current.Response.Redirect("AdminIndex.aspx", true);
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();
            try
            {
                Usuario usuario = context.Usuario.Where(r => r.Nombre == UserName.Text && r.Contrasenia == Password.Text && r.Admin == true).First();
                if (usuario != null)
                {
                    string roles = "Admin,Member";
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
                    HttpContext.Current.Response.Redirect("AdminIndex.aspx", true);

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