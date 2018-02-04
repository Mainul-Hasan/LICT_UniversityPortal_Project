<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">    
    <title>Login</title>
    <!-- Page level plugin styles START -->
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- Page level plugin styles END -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="javascript:;">Pages</a></li>
                <li class="active">Create new account</li>
            </ul>
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40">
                <!-- BEGIN SIDEBAR -->
                <div class="sidebar col-md-3 col-sm-3">
                    <ul class="list-group margin-bottom-25 sidebar-menu">
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Login/Register</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Restore Password</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>My account</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Address book</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Wish list</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Returns</a></li>
                        <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Newsletter</a></li>
                    </ul>
                </div>
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="col-md-9 col-sm-9">
                    <h1>Login</h1>
                    <div class="content-form-page">
                        <div class="row">
                            <div class="col-md-7 col-sm-7">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <%--<label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>--%>
                                        <asp:Label AssociatedControlID="email_TextBox" runat="server" CssClass="col-lg-4 control-label">Email <span class="require">*</span></asp:Label>
                                        <div class="col-lg-8">
                                            <%--<input type="text" class="form-control" id="email"/>--%>
                                            <asp:TextBox ID="email_TextBox" type="text" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <%--<label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>--%>
                                        <asp:Label AssociatedControlID="password_TextBox" runat="server" CssClass="col-lg-4 control-label">Password <span class="require">*</span></asp:Label>
                                        <div class="col-lg-8">
                                            <%--<input type="text" class="form-control" id="password">--%>
                                            <asp:TextBox ID="password_TextBox" type="text" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-offset-4 padding-left-0">
                                            <a href="#">Forget Password?</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                            <%--<button type="submit" class="btn btn-primary">Login</button>--%>
                                            <asp:Button ID="login_Button" type="submit" class="btn btn-primary" runat="server" Text="Login" OnClick="login_Button_Click" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
                                            <hr>
                                            <div class="login-socio">
                                                <p class="text-muted">or login using:</p>
                                                <ul class="social-icons">
                                                    <li><a href="javascript:;" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                                                    <li><a href="javascript:;" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                                                    <li><a href="javascript:;" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                                                    <li><a href="javascript:;" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 pull-right">
                                <div class="form-info">
                                    <h2><em>Important</em> Information</h2>
                                    <p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>

                                    <%--<button type="button" class="btn btn-default">More details</button>--%>
                                    <asp:Button ID="detail_Button" type="button" class="btn btn-default" runat="server" Text="More details" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT -->

</asp:Content>

