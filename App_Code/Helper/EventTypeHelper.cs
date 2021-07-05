using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for EventTypeHelper
/// </summary>
public class EventTypeHelper:Helper
{
    public void Insert(AEventType a)
    {
        SqlCommand cm = new SqlCommand("insert into tblEventType(EventTypeName,Image)values(@EventTypeName,@Image)");
        cm.Parameters.AddWithValue("@EventTypeName", a.EventTypeName);
        cm.Parameters.AddWithValue("@Image", a.Image);
        ExecuteCommand(cm);

    }

    public void Delete(AEventType a)
    {
        SqlCommand cm = new SqlCommand("delete from tblEventType  where EventTypeid=@EventTypeid");
        cm.Parameters.AddWithValue("@EventTypeid", a.EventTypeid);
        ExecuteCommand(cm);

    }

    public void Update(AEventType a)
    {
        SqlCommand cm = new SqlCommand("update tblEventType set EventTypeName=@EventTypeName,Image=@Image where EventTypeid=@EventTypeid");
        cm.Parameters.AddWithValue("@EventTypeName", a.EventTypeName);
        cm.Parameters.AddWithValue("@Image", a.Image);
        cm.Parameters.AddWithValue("@EventTypeid", a.EventTypeid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblEventType  where EventTypeid=@EventTypeid", cn);
        cm.Parameters.AddWithValue("@EventTypeid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }	
}