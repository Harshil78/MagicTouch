using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_ChangePass : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void BtnChangePass_Click(object sender, EventArgs e)
    {
        if (h.UserChangePassword(TxtOldPass.Text, TxtNewPass.Text))
            Response.Redirect("Home.aspx");
        else
        {
            Response.Write(@"<script language='javascript'>alert('User Name Or Password Incorrect')</script>");
        }
    }
}