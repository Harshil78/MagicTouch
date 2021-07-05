using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for VendorRateHelper
/// </summary>
public class VendorRateHelper:Helper
{
    public void Insert(AVendorRate a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendorRate(Vendorid,Userid,Rate)values(@Vendorid,@Userid,@Rate)");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
        ExecuteCommand(cm);

    }

    public void Delete(AVendorRate a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendorRate where VendorRateid=@VendorRateid");
        cm.Parameters.AddWithValue("@VendorRateid", a.VendorRateid);
        ExecuteCommand(cm);

    }

    public void Update(AVendorRate a)
    {
        SqlCommand cm = new SqlCommand("update tblVendorRate set Vendorid=@Vendorid,Userid=@Userid,Rate=@Rate where VendorRateid=@VendorRateid");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Rate", a.Rate);
        cm.Parameters.AddWithValue("@VendorRateid", a.VendorRateid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendorRate where VendorRateid=@VendorRateid", cn);
        cm.Parameters.AddWithValue("@VendorRateid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}