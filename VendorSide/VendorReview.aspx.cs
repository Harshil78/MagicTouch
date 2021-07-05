using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorReview : System.Web.UI.Page
{
    AVendorReview a = new AVendorReview();
    VendorReviewHelper VH = new VendorReviewHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorReviewid = Convert.ToInt32(Request.QueryString["VendorReviewid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorReview");
        Repeater1.DataBind();
    }
}