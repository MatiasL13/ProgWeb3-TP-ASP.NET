using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Text;

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

            string encriptado = getMd5Hash(Password.Text);
            usuario.Nombre = UserName.Text;
            usuario.Apellido = txtUserLastName.Text;
            usuario.LugarResidencia = txtLugarRecidencia.Text;
            usuario.Email = Email.Text;
            usuario.FechaNac = fecha;
            usuario.Contrasenia = encriptado;
           





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
        static bool verifyMd5Hash(string input, string hash)
        {
            // Hash the input.
            string hashOfInput = getMd5Hash(input);

            // Create a StringComparer an compare the hashes.
            StringComparer comparer = StringComparer.OrdinalIgnoreCase;

            if (0 == comparer.Compare(hashOfInput, hash))
            {
                return true;
            }
            else
            {
                return false;
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

