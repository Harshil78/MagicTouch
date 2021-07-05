using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ContactHelper
/// </summary>
public class ContactHelper:Helper
{
    public void Insert(AContactUs a)
    {
        SqlCommand cm = new SqlCommand("insert into tblContactUs(Name,Email,ContactNo,Description)values(@Name,@Email,@Contact,@Desc)");
        cm.Parameters.AddWithValue("@Name", a.Name);
        cm.Parameters.AddWithValue("@Email", a.Email);
        cm.Parameters.AddWithValue("@Contact", a.ContactNo);
        cm.Parameters.AddWithValue("@Desc", a.Description);

        ExecuteCommand(cm);

    }

    public void Delete(AContactUs a)
    {
        SqlCommand cm = new SqlCommand("delete from tblContactUs where Contactid=@Contactid");
        cm.Parameters.AddWithValue("@Contactid", a.Contactid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblContactUs where Contactid=@Contactid", cn);
        cm.Parameters.AddWithValue("@Contactid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}