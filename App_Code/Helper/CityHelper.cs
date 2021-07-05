using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for CityHelper
/// </summary>
public class CityHelper:Helper
{
		public void Insert(ACity a)
	{
        SqlCommand cm = new SqlCommand("insert into tblCity(Stateid,CityName)values(@stateid,@CityName)");
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@CityName",a.CityName);
        ExecuteCommand(cm);

	}

        public void Delete(ACity a)
    {
        SqlCommand cm = new SqlCommand("delete from tblCity  where Cityid=@Cityid");
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        ExecuteCommand(cm);

    }

    public void Update(ACity a)
    {
        SqlCommand cm = new SqlCommand("update tblCity set Stateid=@Stateid,CityName=@CityName where Cityid=@Cityid");
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@CityName", a.CityName);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblCity  where Cityid=@Cityid", cn);
        cm.Parameters.AddWithValue("@Cityid",id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }	
}
