using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_insert_course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("admin-login.aspx");
        }   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DbConnectClass db = new DbConnectClass();
        try
        {
            db.Insert("INSERT INTO tblCourse (Course_Number,Course_Title,Credit_Hours_Theory,Credit_Hours_Practical,Contact_Hours_Theory,Contact_Hours_Practical,Prerequsite_Course) values('" + txtCourseNumber.Text + "','" + txtCourseTitle.Text + "','" + txtCreditHoursTheory.Text + "','" + txtCreditHoursPractical.Text + "','" + txtContactHoursTheory.Text + "','" + txtContactHoursPractical.Text + "','" + txtPrerequsiteCourse.Text + "')");

            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Course added successfully</strong>" +
                                     "</div>";
        }
        catch (Exception exception)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Failed to add course '" + exception + "'</strong>" + "<br/>" +
                                     "</div>";
        }
    }
}