using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class CountryHelper:Helper
{
		public void Insert(ACountry a)
	{
        SqlCommand cm = new SqlCommand("insert into tblCountry(CountryName)values(@CountryName)");
        cm.Parameters.AddWithValue("@CountryName",a.CountryName);
        ExecuteCommand(cm);

	}

        public void Delete(ACountry a)
    {
        SqlCommand cm = new SqlCommand("delete from tblCountry  where Countryid=@Countryid");
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        ExecuteCommand(cm);

    }

    public void Update(ACountry a)
    {
        SqlCommand cm = new SqlCommand("update tblCountry set CountryName=@CountryName where Countryid=@Countryid");
        cm.Parameters.AddWithValue("@CountryName", a.CountryName);
        cm.Parameters.AddWithValue("@Countryid", a.Countryid);
        ExecuteCommand(cm);

    }
    public DataRow GetSingle(string id)
    {
        SqlCommand cm = new SqlCommand("select * from tblCountry  where Countryid=@Countryid", cn);
        cm.Parameters.AddWithValue("@Countryid",id);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
            return ds.Tables[0].Rows[0];
        return null;
    }


}