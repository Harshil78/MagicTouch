using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_Message : System.Web.UI.Page
{
    AVendor AV = new AVendor();
    VendorHelper VH = new VendorHelper();

    AMessage AM = new AMessage();
    MessageHelper MH = new MessageHelper();
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
        if (!this.IsPostBack)
        {
            DDVendor.DataValueField = "Vendorid";
            DDVendor.DataTextField = "VendorName";
            DDVendor.DataSource = VH.GetData("select * from tblVendor where Vendorid=" + Session["Vendorid"]);
            DDVendor.DataBind();

            RepMess.DataSource = MH.GetData("select * from ViewMessage  where vendorid=" + Session["Vendorid"]+" and Userid=" + Session["Userid"] +" order by Date desc");
            RepMess.DataBind();
           
        }
        
    }
    protected void BtnSub_Click(object sender, EventArgs e)
    {
        
            AM.Userid = Convert.ToInt16(Session["Userid"]);
            AM.Vendorid = Convert.ToInt16(Session["Vendorid"]);
            AM.Message = TxtMess.Text;
            AM.Date = DateTime.Now.Date.ToString("dd-MM-yyyy");
            AM.Type = "UV";
            MH.Insert(AM);
            Response.Redirect("Message.aspx");
       
    }
}