using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_Rmessage : System.Web.UI.Page
{
    AUser AU=new AUser();
    UserHelper UH=new UserHelper();
    AMessage AM = new AMessage();
    MessageHelper MH = new MessageHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["Vendorid"] == null && Request.QueryString["Userid"]==null)
        {
            Response.Redirect("VendorLogIn.aspx");
        }
         if (Request.QueryString["Userid"] != null)
         {
             Session["Userid"] = Request.QueryString["Userid"];
            
         }
         if (!this.IsPostBack)
         {
             DDUser.DataValueField = "Userid";
             DDUser.DataTextField = "UserName";
             DDUser.DataSource = UH.GetData("select * from tblUser where Userid=" + Session["Userid"]);
             DDUser.DataBind();
         }
        RepMess.DataSource=MH.GetData("select * from ViewMessage where userid="+Session["Userid"]+ " order by Date Desc");
        RepMess.DataBind();
    }

    protected void BtnSend_Click(object sender, EventArgs e)
    {

        AM.Userid = Convert.ToInt16(DDUser.SelectedValue);
        AM.Vendorid = Convert.ToInt16(Session["Vendorid"]); 
        AM.Message = TxtMess.Text;
        AM.Date = DateTime.Now.Date.ToString("dd-MM-yyyy");
        AM.Type = "VU";
        MH.Insert(AM);
        Response.Redirect("RMessage.aspx");
    }
}