using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminSide_MEditService : System.Web.UI.Page
{
    AService a = new AService();
    ServiceHelper SH = new ServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataRow dr = SH.GetSingle(Request.QueryString["Serviceid"]);
            TxtServiceName.Text = dr["ServiceName"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.ServiceName = TxtServiceName.Text;   
        a.Serviceid = Convert.ToInt16(Request.QueryString["Serviceid"]);
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();
        SH.Update(a);
        Response.Redirect("Service.aspx");
    }
}