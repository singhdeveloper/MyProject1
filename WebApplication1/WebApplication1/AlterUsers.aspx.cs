using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AlterUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id"] = "admin";
            Session["password"] = "admin";

            if (IsPostBack)
            {

            }
            else
            {
                if (Session["id"] == null)
                    Response.Redirect("Default.aspx");

                int i = getUserType();
                if (i==1 ) //means admin 
                {
                    Response.Write("hi");
                    feedGridView(i);
                }
            }
        }


        protected int getUserType()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString.connectionString);

                SqlCommand cmd = new SqlCommand("SELECT [USER_TYPE_ID] FROM [user] WHERE [ID]=@id AND [PASSWORD]=@password", con);
                cmd.Parameters.Add("@id", Session["id"].ToString());
                cmd.Parameters.Add("@password", Session["password"].ToString());

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                reader.Read();
                int i= int.Parse(reader.GetString(0));

                con.Close();

                return i;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            return 4;
        }
        protected void feedGridView(int k)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString.connectionString);

                
                SqlCommand cmd = new SqlCommand("SELECT [ID],[PASSWORD],[NAME],[MOBILE],[ADDRESS],[LAST_LOGIN],[EMAIL],[user].[USER_TYPE_ID],null as 'DELETE' FROM [user] join [user_type_utility] ON [user].[USER_TYPE_ID]=[user_type_utility].[USER_TYPE_ID] Where[user].[USER_TYPE_ID] != '" + k +"'", con);


                con.Open();
                UserDetailGridView.DataSource = cmd.ExecuteReader();
                UserDetailGridView.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}