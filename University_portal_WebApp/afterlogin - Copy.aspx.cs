using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class afterlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user_id"] == null)
        //{
        //    Response.Redirect("login.aspx");
        //}
        //Label1.Text = Session["user_id"].ToString();

        
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "active";
            RetrieveUserData();
            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session["user_id"] = null;
        //Response.Redirect("Login.aspx");
    
    }
    protected void ProfileInfo_Click(object sender, EventArgs e)
    {
        ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "active";
        ((HtmlGenericControl)EditInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)ChangePassword.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)Logout.Parent).Attributes["class"] = "";

        MultiView1.ActiveViewIndex = 0;
        RetrieveUserData();
       
    }
    protected void EditInfo_Click(object sender, EventArgs e)
    {
        ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)EditInfo.Parent).Attributes["class"] = "active";
        ((HtmlGenericControl)ChangePassword.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)Logout.Parent).Attributes["class"] = "";

        MultiView1.ActiveViewIndex = 1;

        GvUserData();

    }
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)EditInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)ChangePassword.Parent).Attributes["class"] = "active";
        ((HtmlGenericControl)Logout.Parent).Attributes["class"] = "";

        MultiView1.ActiveViewIndex = 2;
    }

    protected void Logout_OnClick_Click(object sender, EventArgs e)
    {
        ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)EditInfo.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)ChangePassword.Parent).Attributes["class"] = "";
        ((HtmlGenericControl)Logout.Parent).Attributes["class"] = "active";

        MultiView1.ActiveViewIndex = 3;

    }
    

    protected void RetrieveUserData()
    {
        DbConnectClass db = new DbConnectClass();
        string query = "SELECT fname,lname,email,CreatedDate FROM tblStudent where email= '" + Session["user_id"] + "' ";
        DataSet ds = db.Select(query);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void GvUserData()
    {
        DbConnectClass db = new DbConnectClass();
        string query = "SELECT fname,lname,email,CreatedDate FROM tblStudent where email= '" + Session["user_id"] + "' ";
        DataSet ds = db.Select(query);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    

    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        TextBox txtfname = (e.Row.FindControl("txtfname") as TextBox);
    //        string txtfnameText = txtfname.Text;
    //    }
    //}

    protected void btnSubmit_OnClick(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        foreach (GridViewRow r in GridView1.Rows)
        {
            TextBox textname = (TextBox) r.FindControl("txtfname");
            string txt = textname.Text;

            string query = "UPDATE [tblStudent] SET fname='" + txt + "'  WHERE email='" + Session["user_id"].ToString() + "' ";

            db.Update(query);
        }

        GvUserData();

        
    }
}