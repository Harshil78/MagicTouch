using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for VendorReviewHelper
/// </summary>
public class VendorReviewHelper:Helper
{
    public void Insert(AVendorReview a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendorReview(Vendorid,Userid,ReviewDate,Review)values(@Vendorid,@Userid,@ReviewDate,@Review)");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
       cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        ExecuteCommand(cm);

    }

    public void Delete(AVendorReview a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendorReview where VendorReviewid=@VendorReviewid");
        cm.Parameters.AddWithValue("@VendorReviewid", a.VendorReviewid);
        ExecuteCommand(cm);

    }

    public void Update(AVendorReview a)
    {
        SqlCommand cm = new SqlCommand("update tblVendorReview set Vendorid=@Vendorid,Userid=@Userid,ReviewDate=@ReviewDate,Review=@Review where VendorReviewid=@VendorReviewid");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        cm.Parameters.AddWithValue("@VendorReviewid", a.VendorReviewid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendorReview where VendorReviewid=@VendorReviewid", cn);
        cm.Parameters.AddWithValue("@VendorReviewid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}