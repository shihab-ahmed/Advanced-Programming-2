﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void SignUp_Click(object sender, EventArgs e)
        {
            String fname = FnameTxt.Text;
            String lname = LnameTxt.Text;
            String uid = UserIDTxt.Text;
            String email = EmailTxt.Text;
            DateTime bday = DateTime.Parse(TextBoxDOB.Text);
            String gender = GenderButtonList.SelectedValue;
            String pass = PassTxt.Text;
            int age = new DateTime((DateTime.Now - Convert.ToDateTime(bday)).Ticks).Year;
            Response.Write(age);

            SampleDataContext context = new SampleDataContext();

            User user = new User()
            {
                FirstName = fname,
                LastName = lname,
                UserID = uid,
                BirthDate = bday,
                Age = age,
                Gender = gender,
                Password = pass,
                Type = "User",
                Email = email
            };
            context.Users.InsertOnSubmit(user);
            context.SubmitChanges();
            ResultText.Visible = true;
        }
    }
}