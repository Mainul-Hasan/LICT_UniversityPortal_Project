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
        if (Session["user_id"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void changePassword_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        //Encrypt password
        AesEncryption des = new AesEncryption();
        string oldPassEncryptedText = des.EncryptAes(oldPassword_TextBox.Text);
        string newPassEncryptedText = des.EncryptAes(newPassword_TextBox.Text);

        int up = db.Update("UPDATE [tblStudent] SET password='" + newPassEncryptedText + "'  WHERE password='" + oldPassEncryptedText + "' AND email='" + Session["user_id"].ToString() + "' ");

        if (up == 0)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Old password mismatch</strong>" + "<br/>" +
                                     "</div>";
        }
        else
        {
            Session["user_id"] = null;
            Label1.Visible = true;
            Label1.Text = "Pass changed Successfully";
            Response.Redirect("Login.aspx");
            //Response.Write("<script>alert('Pass changed Successfully')</script>");
        }
    }
}