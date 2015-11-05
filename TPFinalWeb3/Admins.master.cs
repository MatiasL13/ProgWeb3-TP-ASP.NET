using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalWeb3
{
    public partial class Admins : System.Web.UI.MasterPage
    {
        public string adminSession
        {
            get { return Session["admin"] as string; }
            set { Session.Add("admin", value); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (!val1 || !HttpContext.Current.User.IsInRole("Admin"))
            {
                HttpContext.Current.Response.Redirect("Default.aspx", true);

            }
        
        }
    }
}