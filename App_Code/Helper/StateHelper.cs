using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for StateHelper
/// </summary>
public class StateHelper:Helper
{
    public void Insert(AState a)
    {
        SqlCommand cm = new SqlCommand("insert into tblState(Countryid,StateName)values(@Countryid,@StateName)");
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@StateName", a.StateName);
        ExecuteCommand(cm);

    }

    public void Delete(AState a)
    {
        SqlCommand cm = new SqlCommand("delete from tblState  where Stateid=@Stateid");
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        ExecuteCommand(cm);

    }

    public void Update(AState a)
    {
        SqlCommand cm = new SqlCommand("update tblState set Countryid=@Countryid,StateName=@StateName  where Stateid=@Stateid");
        cm.Parameters.AddWithValue("@StateName", a.StateName);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblState  where Stateid=@Stateid", cn);
        cm.Parameters.AddWithValue("@Stateid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }


}