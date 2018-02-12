using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {           
            string activationCode = Request.QueryString["ActivationCode"];

            if (Request.QueryString.HasKeys())
            {
                DbConnectClass db = new DbConnectClass();
                string query = "UPDATE [tblStudent] SET ActivationCode = null  WHERE ActivationCode = '" + activationCode + "' ";
                int rowsAffected = db.Update(query);
                if (rowsAffected == 1)
                {
                    notification.InnerHtml = "Account Activated";
                }
                else
                {
                    notification.InnerHtml = "Account already activated";                 
                }
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

    }
}