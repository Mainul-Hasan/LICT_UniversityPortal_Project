using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DbConnectClass
/// </summary>
public class DbConnectClass
{
    SqlConnection con;
    SqlCommand _cmd;
    SqlDataReader dr;
	public DbConnectClass()
	{
		//
		// TODO: Add constructor logic here
		//
        string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
	    con = new SqlConnection(strPath);
	    con.Open();
	}

    public void Insert(string query)
    {
        _cmd = new SqlCommand(query,con);       
        _cmd.ExecuteNonQuery();
        con.Close();
    }

    public bool Select(string query)
    {
        _cmd = new SqlCommand(query, con);
        dr = _cmd.ExecuteReader();
        bool v = dr.HasRows;
        con.Close();
        return v;
    }

    public int Update(string query)
    {
        _cmd = new SqlCommand(query, con);
        int up = _cmd.ExecuteNonQuery();
        con.Close();
        return up;
    }





}