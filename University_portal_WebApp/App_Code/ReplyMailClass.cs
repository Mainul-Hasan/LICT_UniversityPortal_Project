using System;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for ReplyMailClass
/// </summary>
public class ReplyMailClass
{
    public ReplyMailClass(string name, string senderEmail)
	{
	    MailMessage mm = new MailMessage();
	    mm.From = new MailAddress("torbaapmso@gmail.com", "TestWebsite.com");
	    mm.To.Add(senderEmail);
	    mm.Subject = "This is a reply to mail at TestWebsite.com";
        //mm.Body = "Hello " + name + "," + "<br/>" +
        //          "Thank you for your query at TestWebsite.com. We will get back to you as soon as possible." + "<br/><br/>" + "Regards" +
        //          "<br/>" + "TestWebsite.com team.";
        mm.Body = "<html>" +
                  "<p>Hi "+ name +",</p>" +
                  "<p>Thanks for reaching out! Our support reps will check your message and forward to the best person when necessary. We'll get back to you within 48 hours.</p>" +
                  "<p>If your issue can't wait, you can also reach us via live chat on www.website.com/en/ or call 555-555-5555.</p>" +
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