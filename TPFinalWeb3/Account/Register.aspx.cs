using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            DateTime fecha;
            Usuario usuario = new Usuario();
            PW3_20152C_TP2_MaratonesEntities3 context = new PW3_20152C_TP2_MaratonesEntities3();

            bool dateConvert = DateTime.TryParse(txtFechaNac.Text, out fecha);


            usuario.Nombre = UserName.Text;
            usuario.Apellido = txtUserLastName.Text;
            usuario.LugarResidencia = txtLugarRecidencia.Text;
            usuario.Email = Email.Text;
            usuario.FechaNac = fecha;
            usuario.Contrasenia = Password.Text;

            //context.AddTousuarios(usuario);
            context.Usuario.AddObject(usuario);
            context.SaveChanges();
        

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
    }

}

