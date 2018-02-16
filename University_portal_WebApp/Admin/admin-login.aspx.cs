using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        bool res = db.AdminLogin(txtInputEmail.Text, txtInputPassword.Text);
        if (res)
        {
            Session["admin_id"] = txtInputEmail.Text;
            Response.Redirect("admin-default.aspx");
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