using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        bool hasRows = db.Select("SELECT email,password FROM [tblStudent] WHERE email='" + email_TextBox.Text + "' AND password='" + password_TextBox.Text + "' ");

        if (hasRows)
        {
            Session["user_id"] = email_TextBox.Text;
            Response.Redirect("afterlogin.aspx");
        }
        else
        {
            Response.Write("<script>alert('ID or password mismatch')</script>");
        }
    }
}