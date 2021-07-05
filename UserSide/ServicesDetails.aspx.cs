using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_ServicesDetails : System.Web.UI.Page
{
    AService a = new AService();
    ServiceHelper SH = new ServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Eventid"] = Request.QueryString["Eventid"];
        Session.Timeout = 18000;
        Repeater1.DataSource = SH.GetData("select * from tblService");
        Repeater1.DataBind();
   
    }
}