using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;
using System.Web;

/// <summary>
/// This class is used to mail the activation code to a user upon successful registration
/// </summary>
public static class SendActivationMail
{
    public static void SendMail(string email)
	{
        DbConnectClass db = new DbConnectClass();
	    string activationCode = Guid.NewGuid().ToString();
        string query = "UPDATE [tblStudent] SET ActivationCode = '" + activationCode + "' WHERE email = '" + email + "' ";
	    db.Update(query);

	    using (MailMessage mm = new MailMessage())
	    {	        
	        mm.From = new MailAddress("torbaapmso@gmail.com", "TestWebsite.com");
	        mm.To.Add(email);
            mm.Subject = "Account Activation at TestWebsite.com";      
	        mm.Body = "<html>" +
	                  "<p>Hi user,</p>" +
	                  "<p>Thanks for registering on our site.</p>" +
	                  "<p>Please click the following link to activate your account.</p>" +
                      "<a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace("register", "Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>" +
	                  "<p>Best regards,</p>" +
	                  "<p>TestWebsite.com team.</p>" +
	                  "</html>";	        
	        mm.IsBodyHtml = true;

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
	        smtp.Send(mm);
	    }
	}
}