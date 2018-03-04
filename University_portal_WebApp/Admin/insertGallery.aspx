<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("admin-login.aspx");
        }
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {
            string path = "../assets/pages/img/Glance/" + uplImage.FileName;
            uplImage.SaveAs(MapPath(path));
            notification.InnerHtml = "<div class='alert alert-success alert-dismissable fade in'>" +
                                    "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                    "<strong>Image uploaded successfully</strong>" +
                                    "</div>";

        }
        catch (Exception exception)
        {
            notification.InnerHtml = "<div class='alert alert-danger alert-dismissable fade in'>" +
                                     "<a href='#' class='close' data-dismiss='alert' aria-lable='close'>&times;</a>" +
                                     "<strong>Failed to upload image. Check internet connection</strong>" + "<br/>" +
                                     "</div>";
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-6">
            <h1>Insert Gallery Images</h1>
            <div role="form">
                <div id="notification" runat="server"></div>
                <div class="form-group has-error">
                    Select Image:
                    <asp:FileUpload ID="uplImage" runat="server" required="" />
                </div>
                <div class="form-group has-error">
                    <asp:Button ID="Button12" type="submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button12_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

