using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

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
                string encriptado = getMd5Hash(Password.Text);
                Usuario usuario = context.Usuario.Where(r => r.Nombre == UserName.Text && r.Contrasenia == encriptado).First();
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
        static string getMd5Hash(string input)
        {
            // Create a new instance of the MD5CryptoServiceProvider object.
            MD5CryptoServiceProvider md5Hasher = new MD5CryptoServiceProvider();

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }
    }
}
