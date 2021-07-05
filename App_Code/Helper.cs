using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Helper
{
    protected SqlConnection cn;
    public Helper()
    {
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Event.mdf;Integrated Security=True;User Instance=True");
    }

    public DataTable GetData(string qry)
    {
        SqlCommand cm = new SqlCommand(qry, cn);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }

    public void ExecuteCommand(SqlCommand cm)
    {
        cm.Connection = cn;
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
    }

    public bool AdminLogin(string AdminName, string password)
    {
        SqlCommand cm = new SqlCommand("select * from tblAdmin where AdminName=@AdminName and password=@password", cn);
        cm.Parameters.AddWithValue("@AdminName", AdminName);
        cm.Parameters.AddWithValue("@password", password);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpContext.Current.Session["AdminName"] = AdminName;
            HttpContext.Current.Session.Timeout = 18000;
            return true;
        }
        return false;
    }
    public bool UserChangePassword(string OldPassword, string NewPassword)
    {
        SqlCommand cm1 = new SqlCommand("select * from tblUser where Userid=@Userid and Password=@Password ", cn);
        cm1.Parameters.AddWithValue("@Password", OldPassword);
        cm1.Parameters.AddWithValue("@Userid", HttpContext.Current.Session["Userid"]);
        SqlDataAdapter da1 = new SqlDataAdapter(cm1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            SqlCommand cm = new SqlCommand("update tblUser set Password=@Password where Userid=@Userid", cn);
            cm.Parameters.AddWithValue("@Password", NewPassword);
            cm.Parameters.AddWithValue("@Userid", HttpContext.Current.Session["Userid"]);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return true;
        }

        return false;
    }



    public bool UForgotPassword(string Email)
    {
        SqlCommand cm = new SqlCommand("select * from tblUser where Email=@Email ", cn);
        cm.Parameters.AddWithValue("@Email", Email);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpContext.Current.Session["Email"] = Email;
            HttpContext.Current.Session["SecurityQue"] = ds.Tables[0].Rows[0]["SecurityQue"];
            HttpContext.Current.Session.Timeout = 18000;
            return true;
        }

        return false;
    }

    public bool SeqAns(string SecurityAns)
    {
        SqlCommand cm = new SqlCommand("select * from tblUser where Email=@Email and SecurityAns=@SecurityAns", cn);
        cm.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"]);
        cm.Parameters.AddWithValue("@SecurityAns", SecurityAns);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
          
            return true;
        }
        return false;
    }

    public bool AdminChangePassword(string OldPassword, string NewPassword)
    {
        SqlCommand cm1 = new SqlCommand("select * from tblAdmin where AdminName=@AdminName and Password=@Password ", cn);
        cm1.Parameters.AddWithValue("@Password", OldPassword);
        cm1.Parameters.AddWithValue("@AdminName", HttpContext.Current.Session["AdminName"]);
        SqlDataAdapter da1 = new SqlDataAdapter(cm1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            SqlCommand cm = new SqlCommand("update tblAdmin set Password=@Password where AdminName=@AdminName", cn);
            cm.Parameters.AddWithValue("@Password", NewPassword);
            cm.Parameters.AddWithValue("@AdminName", HttpContext.Current.Session["AdminName"]);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds); 
          return true ;
        }

        return false;
    }

    public bool VendorChangePassword(string OldPassword, string NewPassword)
    {
        SqlCommand cm1 = new SqlCommand("select * from tblVendor where Vendorid=@Vendorid and Password=@Password ", cn);
        cm1.Parameters.AddWithValue("@Password", OldPassword);
        cm1.Parameters.AddWithValue("@Vendorid", HttpContext.Current.Session["Vendorid"]);
        SqlDataAdapter da1 = new SqlDataAdapter(cm1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            SqlCommand cm = new SqlCommand("update tblVendor set Password=@Password where Vendorid=@Vendorid", cn);
            cm.Parameters.AddWithValue("@Password", NewPassword);
            cm.Parameters.AddWithValue("@Vendorid", HttpContext.Current.Session["Vendorid"]);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return true;
        }

        return false;
    }


    public bool VendorLogin(string Email, string Password)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendor where Email=@Email and Password=@Password", cn);
        cm.Parameters.AddWithValue("@Email", Email);
        cm.Parameters.AddWithValue("@Password", Password);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpContext.Current.Session["Vendorid"] = ds.Tables[0].Rows[0]["Vendorid"];
            HttpContext.Current.Session["VendorName"] = ds.Tables[0].Rows[0]["VendorName"];
            HttpContext.Current.Session["Image"] = ds.Tables[0].Rows[0]["Image"];
            HttpContext.Current.Session.Timeout = 180000;
            return true;
        }
        return false;
    }
    public bool UserLogin(string Email, string Password)
    {
        SqlCommand cm = new SqlCommand("select * from tblUser where Email=@Email and Password=@Password", cn);
        cm.Parameters.AddWithValue("@Email", Email);
        cm.Parameters.AddWithValue("@Password", Password);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpContext.Current.Session["Userid"] = ds.Tables[0].Rows[0]["Userid"];
            HttpContext.Current.Session["UserName"] = ds.Tables[0].Rows[0]["UserName"];
            HttpContext.Current.Session["Image"] = ds.Tables[0].Rows[0]["Image"];
            HttpContext.Current.Session.Timeout = 18000;
            return true;
        }
        return false;
    }


    public bool FChangePassword(string NewPassword)
    {
        SqlCommand cm1 = new SqlCommand("select * from tblUser where Email=@Email ", cn);
       
        cm1.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"].ToString());
        SqlDataAdapter da1 = new SqlDataAdapter(cm1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            SqlCommand cm = new SqlCommand("update tblUser set Password=@Password where Email=@Email", cn);
            cm.Parameters.AddWithValue("@Password", NewPassword);
            cm.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return true;
        }

        return false;
    }

    public bool VForgotPassword(string Email)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendor where Email=@Email ", cn);
        cm.Parameters.AddWithValue("@Email", Email);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            HttpContext.Current.Session["Email"] = Email;
            HttpContext.Current.Session["SecurityQue"] = ds.Tables[0].Rows[0]["SecurityQue"];
            HttpContext.Current.Session.Timeout = 18000;
            return true;
        }

        return false;
    }

    public bool VSeqAns(string SecurityAns)
    {
        SqlCommand cm = new SqlCommand("select * from tblVendor where Email=@Email and SecurityAns=@SecurityAns", cn);
        cm.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"]);
        cm.Parameters.AddWithValue("@SecurityAns", SecurityAns);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            return true;
        }
        return false;
    }

    public bool VChangePassword(string NewPassword)
    {
        SqlCommand cm1 = new SqlCommand("select * from tblVendor where Email=@Email ", cn);

        cm1.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"].ToString());
        SqlDataAdapter da1 = new SqlDataAdapter(cm1);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            SqlCommand cm = new SqlCommand("update tblVendor set Password=@Password where Email=@Email", cn);
            cm.Parameters.AddWithValue("@Password", NewPassword);
            cm.Parameters.AddWithValue("@Email", HttpContext.Current.Session["Email"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return true;
        }

        return false;
    }
}