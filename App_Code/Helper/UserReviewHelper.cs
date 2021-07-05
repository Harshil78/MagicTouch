using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for UserReviewHelper
/// </summary>
public class UserReviewHelper:Helper
{
    public void Insert(AUserReview a)
    {
        SqlCommand cm = new SqlCommand("insert into tblUserReview(Userid,Vendorid,ReviewDate,Review)values(@Userid,@Vendorid,@ReviewDate,@Review)");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        ExecuteCommand(cm);

    }

    public void Delete(AUserReview  a)
    {
        SqlCommand cm = new SqlCommand("delete from tblUserReview where UserReviewid=@UserReviewid");
        cm.Parameters.AddWithValue("@UserReviewid", a.UserReviewid);
        ExecuteCommand(cm);

    }

    public void Update(AUserReview a)
    {
        SqlCommand cm = new SqlCommand("update tblUserReview set Userid=@Userid,Vendorid=@Vendorid,ReviewDate=@ReviewDate,Review=@Review where UserReviewid=@UserReviewid");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@ReviewDate", a.ReviewDate);
        cm.Parameters.AddWithValue("@Review", a.Review);
        cm.Parameters.AddWithValue("@UserReviewid", a.UserReviewid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblUserReview where UserReviewid=@UserReviewid", cn);
        cm.Parameters.AddWithValue("@UserReviewid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}