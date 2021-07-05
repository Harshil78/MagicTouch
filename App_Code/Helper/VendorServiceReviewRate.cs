using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for VendorServiceReviewRate
/// </summary>
public class VendorServiceReviewRate:Helper
{
    public void Insert(AVendorServiceReview a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendorServiceReview(VendorServiceid,Userid,ReviewDate,Review)values(@VendorServiceid,@Userid,@ReviewDate,@Review)");
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        ExecuteCommand(cm);

    }

    public void Delete(AVendorServiceReview a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendorServiceReview where VendorServiceReviewid=@VendorServiceReviewid");
        cm.Parameters.AddWithValue("@VendorServiceReviewid", a.VendorServiceReviewid);
        ExecuteCommand(cm);

    }

    public void Update(AVendorServiceReview a)
    {
        SqlCommand cm = new SqlCommand("update tblVendorServiceReview set VendorServiceid=@VendorServiceid,Userid=@Userid,ReviewDate=@ReviewDate,Review=@Review where VendorServiceReviewid=@VendorServiceReviewid");
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        cm.Parameters.AddWithValue("@VendorServiceReviewid", a.VendorServiceReviewid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendorServiceReview where VendorServiceReviewid=@VendorServiceReviewid", cn);
        cm.Parameters.AddWithValue("@VendorServiceReviewid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}