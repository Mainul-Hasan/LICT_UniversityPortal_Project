using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_OnClick(object sender, EventArgs e)
    {
        Session["admin_id"] = null;
        Response.Redirect("admin-login.aspx");
    }

    protected string SetCssClass(string page)
    {
        return Request.Url.AbsolutePath.ToLower().EndsWith(page.ToLower()) ? "active" : "";
    }


}
