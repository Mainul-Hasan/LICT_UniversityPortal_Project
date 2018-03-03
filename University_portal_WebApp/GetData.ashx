<%@ WebHandler Language="C#" Class="GetData" %>

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Serialization;

public class GetData : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        List<DataStudents> dsList = new List<DataStudents>();
        string cs = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) AS Count FROM tblStudent", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataStudents dsClass = new DataStudents();
            while (dr.Read())
            {
                dsClass.label = "Students";
                dsClass.value = (int)dr["Count"];
                dsList.Add(dsClass);
            }
        }
        JavaScriptSerializer js = new JavaScriptSerializer();
        context.Response.Write(js.Serialize(dsList));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}