<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration - Copy.aspx.cs" Inherits="Registration" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Create new account</title>
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
                <%-- Body part --%>
                <div class="col-md-9 col-sm-9">
                    <h1>Create an account</h1>
                    <div class="content-form-page">
                        <div class="row">
                            <div class="col-md-7 col-sm-7">
                                <div class="form-horizontal">
                                    <fieldset>
                                        <legend>Your personal details</legend>
                                        <div class="form-group">
                                            <%--<label for="firstname" class="col-lg-4 control-label">First Name <span class="require">*</span></label>--%>
                                            <asp:Label AssociatedControlID="firstname_Textbox" runat="server" CssClass="col-lg-4 control-label">First Name <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <%--  <input type="text" class="form-control" id="firstname">--%>
                                                <asp:TextBox type="text" class="form-control" ID="firstname_Textbox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <%--<label for="lastname" class="col-lg-4 control-label">Last Name <span class="require">*</span></label>--%>
                                            <asp:Label AssociatedControlID="lastname_Textbox" runat="server" CssClass="col-lg-4 control-label">Last Name <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <%--<input type="text" class="form-control" id="lastname">--%>
                                                <asp:TextBox type="text" class="form-control" ID="lastname_Textbox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <%--<label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>--%>
                                            <asp:Label AssociatedControlID="email_Textbox" runat="server" CssClass="col-lg-4 control-label">Email <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <%-- <input type="text" class="form-control" id="email">--%>
                                                <asp:TextBox type="text" class="form-control" ID="email_Textbox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <legend>Your password</legend>
                                        <div class="form-group">
                                            <%--<label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>--%>
                                            <asp:Label AssociatedControlID="password_Textbox" runat="server" CssClass="col-lg-4 control-label">Password <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="password_Textbox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <%--<label for="confirm-password" class="col-lg-4 control-label">Confirm password <span class="require">*</span></label>--%>
                                            <asp:Label AssociatedControlID="confirm_password_Textbox" runat="server" CssClass="col-lg-4 control-label">Confirm password <span class="require">*</span></asp:Label>
                                            <div class="col-lg-8">
                                                <asp:TextBox type="text" class="form-control" ID="confirm_password_Textbox" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <%--  <fieldset>
                      <legend>Newsletter</legend>
                      <div class="checkbox form-group">
                       <%-- <label>
                          <div class="col-lg-4 col-sm-4">Singup for Newsletter</div>
                          <div class="col-lg-8 col-sm-8">
                            <%--  <input type="checkbox"/>--%>
                                    <%-- <asp:CheckBox ID="CheckBox" runat="server" />
                          </div>
                        </label>--%>
                                    <%--  </div>--%>
                                    <%-- </fieldset>--%>
                                    <div class="row">
                                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                            <%-- <button type="submit" class="btn btn-primary">Create an account</button>--%>
                                            <asp:Button ID="create_account_Button" type="submit" CssClass="btn btn-primary" runat="server" Text="Create an account" OnClick="create_account_Button_Click" />
                                            <%--<button type="button" class="btn btn-default">Cancel</button>--%>
                                            <asp:Button ID="cancle_Button" type="button" CssClass="btn btn-default" runat="server" Text="Cancel" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 pull-right">
                                <div class="form-info">
                                    <h2><em>Important</em> Information</h2>
                                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>

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

</asp:Content>

