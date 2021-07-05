using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorLogIn : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["Email"] != null)

                TxtUserName.Text = Request.Cookies["Email"].Value;

            if (Request.Cookies["Pass"] != null)

                TxtPassword.Attributes.Add("value", Request.Cookies["Pass"].Value);
            if (Request.Cookies["Email"] != null && Request.Cookies["Pass"] != null)
                RememberMe.Checked = true;
        }
    }
    protected void BtnLogIn_Click(object sender, EventArgs e)
    {
        if (h.VendorLogin(TxtUserName.Text, TxtPassword.Text))
        {
            if (RememberMe.Checked == true)
            {
                Response.Cookies["Email"].Value = TxtUserName.Text;
                Response.Cookies["Pass"].Value = TxtPassword.Text;
                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(365);
                Response.Cookies["Pass"].Expires = DateTime.Now.AddDays(365);
            }

            else
            {

                Response.Cookies["Email"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Pass"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Redirect("../VendorSide/VendorService.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Email Or Password')</script>");
        }
    }
}