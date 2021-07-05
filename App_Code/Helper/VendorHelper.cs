using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for VendorHelper
/// </summary>
public class VendorHelper:Helper
{
    public void Insert(AVendor a)
    {
        SqlCommand cm = new SqlCommand("insert into tblVendor(VendorName,Address,Contact,Email,Password,OrgName,Cityid,SecurityQue,SecurityAns,Image)values(@VendorName,@Address,@Contact,@Email,@Password,@OrgName,@Cityid,@SecurityQue,@SecurityAns,@Image)");
        cm.Parameters.AddWithValue("@VendorName", a.VendorName);
        cm.Parameters.AddWithValue("@Address", a.Address);
        cm.Parameters.AddWithValue("@Contact", a.Contact);
        cm.Parameters.AddWithValue("@Email", a.Email);
        cm.Parameters.AddWithValue("@Password", a.Password);
        cm.Parameters.AddWithValue("@OrgName", a.OrgName);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        cm.Parameters.AddWithValue("@SecurityQue", a.SecurityQue);
        cm.Parameters.AddWithValue("@SecurityAns", a.SecurityAns);
        cm.Parameters.AddWithValue("@Image", a.Image);

        ExecuteCommand(cm);

    }

    public void Delete(AVendor a)
    {
        SqlCommand cm = new SqlCommand("delete from tblVendor where Vendorid=@Vendorid");
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        ExecuteCommand(cm);

    }

    public void Update(AVendor a)
    {
        SqlCommand cm = new SqlCommand("update tblVendor set VendorName=@VendorName,Address=@Address,Contact=@Contact,OrgName=@OrgName,Cityid=@Cityid,Image=@Image where Vendorid=@Vendorid");
        cm.Parameters.AddWithValue("@VendorName", a.VendorName);
        cm.Parameters.AddWithValue("@Address", a.Address);
        cm.Parameters.AddWithValue("@Contact", a.Contact);
        //cm.Parameters.AddWithValue("@Email", a.Email);
        //cm.Parameters.AddWithValue("@Password", a.Password);
        cm.Parameters.AddWithValue("@OrgName", a.OrgName);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        //cm.Parameters.AddWithValue("@SecurityQue", a.SecurityQue);
        //cm.Parameters.AddWithValue("@SecurityAns", a.SecurityAns);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendor where Vendorid=@Vendorid", cn);
        cm.Parameters.AddWithValue("@Vendorid",id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}