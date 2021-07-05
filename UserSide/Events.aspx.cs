using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_Events : System.Web.UI.Page
{
    AEvent a = new AEvent();
    EventHelper EH = new EventHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Userid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Eventid = Convert.ToInt32(Request.QueryString["Eventid"]);
            EH.Delete(a);
        }
        if (Request.QueryString["EventTypeid"] != null)
        {
            Session["EventTypeid"] = Request.QueryString["EventTypeid"];
            Session["EventTypeName"] = Request.QueryString["EventTypeName"].ToString();
            Session.Timeout = 18000;
        }
        Repeater1.DataSource = EH.GetData("select * from ViewEvent where Userid="+Session["Userid"]+" and  EventTypeid="+Session["EventTypeid"]);
        Repeater1.DataBind();
        LblEvent.Text = Session["EventTypeName"].ToString();
        if (Session["EventTypeid"] == null || Session["Userid"]==null)
        {
            Response.Redirect("UserLogIn");
        }
    }
    
}