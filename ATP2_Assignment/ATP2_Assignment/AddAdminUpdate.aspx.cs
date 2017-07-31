using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class AddAdminUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillTextBox();
            ResetPage();
        }
        private void SessionInfoUpdate(String userID,String pass)
        {
            SampleDataContext context = new SampleDataContext();
            User x = context.Users.SingleOrDefault(u => u.UserID == userID && u.Password == pass);
            Session["user"] = x;
        }
        private void ResetPage()
        {
            ResultText.Visible = false;
            ChangePassText.Visible = false;
        }

        private void fillTextBox()
        {
           
            User user = (User)Session["user"];
            nameTxt.Text = user.FirstName + " " + user.LastName;

            FnameTxt.Text = user.FirstName;
            LnameTxt.Text = user.LastName;
            EmailTxt.Text = user.Email;
            TextBoxDOB.Text = user.BirthDate.ToShortDateString();

            if (user.Gender == "Male") GenderButtonList.SelectedIndex = 0;
            if (user.Gender == "Female") GenderButtonList.SelectedIndex = 1;
        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            SampleDataContext context = new SampleDataContext();
            User user = (User)Session["user"];

            String fname = FnameTxt.Text;
            String lname = LnameTxt.Text;
            String email = EmailTxt.Text;
            DateTime bday = DateTime.Parse(TextBoxDOB.Text);
            String gender = GenderButtonList.SelectedValue;
            
            int age = DateTime.Now.Year - bday.Year;


            var userToUpdate =  (from u in context.Users
                         where u.UserID == user.UserID
                         select u).First();

           
            userToUpdate.FirstName = fname;
            userToUpdate.LastName = lname;
            userToUpdate.Email = email;
            userToUpdate.BirthDate = bday;
            userToUpdate.Gender = gender;
            userToUpdate.Age = age;


            context.SubmitChanges();

            ResultText.Visible = true;
            SessionInfoUpdate(user.UserID,user.Password);
        }

        protected void ChangePassBtn_Click(object sender, EventArgs e)
        {
            SampleDataContext context = new SampleDataContext();
            User user = (User)Session["user"];

            if(changepassTxt.Text==user.Password)
            {
                var userToUpdate = (from u in context.Users
                                    where u.UserID == user.UserID
                                    select u).First();
                userToUpdate.Password = PassTxt.Text;
                context.SubmitChanges();
                ChangePassText.Visible = true;
                SessionInfoUpdate(user.UserID, userToUpdate.Password);
            }
            else
            {
                wrongpassTxt.Visible = false;
            }
           
        }

        protected void ImageButtonShowCalendar_Click(object sender, ImageClickEventArgs e)
        {
            CalendarDOB.Visible = !CalendarDOB.Visible;
        }

        protected void CalendarDOB_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDOB.Text = CalendarDOB.SelectedDate.ToShortDateString();
            CalendarDOB.Visible = false;
        }
    }
}