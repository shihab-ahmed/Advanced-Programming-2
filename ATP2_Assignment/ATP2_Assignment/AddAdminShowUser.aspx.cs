using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class AddAdminShowUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadUser();


        }
        private void loadUser()
        {
            SampleDataContext sContext = new SampleDataContext();
            List<User> Users = (from user in sContext.Users
                                select user).ToList();
            GridView1.DataSource = Users;
            GridView1.DataBind();
        }
        private void search(String wordToSearch,String key)
        {
            SampleDataContext context = new SampleDataContext();
            List<User> Users = new List<User>();

            switch (key)
            {
                case "Any":
                    Users = context.Users.Where(u => u.FirstName.Contains(wordToSearch)
                                                  || u.LastName.Contains(wordToSearch)
                                                  || u.Age.ToString().Contains(wordToSearch)
                                                  || u.BirthDate.ToString().Contains(wordToSearch)
                                                  || u.Type.Contains(wordToSearch)).ToList();
                    break;
                case "First Name":
                    Users=context.Users.Where(u => u.FirstName.Contains(wordToSearch)).ToList();
                    break;
                case "Last Name":
                    Users = context.Users.Where(u => u.LastName.Contains(wordToSearch)).ToList();
                    break;
                case "Age":
                    Users = context.Users.Where(u => u.Age.ToString().Contains(wordToSearch)).ToList();
                    break;
                case "Type":
                    Users = context.Users.Where(u => u.Type.Contains(wordToSearch)).ToList();
                    break;
                default:
         
                    break;
            }
            if(wordToSearch=="")
            {
                Users = (from user in context.Users
                         select user).ToList().ToList();
            }
           
            GridView1.DataSource = Users;
            GridView1.DataBind();
           
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            String wordToSearch = SearchBox.Text;
            String key = SearchKeyDrowDown.SelectedValue;

            search(wordToSearch, key);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            Response.Write(GridView1.Rows[e.RowIndex].Cells[1].Text);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            loadUser();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            loadUser();
           
            
        }
    }
}