using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;


public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Take the user inputs
        string name = txtFirstName.Text + " " + txtLastName.Text;
        string senderEmail = txtEmail.Text;
        string phone = txtPhone.Text;
        string subject = txtSubject.Text;
        string message = txtMessage.Text;

        //Mail message objects
        MailMessage mm = new MailMessage();
        mm.From = new MailAddress("torbaapmso@gmail.com", "TestWebsite.com");
        mm.To.Add("torbaapmso@gmail.com");
        mm.Subject = subject;
        //mm.Body = "This is a mail from User: " + name + "<br/>" + "Email: " + senderEmail + "<br/>" + "Phone: " + phone + "<br/>" + "Time: " + DateTime.Now.ToString("F") + "<br/>" + message;
        mm.Body = "<html>" +
                  "<h3>This is a mail from user: " + name + "</h3>" +
                  "<h3>Email: " + senderEmail + "</h3>" +
                  "<h3>Phone: " + phone + " </h3>" +
                  "<h3>Time: " + DateTime.Now.ToString("f") + " </h3>" +
                  "<p>Message: " + message + " </p>" +
                  "</html>";
        mm.IsBodyHtml = true;


        //end

        //Uncomment this if you want to use the web.config method
        //SmtpClient smtp = new SmtpClient();
        //smtp.Send(mm);
        //Response.Write("<script>alert('Mail send successfully')</script>");

        //Smtp objects
        SmtpClient smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true
        };

        NetworkCredential networkCred = new NetworkCredential
        {
            UserName = "torbaapmso@gmail.com",
            Password = "!)&107SAKhesoyammso<!"
        };


        smtp.Credentials = networkCred;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        try
        {
            smtp.Send(mm);
            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Message sent successfully</strong>" +
                                     "</div>";
            ReplyMailClass replyMail = new ReplyMailClass(name, senderEmail); //own class for acknowledegement message
            //Response.Write("<script>alert('Mail send successfully')</script>");
        }
        catch (Exception ex)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Message did not send</strong>" + "<br/>" +
                                     "</div>";
            //Response.Write("<script>alert('Mail did not send')</script>");
        }

    }
}