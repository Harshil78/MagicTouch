using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_UserRate : System.Web.UI.Page
{
    AUserRate a = new AUserRate();
    UserRateHelper UH = new UserRateHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.UserRateid = Convert.ToInt32(Request.QueryString["UserRateid"]);
            UH.Delete(a);
        }
        Repeater1.DataSource = UH.GetData("select * from ViewUserRate");
        Repeater1.DataBind();
    }
    protected string getstar(string str)
    {
        string star = "";
        for (int i = 1; i <= Convert.ToInt16(str); i++)
        {
            star += "⭐";
        }
        return star;
    }
}