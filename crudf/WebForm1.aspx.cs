using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace crudf
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcrud"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GVbind();
            }
        }
        void clear()
        {
            username.Text = "";
            email.Text = "";
            contact.Text = "";
            password.Text = "";

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[crud]
           ([Username]
           ,[Email]
           ,[Contact]
           ,[Password])
     VALUES
           ('" + username.Text + "', '" + email.Text + "', '" + contact.Text + "', '" + password.Text + "')", con);

                cmd.ExecuteNonQuery();
                GVbind();
                clear();

            }

        }
        protected void BtnReset_Click(object sender, EventArgs e)
        {
            username.Text = "";
            email.Text = "";
            contact.Text = "";
            password.Text = "";
        }
        protected void GVbind()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from crud", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GVbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string contact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string password = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"UPDATE crud
   SET Username = '" + name + "',Email = '" + email + "',Contact = '" + contact + "',Password = '" + password + "'WHERE Id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("Updated");
                    GridView1.EditIndex = -1;
                    GVbind();
                }
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"DELETE FROM crud WHERE Id='" + id + "'",con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("Deleted");
                    GridView1.EditIndex = -1;
                    GVbind();
                }
            }
  
        }
    }
}