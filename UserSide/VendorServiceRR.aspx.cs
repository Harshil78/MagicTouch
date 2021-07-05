using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserSide_VendorServiceRR : System.Web.UI.Page
{
    AVendorService a = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();

    AVendorServiceRate VS = new AVendorServiceRate();
    VendorServiceRateHelper VSR = new VendorServiceRateHelper();


    AVendorServiceReview VR = new AVendorServiceReview();
    VendorServiceReviewRate VRR = new VendorServiceReviewRate();


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Userid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }
        if (Request.QueryString["VendorServiceid"] != null)
        {
            Session["VendorServiceid"] = Request.QueryString["VendorServiceid"];
            Session.Timeout = 18000;
        }
        DataTable dt = VH.GetData(" select * from ViewVendorServiceRateAvg where VendorServiceid= " + Session["VendorServiceid"]);
            string star = "";
            if (dt.Rows.Count > 0)
            {
                for (int i = 1; i <= Convert.ToInt16(dt.Rows[0]["Rate"]); i++)
                    star += "⭐️";
            }
            lblavg.Text = star;

            Repeater1.DataSource = VH.GetData("select * from tblVendorService where VendorServiceid=" + Session["VendorServiceid"]);
        Repeater1.DataBind();
        RepReview.DataSource = VRR.GetData("select * from ViewVendorServiceReview where VendorServiceid=" + Session["VendorServiceid"] + " order by ReviewDate Desc ");
        RepReview.DataBind();
    }
    protected void btnRate_Click(object sender, EventArgs e)
    {
        VS.VendorServiceid = Convert.ToInt32(Request.QueryString["VendorServiceid"]);
        VS.Userid = Convert.ToInt32(Session["Userid"]);
        VS.Rate =Convert.ToInt16( ddRate.SelectedValue.ToString());
        VSR.Insert(VS);
        VR.VendorServiceid = Convert.ToInt32(Request.QueryString["VendorServiceid"]);
        VR.Userid = Convert.ToInt32(Session["Userid"]);
        VR.Review = DDReview.SelectedItem.ToString();
        VR.ReviewDate = DateTime.Now.Date.ToString("dd-MM-yyyy");
        VRR.Insert(VR);
        Response.Redirect("VendorServiceRR.aspx");
    }
}