using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["id"].ToString() + Session["password"].ToString());

            //Session["id"] = "admin"; //remove it later
            //Session["password"] = "admin"; //remove it later

            if (Session["id"] == null)
                Response.Redirect("Default.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Default.aspx");
        }

        protected void EditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }

        protected void AlterUsers_Click(object sender, EventArgs e)
        {

        }
    }
}