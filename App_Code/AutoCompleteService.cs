using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for AutoCompleteService
/// </summary>[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
[System.Web.Script.Services.ScriptService]
public class AutoCompleteService : System.Web.Services.WebService
{
    [WebMethod]
    public List<string> GetAutoCompleteData(string VendorServiceName)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Event.mdf;Integrated Security=True;User Instance=True"))
        {
            using (SqlCommand cmd = new SqlCommand("select VendorServiceid,VendorServiceName from tblVendorService where VendorServiceName LIKE '%'+@SearchText+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", VendorServiceName);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(dr["VendorServiceName"].ToString());
                }
                return result;
            }
        }
    }

}