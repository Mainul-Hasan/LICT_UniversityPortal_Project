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
                message = "Registration successful. Please check your mail for activation code";
                SendActivationMail.SendMail(email);
                break;
        }
        return message;
    }
    public int SelectLogin(string email,string password)
    {
        string query = "SELECT email,password,ActivationCode FROM [tblStudent] WHERE email=@email AND password=@password";
        _cmd = new SqlCommand(query, con);
        _cmd.Parameters.AddWithValue("@email", email);
        _cmd.Parameters.AddWithValue("@password", password);
        dr = _cmd.ExecuteReader();
        int res = 0;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string actCode = dr["ActivationCode"].ToString();
                if (actCode.Equals(String.Empty))
                {
                    res = 1;
                }

                else
                {
                    res = 2;
                }
            }
        }
        else
        {
            res = 0;
        }
        con.Close();
        return res;
    }

    public DataSet Select(string query)
    {
        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public bool AdminLogin(string email, string password)
    {
        bool res;
        string query = "SELECT email,password FROM [tblAdmin] WHERE email=@email AND password=@password";
        _cmd = new SqlCommand(query, con);
        _cmd.Parameters.AddWithValue("@email", email);
        _cmd.Parameters.AddWithValue("@password", password);
        dr = _cmd.ExecuteReader();
        if (dr.HasRows)
        {
            res = true;
        }
        else
        {
            res = false;
        }
        con.Close();
        return res;
    }

    public int Update(string query)
    {
        _cmd = new SqlCommand(query, con);
        int up = _cmd.ExecuteNonQuery();
        con.Close();
        return up;
    }    
}