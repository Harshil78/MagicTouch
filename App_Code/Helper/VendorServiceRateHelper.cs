using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for VendorServiceRateHelper
/// </summary>
public class VendorServiceRateHelper:Helper
{
    public void Insert(AVendorServiceRate a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendorServiceRate(VendorServiceid,Userid,Rate)values(@VendorServiceid,@Userid,@Rate)");
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
        ExecuteCommand(cm);

    }

    public void Delete(AVendorServiceRate a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendorServiceRate where VendorServiceRateid=@VendorServiceRateid");
        cm.Parameters.AddWithValue("@VendorServiceRateid", a.VendorServiceRateid);
        ExecuteCommand(cm);

    }

    public void Update(AVendorServiceRate a)
    {
        SqlCommand cm = new SqlCommand("update tblVendorServiceRate set VendorServiceid=@VendorServiceid,Userid=@Userid,Rate=@Rate where VendorServiceRateid=@VendorServiceRateid");
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
        cm.Parameters.AddWithValue("@VendorServiceRateid", a.VendorServiceRateid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendorServiceRate where VendorServiceRateid=@VendorServiceRateid", cn);
        cm.Parameters.AddWithValue("@VendorServiceRateid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}