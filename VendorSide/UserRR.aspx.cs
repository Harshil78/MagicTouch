using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class VendorSide_UserRR : System.Web.UI.Page
{
    AUserRate UR = new AUserRate();
    UserRateHelper RH = new UserRateHelper();
    AUserReview AUR = new AUserReview();
    UserReviewHelper UH = new UserReviewHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Request.QueryString["Userid"]==null)
        {
            Response.Redirect("VendorLogIn.aspx");
        }
        DataTable dt = RH.GetData(" select * from ViewUserRateAvg where Userid= " + Request.QueryString["Userid"].ToString());
        string star = "";
        if (dt.Rows.Count > 0)
        {
            for (int i = 1; i <= Convert.ToInt16(dt.Rows[0]["Rate"]); i++)
                star += "⭐️";
        }
        lblavg.Text = star;
        Repeater1.DataSource = RH.GetData("select * from ViewUser where Userid=" + Request.QueryString["Userid"]);
        Repeater1.DataBind();
        RepReview.DataSource = UH.GetData("select * from ViewUserReview where Userid=" + Request.QueryString["Userid"] + " order by ReviewDate Desc");
        RepReview.DataBind();
    }
    protected void btnRate_Click(object sender, EventArgs e)
    {
       
        UR.Userid = Convert.ToInt32(Request.QueryString["Userid"]);
        UR.Vendorid = Convert.ToInt32(Request.QueryString["Vendorid"]);
        UR.Rate = Convert.ToInt16(ddRate.SelectedValue.ToString());
        RH.Insert(UR);
        AUR.Vendorid = Convert.ToInt32(Request.QueryString["Vendorid"]);
        AUR.Userid = Convert.ToInt32(Request.QueryString["Userid"]);
        AUR.Review = DDReview.SelectedItem.ToString();
        AUR.ReviewDate = DateTime.Now.Date.ToString("dd-MM-yyyy");
        UH.Insert(AUR);
        Response.Redirect("VendorRate.aspx");
    }
}