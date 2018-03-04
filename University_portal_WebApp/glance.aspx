<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.IO" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            Repeater1.DataSource = GetPhotos();
            Repeater1.DataBind();
        }
    }
    // Get list of photos from Photo folder
    public List<String> GetPhotos()
    {
        List<string> photos = new List<string>(); //Create a new list to store image file paths
        string photoPath = MapPath("~/assets/pages/img/Glance/");
        string[] files = Directory.GetFiles(photoPath);
        foreach (string pic in files)
        {
            photos.Add("assets/pages/img/Glance/" + Path.GetFileName(pic));
        }
        return photos;
    }
   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Gallery</title>
    <link href="assets/pages/css/gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="main">
        <div class="container">
            <div class="row margin-bottom-40">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12">
                    <h1>Our Beautiful University</h1>
                    <div class="content-page">
                        <div class="row margin-bottom-40">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-4 gallery-item">
                                        <a data-rel="fancybox-button" title="Our Campus" href="<%# Container.DataItem %>" class="fancybox-button">
                                            <asp:Image ID="Image1" ImageUrl="<%# Container.DataItem %>" CssClass="img-responsive" runat="server" />
                                            <div class="zoomix"><i class="fa fa-search"></i></div>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT -->
            </div>
        </div>
    </div>
</asp:Content>

