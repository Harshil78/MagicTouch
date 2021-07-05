using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MessageHelper
/// </summary>
public class MessageHelper:Helper
{
    public void Insert(AMessage a)
    {
        SqlCommand cm = new SqlCommand("insert into tblMessage(Userid,Vendorid,Message,Date,Type)values(@Userid,@Vendorid,@Message,@Date,@Type)");
        cm.Parameters.AddWithValue("@Userid", a.Userid);
        cm.Parameters.AddWithValue("@Vendorid", a.Vendorid);
        cm.Parameters.AddWithValue("@Message", a.Message);
        cm.Parameters.AddWithValue("@Date", a.Date);
        cm.Parameters.AddWithValue("@Type", a.Type);

        ExecuteCommand(cm);

    }
}