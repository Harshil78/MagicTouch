using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_VendorService : System.Web.UI.Page
{
    AVendorService a = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorServiceid = Convert.ToInt32(Request.QueryString["VendorServiceid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorService");
        Repeater1.DataBind();
    }
}