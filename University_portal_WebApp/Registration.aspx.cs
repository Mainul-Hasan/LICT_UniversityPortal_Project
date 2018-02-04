using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    //SqlConnection con;
    //SqlCommand _cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
        //con = new SqlConnection(strPath);
        //con.Open();
    }
    protected void create_account_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        //Encrypt the password
        AesEncryption aes = new AesEncryption();
        string passEncryptedText = aes.EncryptAes(password_Textbox.Text);

        try
        {
            db.Insert("INSERT INTO [tblStudent] (fname,lname,email,password) VALUES ('" + firstname_Textbox.Text + "','" + lastname_Textbox.Text + "','" + email_Textbox.Text + "','" + passEncryptedText + "')");

            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Data submitted successfully</strong>" +
                                     "</div>";
        }
        catch (Exception exception)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Failed to submit data</strong>" + "<br/>" +
                                     "</div>";
        }
    }
    protected void cancel_Button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}