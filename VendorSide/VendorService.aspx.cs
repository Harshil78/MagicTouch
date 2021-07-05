using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_VendorService : System.Web.UI.Page
{
    AVendorService a = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.VendorServiceid = Convert.ToInt32(Request.QueryString["VendorServiceid"]);
            VH.Delete(a);
        }
        Repeater1.DataSource = VH.GetData("select * from ViewVendorService where Vendorid="+Session["Vendorid"]);
        Repeater1.DataBind();
        if (!this.IsPostBack)
        {
            DDServiceid.DataValueField = "Serviceid";
            DDServiceid.DataTextField = "ServiceName";
            DDServiceid.DataSource = VH.GetData("select * from tblService");
            DDServiceid.DataBind();
            DDServiceid.Items.Insert(0, new ListItem("-----Select-----", "0"));
       
            //DDVendorid.DataValueField = "Vendorid";
            //DDVendorid.DataTextField = "VendorName";
            //DDVendorid.DataSource = VH.GetData("select * from tblVendor");
            //DDVendorid.DataBind();
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.Vendorid = Convert.ToInt32(Session["Vendorid"].ToString());
        a.VendorServiceName = TxtVendorServiceName.Text; 
        a.Serviceid = Convert.ToInt32(DDServiceid.SelectedValue.ToString());
        a.Amount =Convert.ToInt32( TxtAmount.Text);
        a.Description = TxtDesc.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        VH.Insert(a);
        Response.Redirect("VendorService.aspx");
    }
}