using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_UserLogIn : System.Web.UI.Page
{
    Helper h = new Helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["UEmail"] != null)

                TxtUserName.Text = Request.Cookies["UEmail"].Value;

            if (Request.Cookies["UPass"] != null)

                TxtPassword.Attributes.Add("value", Request.Cookies["UPass"].Value);
            if (Request.Cookies["UEmail"] != null && Request.Cookies["UPass"] != null)
                RememberMe.Checked = true;
        }
    }
   
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (h.UserLogin(TxtUserName.Text, TxtPassword.Text))
        {
            if (RememberMe.Checked == true)
            {
                Response.Cookies["UEmail"].Value = TxtUserName.Text;
                Response.Cookies["UPass"].Value = TxtPassword.Text;
                Response.Cookies["UEmail"].Expires = DateTime.Now.AddDays(365);
                Response.Cookies["UPass"].Expires = DateTime.Now.AddDays(365);
            }

            else
            {

                Response.Cookies["UEmail"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["UPass"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Redirect("../UserSide/Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Email Or Password')</script>");
        }
    }
}