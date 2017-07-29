using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class AdminDashboardProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadProfileName();
            LoadUserInfo();
        }

        protected void AddAdminBtn_Click(object sender, EventArgs e)
        {

        }

        protected void AddDoctorBtn_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        private void LoadUserInfo()
        {
            User u = (User)Session["user"];
            nameTxt.Text = u.FirstName+" "+u.LastName;
            Dobtxt.Text = u.BirthDate.ToString();
            AgeTxt.Text = u.Age.ToString();
            GenderTxt.Text = u.Gender;
            Typetxt.Text = u.Type;
            EmailTxt.Text = u.Email;
        }
        private void loadProfileName()
        {
            User u = (User)Session["user"];
            nameTxt.Text= u.FirstName + " " + u.LastName;
        }
    }
}