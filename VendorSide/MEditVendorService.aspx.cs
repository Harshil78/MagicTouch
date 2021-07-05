using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class VendorSide_MEditVendorService : System.Web.UI.Page
{
    AVendorService a = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (!this.IsPostBack)
        {
            DataRow dr = VH.GetSingle(Request.QueryString["VendorServiceid"]);
            DDServiceid.DataValueField = "Serviceid";
            DDServiceid.DataTextField = "ServiceName";
            DDServiceid.DataSource = VH.GetData("select * from tblService");
            DDServiceid.DataBind();
            //DDVendorid.DataValueField = "Vendorid";
            //DDVendorid.DataTextField = "VendorName";
            //DDVendorid.DataSource = VH.GetData("select * from tblVendor");
            //DDVendorid.DataBind();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["imaage"] = dr["Image"].ToString();
            TxtAmount.Text = dr["Amount"].ToString();
            TxtVendorServiceName.Text = dr["VendorServiceName"].ToString();
            TxtDesc.Text = dr["Description"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.VendorServiceid= Convert.ToInt16(Request.QueryString["VendorServiceid"]);
        a.Vendorid = Convert.ToInt32(Session["Vendorid"]);
        a.VendorServiceName = TxtVendorServiceName.Text;
        a.Serviceid = Convert.ToInt32(DDServiceid.SelectedValue.ToString());
        a.Amount = Convert.ToInt32(TxtAmount.Text);
        a.Description = TxtDesc.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["imaage"].ToString();
        VH.Update(a);
        Response.Redirect("VendorService.aspx");
    }
}