using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for BookHelper
/// </summary>
public class BookHelper:Helper
{
    public void Insert(ABook a)
    {
        SqlCommand cm = new SqlCommand("insert into tblServiceBook(Eventid,VendorServiceid,Amount,Deposit,Commission,BookDate,PaymentMode,CreditCardName,CreditCardNo,ExpireDate,CvvNo)values(@Eventid,@VendorServiceid,@Amount,@Deposit,@Commission,@BookDate,@PaymentMode,@CreditCardName,@CreditCardNo,@ExpireDate,@CvvNo)");
        cm.Parameters.AddWithValue("@Eventid", a.Eventid);
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Amount", a.Amount);
        cm.Parameters.AddWithValue("@Deposit", a.Deposit);
        cm.Parameters.AddWithValue("@Commission", a.Commission);
        cm.Parameters.AddWithValue("@BookDate", a.BookDate);
        cm.Parameters.AddWithValue("@PaymentMode", a.PaymentMode);
        cm.Parameters.AddWithValue("@CreditCardName", a.CreditCardName);
        cm.Parameters.AddWithValue("@CreditCardNo", a.CreditCardNo);
        cm.Parameters.AddWithValue("@ExpireDate", a.ExpireDate);
        cm.Parameters.AddWithValue("@CvvNo", a.CvvNo);

        ExecuteCommand(cm);

    }

    public void Delete(ABook a)
    {
        SqlCommand cm = new SqlCommand("delete from tblServiceBook where Bookid=@Bookid");
        cm.Parameters.AddWithValue("@Bookid", a.Bookid);
        ExecuteCommand(cm);

    }

    public void Update(ABook a)
    {
        SqlCommand cm = new SqlCommand("update tblserviceBook set Eventid=@Eventid,VendorServiceid=@VendorServiceid,Amount=@Amount,Deposit=@Deposit,Commission=@Commission,BookDate=@BookDate,PaymentMode=@PaymentMode,CreditCardName=@CreditCardName,CreditCardNo=@CreditCardNo,ExpireDate=@ExpireDate,CvvNo=@CvvNo where Bookid=@Bookid");
        cm.Parameters.AddWithValue("@Eventid", a.Eventid);
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Amound", a.Amount);
        cm.Parameters.AddWithValue("@Deposit", a.Deposit);
        cm.Parameters.AddWithValue("@Commission", a.Commission);
        cm.Parameters.AddWithValue("@BookDate", a.BookDate);
        cm.Parameters.AddWithValue("@PaymentMode", a.PaymentMode);
        cm.Parameters.AddWithValue("@CreditCardName", a.CreditCardName);
        cm.Parameters.AddWithValue("@CreditCardNo", a.CreditCardNo);
        cm.Parameters.AddWithValue("@ExpireDate", a.ExpireDate);
        cm.Parameters.AddWithValue("@CvvNo", a.CvvNo);
        cm.Parameters.AddWithValue("@Bookid", a.Bookid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblServiceBook where Bookid=@Bookid", cn);
        cm.Parameters.AddWithValue("@Bookid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}