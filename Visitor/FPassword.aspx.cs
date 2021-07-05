using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_FPassword : System.Web.UI.Page
{
    Helper h = new Helper(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (h.FChangePassword(TxtCPass.Text))
        {
           
            Response.Redirect("UserLogIn.aspx");
            
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert(' Not Change')</script>");
        }
    }
}