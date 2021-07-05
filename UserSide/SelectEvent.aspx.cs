using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_SelectEvent : System.Web.UI.Page
{
    AEvent a = new AEvent();
    EventHelper EH = new EventHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }

        if (this.IsPostBack == false)
        {
            FillCountry();
            FillState();
            FillCity();
        }
    }
   
    public void FillCountry()
    {

        DDCountry.DataValueField = "Countryid";
        DDCountry.DataTextField = "CountryName";
        DDCountry.DataSource = EH.GetData("select * from tblCountry ");
        DDCountry.DataBind();
        DDCountry.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    public void FillState()
    {

        DDState.DataValueField = "Stateid";
        DDState.DataTextField = "StateName";
        DDState.DataSource = EH.GetData("select * from tblState where Countryid=" + DDCountry.SelectedValue);
        DDState.DataBind();
        DDState.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    public void FillCity()
    {

        DDCity.DataValueField = "Cityid";
        DDCity.DataTextField = "CityName";
        DDCity.DataSource = EH.GetData("select * from tblCity where Stateid=" + DDState.SelectedValue.ToString());
        DDCity.DataBind();
        DDCity.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    protected void DDState_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillCity();
    }
    protected void DDCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillState();
    }
   
    protected void Submit_Click(object sender, EventArgs e)
    {
      
            a.EventName = TxtEventName.Text;
            a.EventTypeid = Convert.ToInt16(Request.QueryString["EventTypeid"].ToString());
            a.Userid = Convert.ToInt16(Session["Userid"]);
            a.EventDate =Convert.ToString (TxtDate.Text);
            a.Cityid = Convert.ToInt16(DDCity.SelectedValue.ToString());
            a.Venue = TxtVenue.Text;
            a.Location = TxtLocation.Text;
            EH.Insert(a);
            Response.Redirect("Events.aspx");
        
    }
    
}