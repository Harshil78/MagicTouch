using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Event : System.Web.UI.Page
{
    AEvent a = new AEvent();
    EventHelper EH = new EventHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Eventid = Convert.ToInt32(Request.QueryString["Eventid"]);
            EH.Delete(a);
        }
        Repeater1.DataSource = EH.GetData("select * from ViewEvent");
        Repeater1.DataBind();
    }
}