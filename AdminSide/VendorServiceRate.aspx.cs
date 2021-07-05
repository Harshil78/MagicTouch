using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_VendorServiceRate : System.Web.UI.Page
{
    AVendorServiceRate a = new AVendorServiceRate();
    VendorServiceRateHelper VH = new VendorServiceRateHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorServiceRateid = Convert.ToInt32(Request.QueryString["VendorServiceRateid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorServiceRate");
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