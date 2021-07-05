using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminSide_EditEventType : System.Web.UI.Page
{
    AEventType a = new AEventType();
    EventTypeHelper EH = new EventTypeHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["EventTypeid"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = EH.GetSingle(Request.QueryString["EventTypeid"]);
            TxtEventTypeName.Text = dr["EventTypeName"].ToString();
            Image1.ImageUrl = "~/Images/"+dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString(); 
        }
    }
   
    protected void BtnEdit_Click1(object sender, EventArgs e)
    {
        a.EventTypeName = TxtEventTypeName.Text;
        a.EventTypeid = Convert.ToInt16(Request.QueryString["EventTypeid"]);
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();

        EH.Update(a);
        Response.Redirect("EventType.aspx");
    }
}   