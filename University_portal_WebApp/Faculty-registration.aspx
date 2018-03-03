<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Faculty-registration.aspx.cs" Inherits="Show_Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="default.aspx">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active">Create new account</li>
            </ul>
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40">
                <!-- BEGIN SIDEBAR -->
                <div class="sidebar col-md-3 col-sm-3">
                    <ul class="list-group margin-bottom-25 sidebar-menu">
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Login/Register</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Restore Password</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>My account</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Address book</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Wish list</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Returns</a></li>
                        <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Newsletter</a></li>
                    </ul>
                </div>
                <!-- END SIDEBAR -->
                <%-- Body part --%>
                <div class="col-md-9 col-sm-9">
                    <h1>Faculty Registration</h1>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="notification" runat="server"></div>
                        </div>
                    </div>
                    <div class="content-form-page">
                        <div class="row">
                            <div class="col-md-7 col-sm-7">
                                <div class="form-horizontal">
                                    <fieldset>
                                        <legend>Your details</legend>
                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtfname" runat="server" CssClass="col-lg-4 control-label" ID="Label1">Full Name <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtfname" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtContact" runat="server" CssClass="col-lg-4 control-label" ID="Label2">Contact Number <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtContact" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtEmail" runat="server" CssClass="col-lg-4 control-label" ID="Label3">Email <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtfaculty" runat="server" CssClass="col-lg-4 control-label" ID="Label8">Faculty Name <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtfaculty" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtDesig" runat="server" CssClass="col-lg-4 control-label" ID="Label4">Designation <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtDesig" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtQual" runat="server" CssClass="col-lg-4 control-label" ID="Label5">Qualification <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtQual" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="txtExp" runat="server" CssClass="col-lg-4 control-label" ID="Label6">Experience <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="txtExp" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label AssociatedControlID="uplImage" runat="server" CssClass="col-lg-4 control-label" ID="Label7">Upload your image<span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:FileUpload ID="uplImage" runat="server" />
                                            </div>
                                        </div>


                                    </fieldset>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                            <asp:Button ID="create_account_Button" type="submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="create_account_Button_Click" />
                                            <asp:Button ID="cancel_Button" type="button" CssClass="btn btn-default" runat="server" Text="Cancel" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 pull-right">
                                <div class="form-info">
                                    <h2><em>Important</em> Information</h2>
                                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>

                                    <p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>
                                    <asp:Button ID="detail_Button" type="button" class="btn btn-default" runat="server" Text="More details" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

