using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_Contact : System.Web.UI.Page
{
    AContactUs a = new AContactUs();
    ContactHelper CH = new ContactHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSub_Click(object sender, EventArgs e)
    {
        a.Name = TxtName.Text;
         
        a.ContactNo = TxtContact.Text;
        a.Email = TxtEmail.Text;
        a.Description= TxtDesc.Text;
        CH.Insert(a);
        Response.Redirect("Contact.aspx");
    }
}