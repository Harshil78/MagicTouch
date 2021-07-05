using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_Msgaspx : System.Web.UI.Page
{
    AMessage AM = new AMessage();
    MessageHelper MH = new MessageHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
        {
            Response.Redirect("VendorLogIn.aspx");
        }
        RepMess.DataSource = MH.GetData("select * from ViewMessage  where vendorid=" + Session["Vendorid"] + " order by Date desc");
        RepMess.DataBind();
    }
}