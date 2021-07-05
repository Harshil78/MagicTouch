using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Service : System.Web.UI.Page
{
    AService a = new AService();
    ServiceHelper SH = new ServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Serviceid = Convert.ToInt32(Request.QueryString["Serviceid"]);
            SH.Delete(a);
        }
        Repeater1.DataSource = SH.GetData("select * from tblService");
        Repeater1.DataBind();

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.ServiceName = TxtServiceName.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        SH.Insert(a);
        Response.Redirect("~/AdminSide/Service.aspx");
    }
}