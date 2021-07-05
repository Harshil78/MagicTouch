using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminSide_MEditState : System.Web.UI.Page
{
    AState a = new AState();
    StateHelper SH = new StateHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataRow dr = SH.GetSingle(Request.QueryString["Stateid"]);
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = SH.GetData("select * from tblCountry");
            DDCountry.DataBind();
            DDCountry.SelectedValue = dr["Countryid"].ToString();
            TxtStateName.Text = dr["StateName"].ToString();

        }
    }
    protected void BtnEdit_click(object sender, EventArgs e)
    {
        a.StateName = TxtStateName.Text;
        a.Countryid = Convert.ToInt32(DDCountry.SelectedValue.ToString());
        a.Stateid = Convert.ToInt16(Request.QueryString["Stateid"]);
        SH.Update(a);
        Response.Redirect("State.aspx");
    }
}