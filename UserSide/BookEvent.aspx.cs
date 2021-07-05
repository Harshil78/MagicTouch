using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization; 
public partial class UserSide_BookEvent : System.Web.UI.Page
{
    ABook a = new ABook();
    BookHelper BH = new BookHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
       Repeater1.DataSource= BH.GetData("select * from ViewVendorService where VendorServiceid="+Request.QueryString["VendorServiceid"]);
       Repeater1.DataBind();
       TxtAmount.Text = Convert.ToString(Request.QueryString["Amount"]);
       TxtComm.Text =(Convert.ToInt32( TxtAmount.Text) * 0.2).ToString();
       TxtDeposit.Text = (Convert.ToInt32(TxtAmount.Text) * 0.10).ToString();

    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
        a.Eventid = Convert.ToInt16(Session["Eventid"]);
        a.VendorServiceid = Convert.ToInt16(Request.QueryString["VendorServiceid"]);
       a.Amount=Convert.ToInt32( TxtAmount.Text);
       a.Deposit =Convert.ToInt32( TxtDeposit.Text);
       a.Commission =Convert.ToInt32( TxtComm.Text);
       a.BookDate = DateTime.Now.Date.ToString("dd-MM-yyyy");
       a.PaymentMode=DDMode.SelectedItem.ToString();
        a.CreditCardName = TxtCardName.Text;
        a.CreditCardNo = TxtCardNo.Text;
        a.ExpireDate = TxtExpDate.Text;
        a.CvvNo = TxtCvv.Text;
       BH.Insert(a);
       Response.Redirect("EventHistory.aspx");
    }
}