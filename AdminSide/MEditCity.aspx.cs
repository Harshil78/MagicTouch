using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminSide_MEditCity : System.Web.UI.Page
{
    ACity a = new ACity();
    CityHelper CH = new CityHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataRow dr = CH.GetSingle(Request.QueryString["Cityid"]);
            DDState.DataValueField = "Stateid";
            DDState.DataTextField = "StateName";
            DDState.DataSource = CH.GetData("select * from tblState");
            DDState.DataBind();
            DDState.SelectedValue = dr["Stateid"].ToString();
            TxtCityName.Text = dr["CityName"].ToString();

        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.CityName = TxtCityName.Text;
        a.Stateid = Convert.ToInt32(DDState.SelectedValue.ToString());
        a.Cityid = Convert.ToInt16(Request.QueryString["Cityid"]);
        CH.Update(a);
        Response.Redirect("City.aspx");
    }
}