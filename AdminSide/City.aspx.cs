using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminSide_City : System.Web.UI.Page
{
    ACity a = new ACity();
    CityHelper CH = new CityHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.Cityid = Convert.ToInt32(Request.QueryString["Cityid"]);
            CH.Delete(a);
        }
        Repeater1.DataSource = CH.GetData("select * from ViewCity");
        Repeater1.DataBind();
        if (!this.IsPostBack)
        {
            DDState.DataValueField = "Stateid";
            DDState.DataTextField = "StateName";
            DDState.DataSource = CH.GetData("select * from tblState");
            DDState.DataBind();
              DDState.Items.Insert(0, new ListItem("-----Select-----", "0"));
       }
   }
    protected void BtnAdd_click(object sender, EventArgs e)
    {
        a.Stateid = Convert.ToInt32(DDState.SelectedValue.ToString());
        a.CityName = TxtCityName.Text;
        CH.Insert(a);
        Response.Redirect("City.aspx");
    }
}