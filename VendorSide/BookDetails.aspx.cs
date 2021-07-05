using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorSide_BookDetails : System.Web.UI.Page
{
    ABook a = new ABook();
    BookHelper BH = new BookHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Vendorid"] == null)
            Response.Redirect("VendorLogIn.aspx");
        Repeater1.DataSource = BH.GetData("select * from ViewBook where Vendorid= " + Session["Vendorid"]);
        Repeater1.DataBind();
    }

    protected void BtnRep_Click(object sender, EventArgs e)
    {

        Repeater1.DataSource = BH.GetData("select * from ViewBook where Vendorid= " + Session["Vendorid"] + " and BookDate between '" + getdate(TxtStart.Text) + "' and '" + getdate(TxtEnd.Text) + "'");
            Repeater1.DataBind();
       
    }
    public string getdate(string d)
    {
        string datestr = "";
        datestr = d.Substring(8, 2)+"-";
        datestr += d.Substring(5, 2) + "-";
        datestr += d.Substring(0, 4) + "";

        return datestr;
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        if (TxtVService.Text != null)
        {
            Repeater1.DataSource = BH.GetData("select * from ViewBook where Vendorid= " + Session["Vendorid"] + " and VendorServiceName like '" + TxtVService.Text + "%'");
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.DataSource = BH.GetData("select * from ViewBook where Vendorid= " + Session["Vendorid"]);
            Repeater1.DataBind();
        }
    }
}