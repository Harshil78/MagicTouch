using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for VendorServiceHelper
/// </summary>
public class VendorServiceHelper:Helper
{
    public void Insert(AVendorService a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendorService(Vendorid,VendorServiceName,Serviceid,Amount,Description,Image)values(@Vendorid,@VendorServiceName,@Serviceid,@Amount,@Description,@Image)");
        
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@VendorServiceName", a.VendorServiceName);
        cm.Parameters.AddWithValue("@Serviceid", a.Serviceid);
        cm.Parameters.AddWithValue("@Amount", a.Amount);
        cm.Parameters.AddWithValue("@Description", a.Description);
        cm.Parameters.AddWithValue("@Image", a.Image);

        ExecuteCommand(cm);

    }

    public void Delete(AVendorService a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendorService where VendorServiceid=@VendorServiceid");
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        ExecuteCommand(cm);

    }

    public void Update(AVendorService a)
    {
        SqlCommand cm = new SqlCommand("update tblVendorService set Vendorid=@Vendorid,VendorServiceName=@VendorServiceName,Serviceid=@Serviceid,Amount=@Amount,Description=@Description,Image=@Image where VendorServiceid=@VendorServiceid");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@VendorServiceName", a.VendorServiceName);
        cm.Parameters.AddWithValue("@Serviceid", a.Serviceid);
        cm.Parameters.AddWithValue("@Amount", a.Amount);
        cm.Parameters.AddWithValue("@Description", a.Description);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@VendorServiceid", a.VendorServiceid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendorService where VendorServiceid=@VendorServiceid", cn);
        cm.Parameters.AddWithValue("@VendorServiceid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}