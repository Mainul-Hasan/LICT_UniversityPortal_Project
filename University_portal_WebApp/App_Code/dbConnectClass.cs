using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

/// <summary>
/// Summary description for DbConnectClass
/// </summary>
public class DbConnectClass
{
    SqlConnection con;
    SqlCommand _cmd;
    SqlDataReader dr;
    int userId = 0;
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

    public string Insert(string fname, string lname, string email, string password)
    {

        _cmd = new SqlCommand("Register_Data",con);
        _cmd.CommandType = CommandType.StoredProcedure;
        _cmd.Parameters.AddWithValue("@fname", fname);
        _cmd.Parameters.AddWithValue("@lname", lname);
        _cmd.Parameters.AddWithValue("@email", email);
        _cmd.Parameters.AddWithValue("@password", password);
        userId = Convert.ToInt32(_cmd.ExecuteScalar());
        string message = string.Empty;
        switch (userId)
        {
            case -1:
                message = "Email already exists. Please choose a different email.";
                break;          
            default:
                message = "Registration successful.";
                break;
        }
        return message;
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