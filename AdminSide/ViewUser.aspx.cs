using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_ViewUser : System.Web.UI.Page
{
    AUser a = new AUser();
    UserHelper UH = new UserHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Userid = Convert.ToInt32(Request.QueryString["Userid"]);
            UH.Delete(a);
        }
       
        Repeater1.DataSource = UH.GetData("select * from ViewUser");
        Repeater1.DataBind();
    }
}