using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorRegister : System.Web.UI.Page
{
    AVendor a = new AVendor();
    VendorHelper VH = new VendorHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DDCity.DataValueField = "Cityid";
            DDCity.DataTextField = "CityName";
            DDCity.DataSource = VH.GetData("select * from tblCity");
            DDCity.DataBind();
            DDCity.Items.Insert(0, new ListItem("-----Select-----", "0"));
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.VendorName = TxtVendorName.Text;
        a.Address = TxtAddress.Text;
        a.Contact = TxtContact.Text;
        a.Email = TxtEmail.Text;
        a.Password = TxtPassword.Text;
        a.SecurityQue = DDQue.SelectedItem.ToString();
        a.SecurityAns = TxtAns.Text;
        a.OrgName= TxtOrgName.Text;
        a.Cityid = Convert.ToInt16(DDCity.SelectedValue.ToString());
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        VH.Insert(a);
        Response.Redirect("VendorLogIn.aspx");
    }
}