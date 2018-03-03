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
        if (Session["user_id"] == null)
        {
            Response.Redirect("login.aspx");
        }
        
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            ((HtmlGenericControl)ProfileInfo.Parent).Attributes["class"] = "active";
            RetrieveUserData();
            
        }

        
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
        string query = "SELECT fname,lname,email,Address,Phone,Gender,CareerObjective,Skills,Image FROM tblStudent where email= '" + Session["user_id"] + "' ";
        DataSet ds = db.Select(query);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }

    protected void GvUserData()
    {
        DbConnectClass db = new DbConnectClass();
        string query = "SELECT fname,lname,email,Address,Phone,Gender,CareerObjective,Skills,Image FROM tblStudent where email= '" + Session["user_id"] + "' ";
        DataSet ds = db.Select(query);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void btnSubmit_OnClick(object sender, EventArgs e)
    {
        
        DbConnectClass db = new DbConnectClass();
        foreach (GridViewRow r in GridView1.Rows)
        {
            FileUpload pathfile = (FileUpload)r.FindControl("FileUpload1");
            TextBox textfname = (TextBox) r.FindControl("txtfname");
            TextBox textlame = (TextBox) r.FindControl("txtlname");
            TextBox textaddress = (TextBox) r.FindControl("txtAddress");
            TextBox textphone = (TextBox)r.FindControl("txtPhone");           
            DropDownList listgender = (DropDownList) r.FindControl("ddGender");
            TextBox textcareerObj = (TextBox)r.FindControl("txtCareerObj");
            TextBox textskills = (TextBox) r.FindControl("txtSkills");

            string path = "assets/pages/img/user-images/" + pathfile.FileName;
            pathfile.SaveAs(MapPath(path));

            string fname = textfname.Text;
            string lname = textlame.Text;
            string address = textaddress.Text;
            string phone = textphone.Text;
            string gender = listgender.SelectedValue;
            string careerObj = textcareerObj.Text;
            string skills = textskills.Text;

            string query = "UPDATE [tblStudent] SET fname = '" + fname + "' , lname = '" + lname + "' , Address = '" + address + "' , phone = '" + phone + "' , gender = '" + gender + "' , CareerObjective = '" + careerObj + "' , skills = '" + skills + "', Image = '" + path + "'  WHERE email='" + Session["user_id"].ToString() + "' ";

            db.Update(query);
        }
        GvUserData();
        Label1.Text = "Success";
    }  
    protected void changePassword_Button_OnClick(object sender, EventArgs e)
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
            Label1.Visible = true;
            Label1.Text = "Pass changed Successfully";

            oldPassword_TextBox.Text = "";
            newPassword_TextBox.Text = "";
            //Response.Redirect("Login.aspx");
            //Response.Write("<script>alert('Pass changed Successfully')</script>");
        }
    }

    protected void btnLogout_OnClick(object sender, EventArgs e)
    {
        Session["user_id"] = null;
        Response.Redirect("Login.aspx");
    }
}