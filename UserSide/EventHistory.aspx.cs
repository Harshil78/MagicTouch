using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_EventHistory : System.Web.UI.Page
{
    ABook a = new ABook();
    BookHelper BH = new BookHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }
        Repeater1.DataSource = BH.GetData("select * from ViewBook where Userid="+Session["Userid"]);
        Repeater1.DataBind();
    }
}