using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_Map : System.Web.UI.Page
{
    AEvent a = new AEvent();
    EventHelper EH=new EventHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
       Response.Write(Request.QueryString["Location"].ToString());
       LblLocation.Text = Request.QueryString["Location"].ToString();
    }
}