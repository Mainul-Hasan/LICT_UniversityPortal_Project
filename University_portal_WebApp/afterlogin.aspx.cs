using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class afterlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Label1.Text = Session["user_id"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user_id"] = null;
        Response.Redirect("Login.aspx");
    
    }
}