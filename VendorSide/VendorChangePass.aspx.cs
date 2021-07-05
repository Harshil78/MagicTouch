using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorChangePass : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
    }
    protected void BtnChangePass_Click(object sender, EventArgs e)
    {
        if (h.VendorChangePassword(TxtOldPass.Text, TxtNewPass.Text))
            Response.Redirect("VendorChangePass.aspx");
        else
        {
            Response.Write(@"<script language='javascript'>alert('User Name Or Password Incorrect')</script>");
        }
    }
}