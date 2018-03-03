using System;
using System.Data;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        string query = "SELECT fname,lname,email,Address,Phone,Gender,CareerObjective,Skills,Image FROM tblStudent where UserId= '" + Request.QueryString["Id"] + "' ";
        DataSet ds = db.Select(query);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
}