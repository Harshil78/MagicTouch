using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for ServiceHelper
/// </summary>
public class ServiceHelper:Helper
{
    public void Insert(AService a)
    {
        SqlCommand cm = new SqlCommand("insert into tblService(ServiceName,Image)values(@ServiceName,@Image)");
        cm.Parameters.AddWithValue("@ServiceName", a.ServiceName);
        cm.Parameters.AddWithValue("@Image", a.Image);

        ExecuteCommand(cm);

    }

    public void Delete(AService a)
    {
        SqlCommand cm = new SqlCommand("delete from tblService  where Serviceid=@Serviceid");
        cm.Parameters.AddWithValue("@Serviceid", a.Serviceid);
        ExecuteCommand(cm);

    }

    public void Update(AService a)
    {
        SqlCommand cm = new SqlCommand("update tblService set ServiceName=@ServiceName,Image=@Image where Serviceid=@Serviceid");
        cm.Parameters.AddWithValue("@ServiceName", a.ServiceName);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@Serviceid", a.Serviceid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblService  where Serviceid=@Serviceid", cn);
        cm.Parameters.AddWithValue("@Serviceid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }	
}