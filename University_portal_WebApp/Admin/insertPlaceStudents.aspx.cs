using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_insertPlaceStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("admin-login.aspx");
        }   
    }
    protected void create_account_Button_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        string path = "../assets/pages/img/placedStudents/" + uplImage.FileName;
        uplImage.SaveAs(MapPath(path));
        try
        {
            db.Insert("insert into tblPlacement (StudentName,companyName,Designation,salary,_image) values('" + txtName.Text + "','" + txtcompany.Text + "','" + txtDesig.Text + "','" + txtsal.Text + "','" + path + "')");

            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Data Submitted Successfully</strong>" +
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
   
}