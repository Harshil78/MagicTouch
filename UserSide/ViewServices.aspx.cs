using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserSide_ViewServices : System.Web.UI.Page
{
    AVendorService a = new AVendorService();
    VendorServiceHelper VH = new VendorServiceHelper();
    AEvent AE = new AEvent();
    EventHelper EH = new EventHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Eventid"] == null)
        {
            Response.Redirect("../Visitor/UserLogIn.aspx");
        }
       // DataTable dt = VH.GetData(" select * from ViewVendorServiceRateAvg where VendorServiceid= " + Request.QueryString["VendorServiceid"].ToString());
       // string star = "";
        
       // for (int i = 1; i <= Convert.ToInt16(dt.Rows[0]["Rate"]); i++)
       //     star += "⭐️";
       
        if (this.IsPostBack == false)
        {
            Session["Serviceid"] = Request.QueryString["Serviceid"];
            Session.Timeout=18000;
            if (Session["Serviceid"] == null)
            {
                Response.Redirect("../Visitor/UserLogIn.aspx");
            }
            DataRow dr = EH.GetSingle(Session["Eventid"].ToString());
            FillCountry();
            DDCountry.SelectedValue = dr["Countryid"].ToString();
            FillState();
            DDState.SelectedValue = dr["Stateid"].ToString();
            FillCity();
           
            DDCity.SelectedValue = dr["Cityid"].ToString(); 
           
        
           
        
          
          
           

            
            Repeater1.DataSource = VH.GetData("select * from ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Countryid=" + DDCountry.SelectedValue.ToString() + " and Stateid=" + DDState.SelectedValue.ToString() + " and Cityid=" + DDCity.SelectedValue.ToString());
            Repeater1.DataBind();
           
            sort();

        }
       
    }

    protected string getstar(string str)
    {
        string star = "";
        if (str != "")
        {
            for (int i = 1; i <= Convert.ToInt16(str); i++)
            {
                star += "⭐";
            }
        }
        return star;
    }
    public void FillCountry()
    {

        DDCountry.DataValueField = "Countryid";
        DDCountry.DataTextField = "CountryName";
        DDCountry.DataSource = VH.GetData("select * from tblCountry ");
        DDCountry.DataBind();
        DDCountry.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    public void FillState()
    {

        DDState.DataValueField = "Stateid";
        DDState.DataTextField = "StateName";
        DDState.DataSource = VH.GetData("select * from tblState where Countryid=" + DDCountry.SelectedValue);
        DDState.DataBind();
        DDState.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
   
    public void FillCity()
    {

        DDCity.DataValueField = "Cityid";
        DDCity.DataTextField = "CityName";
        DDCity.DataSource = VH.GetData("select * from tblCity where Stateid=" + DDState.SelectedValue);
        DDCity.DataBind();
        DDCity.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    public void sort()
    {
        if (DDSort.SelectedValue == "1")
        {
            Repeater1.DataSource = VH.GetData("select * from  ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue + " order by Amount Asc");
            Repeater1.DataBind();
        }
        else if (DDSort.SelectedValue == "2")
        {
            Repeater1.DataSource = VH.GetData("select * from  ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue + " order by Amount Desc");
            Repeater1.DataBind();
        }

        else if (DDSort.SelectedValue == "3")
        {
            Repeater1.DataSource = VH.GetData("select * from  ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue + " order by Rate Asc");
            Repeater1.DataBind();
        }
        else if (DDSort.SelectedValue == "4")
        {
            Repeater1.DataSource = VH.GetData("select * from  ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue + " order by Rate Desc");
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.DataSource = VH.GetData("select * from ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue.ToString());
            Repeater1.DataBind();
        }
       
    }
    protected void DDSort_SelectedIndexChanged(object sender, EventArgs e)
    {
        sort();
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        if (TxtSearch.Text != null)
        {

            Repeater1.DataSource = VH.GetData("select * from ViewVendorService where Serviceid=" + Session["Serviceid"] + " and CityName like '" + TxtSearch.Text + "%'");
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.DataSource = VH.GetData("select * from ViewVendorService  where Serviceid=" + Session["Serviceid"] + " and Cityid=" + DDCity.SelectedValue.ToString());
            Repeater1.DataBind();
        }
       
    }
    public void sea()
    {
        Repeater1.DataSource = VH.GetData("select * from ViewVendorService where Serviceid=" + Session["Serviceid"] + "and Cityid=" + DDCity.SelectedValue);
        Repeater1.DataBind(); 
    }
    
    protected void DDCity_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        Repeater1.DataSource = VH.GetData("select * from ViewVendorService where Serviceid=" + Session["Serviceid"] + "and Cityid=" + DDCity.SelectedValue);
        Repeater1.DataBind(); 
    }
    protected void DDCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillState();
    }
    protected void DDState_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillCity(); 
    }
}