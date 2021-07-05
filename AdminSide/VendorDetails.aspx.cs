using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_VendorDetails : System.Web.UI.Page
{
    AVendor a = new AVendor();
    VendorHelper VH = new VendorHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Vendorid = Convert.ToInt32(Request.QueryString["Vendorid"]);
            VH.Delete(a);
        }

        Repeater1.DataSource = VH.GetData("select * from ViewVendor");
        Repeater1.DataBind();
    }
}