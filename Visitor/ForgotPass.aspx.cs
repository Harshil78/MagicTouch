using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_ForgotPass : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (h.UForgotPassword(TxtEmail.Text))
        {
            Response.Redirect("SecurityQue.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert(' Incorrect Email')</script>");
        }
    }
}