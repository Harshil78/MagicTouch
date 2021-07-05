using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_VendorServiceReview : System.Web.UI.Page
{
    AVendorServiceReview a = new AVendorServiceReview();
    VendorServiceReviewRate VH = new VendorServiceReviewRate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorServiceReviewid = Convert.ToInt32(Request.QueryString["VendorServiceReviewid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorServiceReview");
        Repeater1.DataBind();
    }
}