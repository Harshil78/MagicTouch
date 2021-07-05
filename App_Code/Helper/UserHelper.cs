using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class UserHelper : Helper
{
    public void Insert(AUser a)
    {
        SqlCommand cm = new SqlCommand("insert into tblUser(UserName,Address,Contact,Email,Password,Gender,Countryid,Stateid,Cityid,SecurityQue,SecurityAns,Image)values(@UserName,@Address,@Contact,@Email,@Password,@Gender,@Countryid,@Stateid,@Cityid,@SecurityQue,@SecurityAns,@Image)");
        cm.Parameters.AddWithValue("@UserName", a.UserName);
        cm.Parameters.AddWithValue("@Address", a.Address);
        cm.Parameters.AddWithValue("@Contact", a.Contact);
        cm.Parameters.AddWithValue("@Email", a.Email);
        cm.Parameters.AddWithValue("@Password", a.Password);
        cm.Parameters.AddWithValue("@Gender", a.Gender);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        cm.Parameters.AddWithValue("@SecurityQue", a.SecurityQue);
        cm.Parameters.AddWithValue("@SecurityAns", a.SecurityAns);
        cm.Parameters.AddWithValue("@Image", a.Image);

        ExecuteCommand(cm);

    }

    public void Delete(AUser a)
    {
        SqlCommand cm = new SqlCommand("delete from tblUser where Userid=@Userid");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        ExecuteCommand(cm);

    }

    public void Update(AUser a)
    {
        SqlCommand cm = new SqlCommand("update tblUser set UserName=@UserName,Address=@Address,Contact=@Contact,Gender=@Gender,Countryid=@Countryid,Stateid=@Stateid,Cityid=@Cityid,Image=@Image where Userid=@Userid");
        cm.Parameters.AddWithValue("@UserName", a.UserName);
        cm.Parameters.AddWithValue("@Address", a.Address);
        cm.Parameters.AddWithValue("@Contact", a.Contact);
        //cm.Parameters.AddWithValue("@Email", a.Email);
        //cm.Parameters.AddWithValue("@Password", a.Password);
        cm.Parameters.AddWithValue("@Gender", a.Gender);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        //cm.Parameters.AddWithValue("@SecurityQue", a.SecurityQue);
        //cm.Parameters.AddWithValue("@SecurityAns", a.SecurityAns);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblUser where Userid=@Userid", cn);
        cm.Parameters.AddWithValue("@Userid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}
