using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_Country : System.Web.UI.Page
{
    ACountry a = new ACountry();
    CountryHelper CH = new CountryHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
         Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Countryid = Convert.ToInt32(Request.QueryString["Countryid"]);
            CH.Delete(a);
        }
        Repeater1.DataSource = CH.GetData("select * from tblCountry");
        Repeater1.DataBind();
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
       a.CountryName = TxtCountryName.Text;
        CH.Insert(a);
        Response.Redirect("~/AdminSide/Country.aspx");
    }
}