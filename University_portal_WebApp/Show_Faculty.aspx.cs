using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Show_Faculty : System.Web.UI.Page
{
    DbConnectClass db= new DbConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void create_account_Button_Click(object sender, EventArgs e)
    {
        string path = "../assets/pages/img/faculty/" + uplImage.FileName;
        uplImage.SaveAs(MapPath(path));
        try
        {
            db.Insert("insert into tblFacultyMembers (FName,ContactNo,EmailId,faculty,designation,Qualification,Experience,_image) values('" + txtfname.Text + "','" + txtContact.Text + "','" + txtEmail.Text + "','" + txtfaculty.Text + "','" + txtDesig.Text + "','" + txtQual.Text + "','" + txtExp.Text + "','" + path + "')");

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