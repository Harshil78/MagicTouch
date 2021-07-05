using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VForgotPassword : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (h.VForgotPassword(TxtEmail.Text))
        {
            Response.Redirect("VSeqAns.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert(' Incorrect Email')</script>");
        }
    }
}