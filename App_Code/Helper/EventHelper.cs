using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for EventHelper
/// </summary>
public class EventHelper:Helper
{
    public void Insert(AEvent a)
    {
        SqlCommand cm = new SqlCommand("insert into tblEvent(EventName,EventDate,EventTypeid,Userid,Countryid,Stateid,Cityid,Venue,Location)values(@EventName,@EventDate,@EventTypeid,@Userid,@Countryid,@Stateid,@Cityid,@Venue,@Location)");
        cm.Parameters.AddWithValue("@EventName", a.EventName);
        cm.Parameters.AddWithValue("@EventDate", a.EventDate);
        cm.Parameters.AddWithValue("@EventTypeid", a.EventTypeid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        cm.Parameters.AddWithValue("@Venue", a.Venue);
        cm.Parameters.AddWithValue("@Location", a.Location);
        ExecuteCommand(cm);

    }

    public void Delete(AEvent a)
    {
        SqlCommand cm = new SqlCommand("delete from tblEvent where Eventid=@Eventid");
        cm.Parameters.AddWithValue("@Eventid", a.Eventid);
        ExecuteCommand(cm);

    }

    public void Update(AEvent a)
    {
        SqlCommand cm = new SqlCommand("update tblEvent set EventName=@EventName,EventDate=@EventDate,EventTypeid=@EventTypeid,Userid=@Userid,Countryid=@Countryid,Stateid=@Stateid,Cityid=@Cityid,Venue=@Venue,Location=@Location where Eventid=@Eventid");
        cm.Parameters.AddWithValue("@EventName", a.EventName);
        cm.Parameters.AddWithValue("@EventDate", a.EventDate);
        cm.Parameters.AddWithValue("@EventTypeid", a.EventTypeid);
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        cm.Parameters.AddWithValue("@Stateid", a.Stateid);
        cm.Parameters.AddWithValue("@Cityid", a.Cityid);
        cm.Parameters.AddWithValue("@Venue", a.Venue);
        cm.Parameters.AddWithValue("@Location", a.Location);
        cm.Parameters.AddWithValue("@Eventid", a.Eventid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblEvent where Eventid=@Eventid", cn);
        cm.Parameters.AddWithValue("@Eventid", id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }
}