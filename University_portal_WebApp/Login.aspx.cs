using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        //Encrypt password
        AesEncryption des = new AesEncryption();
        string passEncryptedText = des.EncryptAes(password_TextBox.Text);

        //bool hasRows = db.Select("SELECT email,password FROM [tblStudent] WHERE email='" + email_TextBox.Text + "' AND password='" + passEncryptedText + "' ");

        //if (hasRows)
        //{
        //    Session["user_id"] = email_TextBox.Text;
        //    Response.Redirect("afterlogin.aspx");
        //}
        //else
        //{
        //    notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
        //                             "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
        //                             "<strong>Id or password mismatch</strong>" + "<br/>" +
        //                             "</div>";
        //}

        //bool hasRows = db.Select("SELECT email,password FROM [tblStudent] WHERE email=@email AND password=@passEnc ");

        int res = db.SelectLogin(email_TextBox.Text, passEncryptedText);

        if (res == 1)
        {
            Session["user_id"] = email_TextBox.Text;
            Response.Redirect("afterlogin.aspx");
        }

        else if (res == 2)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                         "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                         "<strong>Account not activated. Please check your mail to activate your account</strong>" + "<br/>" +
                                         "</div>";
        }

        else
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                         "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                         "<strong>Id or password mismatch</strong>" + "<br/>" +
                                         "</div>";
        }

       
    }
}