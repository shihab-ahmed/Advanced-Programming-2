using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void LoadDepartments()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            string sql = "SELECT * FROM Departments";

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
           /* DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "DepartmentName";
            DropDownList1.DataValueField = "DepartmentId";
            DropDownList1.DataBind();*/
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadDepartments();
            //string connStr = "data source=172.16.105.69; user id=student; password=student; initial catalog=Sample;";
            //string connStr = "server=172.16.105.69; integrated security=true; database=Sample;"; // for Windows Auth
            //string connStr = "server=145425; user id=student; password=student; database=Sample;"; // for SQL Server Auth

            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            string sql = "SELECT * FROM Departments";
            //string sql = "INSERT INTO Employees VALUES (99, 'Test', 'test@aiub.edu')";

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            //cmd.ExecuteNonQuery();
            //cmd.ExecuteScalar();
            /*while(reader.Read())
            {
                Response.Write(reader[0].ToString() + "<br/>");
                Response.Write(reader["name"].ToString() + "<br/>");
                Response.Write(reader["email"].ToString() + "<br/>");
            }*/

            GridView1.DataSource = reader;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = "server=.; user id=student; password=student; database=Sample;"; // for SQL Server Auth

            /*string sql = "INSERT INTO Employees VALUES (" + TextBox1.Text + ", '" + TextBox2.Text + "', '" + TextBox3.Text + "')";

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            cmd.ExecuteNonQuery();
            Response.Redirect("~/WebForm1.aspx");*/

            /*sql = "SELECCT SUM(id) AS total FROM Employees";
            object sum = cmd.ExecuteScalar();
            int total = Convert.ToInt32(sum);*/
        }
    }
}