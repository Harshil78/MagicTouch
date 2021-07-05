using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_ShowEvents : System.Web.UI.Page
{
    AEventType a = new AEventType();
    EventTypeHelper EH = new EventTypeHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = EH.GetData("select * from tblEventType");
        Repeater1.DataBind();
    }
}