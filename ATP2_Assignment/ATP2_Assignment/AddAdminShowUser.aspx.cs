using System;
using System.Collections.Generic;
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
    }
}