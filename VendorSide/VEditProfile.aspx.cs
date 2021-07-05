using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class VendorSide_VEditProfile : System.Web.UI.Page
{
    AVendor a = new AVendor();
    VendorHelper VH = new VendorHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
        if (!this.IsPostBack)
        {
            DataRow dr = VH.GetSingle(Session["Vendorid"].ToString());
            TxtUserName.Text = dr["VendorName"].ToString();
            TxtAddress.Text = dr["Address"].ToString();
            TxtContact.Text = dr["Contact"].ToString();
            DDCity.DataValueField = "Cityid";
            DDCity.DataTextField = "CityName";
            DDCity.DataSource = VH.GetData("select * from tblCity");
            DDCity.DataBind();
            DDCity.SelectedValue = dr["Cityid"].ToString();
            TxtOrgName.Text = dr["OrgName"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        a.Vendorid = Convert.ToInt16(Session["Vendorid"]);
          a.VendorName = TxtUserName.Text;
        a.Address = TxtAddress.Text;
        a.Contact = TxtContact.Text;
        a.OrgName=TxtOrgName.Text;
        a.Cityid = Convert.ToInt16(DDCity.SelectedValue.ToString());
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();
        VH.Update(a);
        Response.Redirect("VendorLogIn.aspx");
    
    }
}