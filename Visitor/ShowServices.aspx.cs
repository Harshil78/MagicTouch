using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_ShowServices : System.Web.UI.Page
{
    AService a = new AService();
    ServiceHelper SH = new ServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = SH.GetData("select * from tblService");
        Repeater1.DataBind();
    }
}