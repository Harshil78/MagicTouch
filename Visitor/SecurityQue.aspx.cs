using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Visitor_SecurityQue : System.Web.UI.Page
{
    Helper h = new Helper();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        TxtSQue.Text = Session["SecurityQue"].ToString();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (h.SeqAns(TxtAns.Text))
        {
            Response.Redirect("FPassword.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert(' Incorrect Answer')</script>");
        }
    }
  
}