using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["id"].ToString() + Session["password"].ToString());

            if (!Page.IsPostBack)
            {
                Session["id"] = null;
                Session["passsword"] = null;
            }
            
        }

        protected void userAuthentication()
        {
            SqlConnection con = new SqlConnection(ConnectionString.connectionString);

            SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE [ID]=@id AND [PASSWORD]=@password", con);
            cmd.Parameters.Add("@id",UserId.Text);
            cmd.Parameters.Add("@password",Password.Text);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            if(reader.HasRows)
            {

                Session["id"] = reader.GetString(0);
                Session["password"]= reader.GetString(1);
                con.Close();
                Response.Write("s");

                Response.Redirect("HomePage.aspx");

            }
            else
            {
                con.Close();
                Response.Write("f");
                ScriptManager.RegisterStartupScript(this,GetType(),"ServerControlScript","alert(\"Wrong UserId Or Password\");",true);
            }

            

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            userAuthentication();
        }
    }
}