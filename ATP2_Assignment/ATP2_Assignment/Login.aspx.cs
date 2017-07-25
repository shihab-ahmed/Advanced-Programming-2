using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2_Assignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_Click(object sender, EventArgs e)
        {
            String userID = idTxt.Text;
            String pass = passText.Text;

            SampleDataContext context = new SampleDataContext();
            User x=context.Users.SingleOrDefault(u => u.UserID == userID && u.Password == pass);
            if(x!=null)
            {
               
            }
            else if(userID=="system" && pass=="system")
            {
                Response.Redirect("~/AddAdminShowUser.aspx");
            }
        }
    }
}