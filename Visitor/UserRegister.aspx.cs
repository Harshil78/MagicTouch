using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Visitor_UserRegister : System.Web.UI.Page
{
    AUser a=new AUser();
    UserHelper UH=new UserHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack==false)
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
        DDCountry.DataSource = UH.GetData("select * from tblCountry ");
        DDCountry.DataBind();
     DDCountry.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
    public void FillState()
    {

        DDState.DataValueField = "Stateid";
        DDState.DataTextField = "StateName";
        DDState.DataSource = UH.GetData("select * from tblState where Countryid="+ DDCountry.SelectedValue);
        DDState.DataBind();
       DDState.Items.Insert(0, new ListItem("-----Select-----", "0"));
    }
 public void FillCity()
 {
      
        DDCity.DataValueField = "Cityid";
            DDCity.DataTextField = "CityName";
            DDCity.DataSource = UH.GetData("select * from tblCity where Stateid="+DDState.SelectedValue.ToString());
            DDCity.DataBind();
      DDCity.Items.Insert(0,new ListItem("-----Select-----", "0"));
 }
 protected void DDState_SelectedIndexChanged(object sender, EventArgs e)
 {
     FillCity();
 }
 
 protected void DDCountry_SelectedIndexChanged(object sender, EventArgs e)
 {
     FillState();
 }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
       
        a.UserName = TxtUserName.Text; 
        a.Address = TxtAddress.Text; 
        a.Contact =TxtContact.Text;
        a.Email = TxtEmail.Text;
        a.Password = TxtPassword.Text;
        a.SecurityQue = DDQue.SelectedItem.ToString();
        a.SecurityAns = TxtAns.Text;
        a.Gender=DDGender.SelectedItem.ToString();
        a.Countryid = Convert.ToInt16(DDCountry.SelectedValue.ToString());
        a.Stateid = Convert.ToInt16(DDState.SelectedValue.ToString());
        a.Cityid = Convert.ToInt16(DDCity.SelectedValue.ToString());
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        UH.Insert(a);
        Response.Redirect("../Visitor/UserLogIn.aspx");
    }

  
}