using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_UserReview : System.Web.UI.Page
{
    AUserReview a = new AUserReview();
    UserReviewHelper UH = new UserReviewHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.UserReviewid = Convert.ToInt32(Request.QueryString["UserReviewid"]);
            UH.Delete(a);
        }
        Repeater1.DataSource = UH.GetData("select * from ViewUserReview");
        Repeater1.DataBind();
    }
}