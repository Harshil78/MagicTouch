using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorRate : System.Web.UI.Page
{
    AVendorRate a = new AVendorRate();
    VendorRateHelper VH = new VendorRateHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorRateid = Convert.ToInt32(Request.QueryString["VendorRateid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorRate where Vendorid="+ Session["Vendorid"]);
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