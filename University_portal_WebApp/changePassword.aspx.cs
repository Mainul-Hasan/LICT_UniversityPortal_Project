using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void changePassword_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        int up = db.Update("UPDATE [tblStudent] SET password='" + newPassword_TextBox.Text + "'  WHERE password='" + oldPassword_TextBox.Text + "' AND email='" + Session["user_id"].ToString() + "' ");

        if (up == 0)
        {
            Response.Write("<script>alert('Old Password is wrong')</script>");
            //Response.Redirect("passwordChange.aspx");
        }
        else
        {
            //Session["user_id"] = null;
            Label1.Visible = true;
            Label1.Text = "Pass changed Successfully";
            //Response.Write("<script>alert('Pass changed Successfully')</script>");
        }
    }
}