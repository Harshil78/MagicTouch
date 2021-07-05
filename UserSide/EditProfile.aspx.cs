using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class UserSide_EditProfile : System.Web.UI.Page
{
    AUser a = new AUser();
    UserHelper UH = new UserHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("UserLogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = UH.GetSingle(Session["Userid"].ToString());
            TxtUserName.Text = dr["UserName"].ToString();
            TxtAddress.Text = dr["Address"].ToString();
            TxtContact.Text = dr["Contact"].ToString();
            DDCountry.SelectedValue = dr["Countryid"].ToString();
            DDState.SelectedValue = dr["Stateid"].ToString();
            DDCity.SelectedValue = dr["Cityid"].ToString();
            DDCountry.DataValueField = "Countryid";
            DDCountry.DataTextField = "CountryName";
            DDCountry.DataSource = UH.GetData("select * from tblCountry");
             DDCountry.DataBind();
    
                 DDState.DataValueField = "Stateid";
                 DDState.DataTextField = "StateName";
                 DDState.DataSource = UH.GetData("select * from tblState where Countryid=" + DDCountry.SelectedValue);
                 DDState.DataBind();

                 DDCity.DataValueField = "Cityid";
                 DDCity.DataTextField = "CityName";
                 DDCity.DataSource = UH.GetData("select * from tblCity where Stateid=" + DDState.SelectedValue);
                 DDCity.DataBind();
             
           
           
            DDGender.SelectedItem.Text = dr["Gender"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        a.Userid =Convert.ToInt16( Session["Userid"]);
        a.UserName = TxtUserName.Text;
        a.Address = TxtAddress.Text;
        a.Contact = TxtContact.Text;
        a.Gender = DDGender.SelectedItem.ToString();
        a.Countryid = Convert.ToInt16(DDCountry.SelectedValue.ToString());
        a.Stateid = Convert.ToInt16(DDState.SelectedValue.ToString());
        a.Cityid = Convert.ToInt16(DDCity.SelectedValue.ToString());
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();
        UH.Update(a);
        Response.Redirect("../Visitor/UserLogIn.aspx");
    }
}