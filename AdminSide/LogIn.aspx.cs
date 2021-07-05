using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Default : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["AdminName1"] != null)

                TxtUsername.Text = Request.Cookies["AdminName1"].Value;

            if (Request.Cookies["Password1"] != null)

                TxtPassword.Attributes.Add("value", Request.Cookies["Password1"].Value);
            if (Request.Cookies["AdminName1"] != null && Request.Cookies["Password1"] != null)
                RememberMe.Checked = true;
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (h.AdminLogin(TxtUsername.Text, TxtPassword.Text))
        {
            if (RememberMe.Checked == true)
            {
                Response.Cookies["AdminName"].Value = TxtUsername.Text;
                Response.Cookies["Password1"].Value = TxtPassword.Text;
                Response.Cookies["AdminName1"].Expires = DateTime.Now.AddDays(365);
                Response.Cookies["Password1"].Expires = DateTime.Now.AddDays(365);
            }

            else
            {

                Response.Cookies["AdminName1"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password1"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Redirect("~/AdminSide/ViewUser.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('User Name Or Password Incorrect')</script>");
        }
    }
}