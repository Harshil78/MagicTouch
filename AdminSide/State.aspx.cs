using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminSide_State : System.Web.UI.Page
{
    AState a = new AState();
    StateHelper SH = new StateHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Stateid = Convert.ToInt32(Request.QueryString["Stateid"]);
            SH.Delete(a);
        }
        Repeater1.DataSource = SH.GetData("select * from ViewState");
        Repeater1.DataBind();
        if (!this.IsPostBack)
        {
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = SH.GetData("select * from tblCountry");
            DDCountry.DataBind();
            DDCountry.Items.Insert(0, new ListItem("-----Select-----", "0"));
        }
    }
  
    protected void BtnAdd_click(object sender, EventArgs e)
    {
        a.Countryid = Convert.ToInt32(DDCountry.SelectedValue.ToString());
        a.StateName = TxtStateName.Text;
        SH.Insert(a);
        Response.Redirect("State.aspx");
    }
}