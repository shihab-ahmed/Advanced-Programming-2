﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class AdminDashboardAddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalendarDOB_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDOB.Text = CalendarDOB.SelectedDate.ToShortDateString();
            CalendarDOB.Visible = false;
          
        }

        protected void ImageButtonShowCalendar_Click(object sender, ImageClickEventArgs e)
        {
            CalendarDOB.Visible = !CalendarDOB.Visible;
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            SampleDataContext context = new SampleDataContext();
            List<User> uList = context.Users.Where(u => u.UserID == UserIDTxt.Text).ToList();

            if (uList.Count <= 0)
            {
                String fname = FnameTxt.Text;
                String lname = LnameTxt.Text;
                String uid = UserIDTxt.Text;
                String email = EmailTxt.Text;
                DateTime bday = DateTime.Parse(TextBoxDOB.Text);
                String gender = GenderButtonList.SelectedValue;
                String pass = PassTxt.Text;
                int age = new DateTime((DateTime.Now - Convert.ToDateTime(bday)).Ticks).Year;



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


                

                String specialist=DropDownListSpecialist.SelectedValue;
                int experience = Int32.Parse(ExperienceTxt.Text);

                Doctor doc = new Doctor()
                {
                    DocID = user.id,
                    Specialist = specialist,
                    Experience = experience
                };

                context.Doctors.InsertOnSubmit(doc);
                context.SubmitChanges();

                ResultText.Visible = true;
                NameTaken.Visible = false;
            }
            else
            {
                NameTaken.Visible = true;
                ResultText.Visible = false;
            }

        }
    }
}