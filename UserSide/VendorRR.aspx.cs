
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class UserSide_VendorRR : System.Web.UI.Page
{

    AVendorService VS = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();


    AVendorRate VRate= new AVendorRate();
    VendorRateHelper VR = new VendorRateHelper();


    AVendorReview VReview = new AVendorReview();
    VendorReviewHelper VRH = new VendorReviewHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Userid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }

        if (Request.QueryString["Vendorid"] != null)
        {
            Session["Vendorid"] = Request.QueryString["Vendorid"];
            Session.Timeout = 18000;
        }

        DataTable dt = VH.GetData(" select * from ViewVendorRateAvg where Vendorid= " + Session["Vendorid"].ToString());
        string star = "";
        if (dt.Rows.Count > 0)
        {
            for (int i = 1; i <= Convert.ToInt16(dt.Rows[0]["Rate"]); i++)
                star += "⭐️";
        }
        lblavg.Text = star;
        Repeater1.DataSource = VH.GetData("select * from ViewVendor where  Vendorid=" + Session["Vendorid"]);
        Repeater1.DataBind();
        RepReview.DataSource = VH.GetData("select * from ViewVendorReview where  Vendorid=" + Session["Vendorid"] + " order by ReviewDate Desc");
        RepReview.DataBind();
    }
    protected void btnRate_Click(object sender, EventArgs e)
    {
        VRate.Vendorid = Convert.ToInt32(Request.QueryString["Vendorid"]);
        VRate.Userid = Convert.ToInt32(Session["Userid"]);
        VRate.Rate = Convert.ToInt16(ddRate.SelectedValue.ToString());
        VR.Insert(VRate);
        VReview.Vendorid = Convert.ToInt32(Request.QueryString["Vendorid"]);
        VReview.Userid = Convert.ToInt32(Session["Userid"]);
        VReview.Review = DDReview.SelectedItem.ToString();
        VReview.ReviewDate = DateTime.Now.Date.ToString("dd-MM-yyyy");
        VRH.Insert(VReview);
        Response.Redirect("VendorRR.aspx");
    }
}