using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBAcme DB = (DBAcme)Session["DB"];

            string name = fullName.Text;
            string pass = password.Text;
            string conPassword = confirmPassword.Text;
            string mail = email.Text;
            string Phone = phone.Text;
            int Postal = Convert.ToInt32(postalcode.Text);
            int numrow = DB.InsertUser(mail, name, pass, conPassword, Phone, Postal);
            Response.Redirect("/Account/Login");
            Session["reg"] = "Registered";
            
        }
    }
}