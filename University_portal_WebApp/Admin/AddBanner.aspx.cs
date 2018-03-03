using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddBanner : System.Web.UI.Page
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
        string pathId;
        if (RadioButtonList1.SelectedValue.Equals("1"))
        {
            pathId = "bg9.jpg";
        }

        else if (RadioButtonList1.SelectedValue.Equals("2"))
        {
            pathId = "bg1.jpg";
        }

        else
        {
            pathId = "bg2.jpg";
        }

        int id = Convert.ToInt32(RadioButtonList1.SelectedValue);
        string path = "/assets/pages/img/frontend-slider/" + pathId;
        uplBannerImage.SaveAs(MapPath(path));
        DbConnectClass db = new DbConnectClass();
        string query = "update tblBanner SET BannerImage = '" + path + "',HeaderText1 = '" + txtHeader1.Text + "',HeaderText2 ='" + txtHeader2.Text + "' ,Para = '" + txtPara.Text + "' ,StartDate = '" + txtStartDate.Text + "',EndDate = '" + txtEndDate.Text + "' where Id = '"+ id +"' ";
        int up = db.Update(query);

        if (up == 0)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Banner did not update</strong>" + "<br/>" +
                                     "</div>";
        }
        else
        {
            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Banner updated successfully</strong>" + "<br/>" +
                                     "</div>";
        }
    }
}