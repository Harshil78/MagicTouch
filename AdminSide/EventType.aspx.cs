using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminSide_EventType : System.Web.UI.Page
{
    AEventType a = new AEventType();
    EventTypeHelper EH = new EventTypeHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdminName"] == null)
            Response.Redirect("LogIn.aspx");
        if (Request.QueryString["action"] != null && Request.QueryString["action"] == "del")
        {
            a.EventTypeid = Convert.ToInt32(Request.QueryString["EventTypeid"]);
            EH.Delete(a);
        }
        Repeater1.DataSource = EH.GetData("select * from tblEventType");
        Repeater1.DataBind();
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        a.EventTypeName = TxtEventTypeName.Text;
        a.Image = "";
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs (Server.MapPath("../images/"+ImageUpload.FileName ));
            a.Image = ImageUpload.FileName ;
        }
        EH.Insert(a);
        Response.Redirect("EventType.aspx");
    }
}