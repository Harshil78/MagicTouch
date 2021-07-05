using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VSeqAns : System.Web.UI.Page
{
    Helper h = new Helper();

    protected void Page_Load(object sender, EventArgs e)
    {

        TxtSQue.Text = Session["SecurityQue"].ToString();
    }
  
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (h.VSeqAns(TxtAns.Text))
        {
            Response.Redirect("VChangePassword.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert(' Incorrect Answer')</script>");
        }
    }
}