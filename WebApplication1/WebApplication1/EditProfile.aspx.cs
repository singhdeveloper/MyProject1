using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["id"].ToString() + Session["password"].ToString());
            if (Session["id"] == null)
                Response.Redirect("Default.aspx");
            else
            {
                if (!Page.IsPostBack)
                {
                    feedComponent();
                }
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString.connectionString);

                SqlCommand cmd = new SqlCommand("UPDATE [user] SET [ID]=@id,[PASSWORD]=@password,[NAME]=@name,[MOBILE]=@mobile,[ADDRESS]=@address,[EMAIL]=@email WHERE[ID] = '" + Session["id"].ToString() + "' AND[PASSWORD] = '" + Session["password"].ToString() + "'", con);
                cmd.Parameters.Add("@id", TextBoxId.Text);
                cmd.Parameters.Add("@password", TextBoxPassword.Text);
                cmd.Parameters.Add("@name", TextBoxName.Text);
                cmd.Parameters.Add("@mobile", TextBoxMobile.Text);
                cmd.Parameters.Add("@address", TextBoxAddress.Text);
                cmd.Parameters.Add("@email", TextBoxEmail.Text);

                con.Open();
                int k = cmd.ExecuteNonQuery();
                Response.Write(k);
                con.Close();

                if (k == 1)
                {
                    Session["id"] = TextBoxId.Text;
                    Session["password"] = TextBoxPassword.Text;
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "alert(\"Sucessfully Updated\");", true);
                    feedComponent();
                    //Response.Redirect("HomePage.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "alert(\"Wrong UserId Or Password\");", true);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void feedComponent()
        {
            try
            {

                //Session["id"] = "admin"; //remove it later
                //Session["password"] = "admin"; //remove it later

                SqlConnection con = new SqlConnection(ConnectionString.connectionString);

                SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE [ID]=@id AND [PASSWORD]=@password", con);
                cmd.Parameters.Add("@id", Session["id"].ToString());
                cmd.Parameters.Add("@password", Session["password"].ToString());

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();

                TextBoxId.Text = reader.GetString(0);
                TextBoxPassword.Text = reader.GetString(1);
                TextBoxName.Text = reader.GetString(2);
                TextBoxMobile.Text = reader.GetString(3);
                TextBoxAddress.Text = reader.GetString(4);
                TextBoxEmail.Text = reader.GetString(6);

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}