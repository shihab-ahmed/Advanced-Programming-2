using System;
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
    }
}