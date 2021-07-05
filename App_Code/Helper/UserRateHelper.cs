using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for UserRateHelper
/// </summary>
public class UserRateHelper:Helper
{
    public void Insert(AUserRate a)
    {
        SqlCommand cm = new SqlCommand("insert into tblUserRate(Userid,Vendorid,Rate)values(@Userid,@Vendorid,@Rate)");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
       
        ExecuteCommand(cm);

    }

    public void Delete(AUserRate a)
    {
        SqlCommand cm = new SqlCommand("delete from tblUserRate where UserRateid=@UserRateid");
        cm.Parameters.AddWithValue("@UserRateid", a.UserRateid);
        ExecuteCommand(cm);

    }

    public void Update(AUserRate a)
    {
        SqlCommand cm = new SqlCommand("update tblUserRate set Userid=@Userid,Vendorid=@Vendorid,Rate=@Rate where UserRateid=@UserRateid");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
        cm.Parameters.AddWithValue("@UserRateid", a.UserRateid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblUserRate where UserRateid=@UserRateid", cn);
        cm.Parameters.AddWithValue("@UserRateid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}