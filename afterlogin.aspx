<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="container">
            <div class="row margin-bottom-40">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12 col-sm-12">
                    <h1>Welocome to your dashboard</h1>
                    <div class="content-page">
                        <div class="row">
                            <div class="col-md-3 col-sm-3">
                                <ul class="tabbable faq-tabbable">
                                    <li runat="server">
                                        <asp:LinkButton ID="ProfileInfo" runat="server" OnClick="ProfileInfo_Click"><i class="fa fa-angle-right"></i> Profile Information</asp:LinkButton>
                                    </li>
                                    <li runat="server">
                                        <asp:LinkButton ID="EditInfo" runat="server" OnClick="EditInfo_Click"><i class="fa fa-angle-right"></i> Edit Information</asp:LinkButton>
                                    </li>
                                    <li runat="server">
                                        <asp:LinkButton ID="ChangePassword" runat="server" OnClick="ChangePassword_Click"><i class="fa fa-angle-right"></i> Change Password</asp:LinkButton>
                                    </li>
                                    <li runat="server">
                                        <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_OnClick_Click"><i class="fa fa-angle-right"></i> Logout</asp:LinkButton>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-9 col-sm-9">
                                <div class="tab-content" style="padding: 0; background: #fff;">
                                    <asp:MultiView ID="MultiView1" runat="server">
                                        <asp:View ID="View1" runat="server">
                                            <fieldset class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">Your Profile</h4>
                                                </div>
                                                <div class="form-horizontal panel-body">
                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                        <ItemTemplate>
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <img src="assets/pages/img/user-images/defaultImage.png" alt="profile image" />
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <h5>Full Name: <span><%# Eval("fname") + " " + Eval("lname") %></span></h5>
                                                                    <h5>Address: <span><%# Eval("Address") %></span></h5>
                                                                    <h5>Phone: <span><%# Eval("Phone") %></span></h5>
                                                                    <h5>Email: <span><%# Eval("email") %></span></h5>
                                                                    <h5>Gender: <span><%# Eval("Gender") %></span></h5>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">                                                                   
                                                                    <h5 style="padding-top: 18px !important;">Career Objective:</h5>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <br />
                                                                    <p><%# Eval("CareerObjective") %></p>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <h5 style="padding-top: 18px !important;">Skills:</h5>
                                                                </div>
                                                                <div class="col-md-9">
                                                                    <br />
                                                                    <p><%# Eval("Skills") %></p>
                                                                </div>
                                                            </div>

                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                        <asp:View ID="View2" runat="server">
                                            <fieldset class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">Edit Your Information</h4>
                                                </div>
                                                <div class="form-horizontal panel-body">
                                                    <asp:GridView ID="GridView1" runat="server" ShowHeader="false"
                                                        GridLines="None" AutoGenerateColumns="False" Width="100%">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <EditItemTemplate>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <div class="row">
                                                                        <div class="col-md-4">
                                                                            <img src="assets/pages/img/user-images/defaultImage.png" alt="profile image" />
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <fieldset>
                                                                                <div class="form-group">
                                                                                    <asp:Label AssociatedControlID="txtfname" runat="server" CssClass="col-lg-4 control-label">First Name: <span class="require">*</span></asp:Label>
                                                                                    <div class="col-lg-8">
                                                                                        <asp:TextBox type="text" class="form-control" ID="txtfname" runat="server" Text='<%# Eval("fname")%>'></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <asp:Label AssociatedControlID="txtlname" runat="server" CssClass="col-lg-4 control-label">Last Name: <span class="require">*</span></asp:Label>
                                                                                    <div class="col-lg-8">
                                                                                        <asp:TextBox type="text" class="form-control" ID="txtlname" runat="server" Text='<%# Eval("lname")%>'></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <asp:Label AssociatedControlID="txtAddress" runat="server" CssClass="col-lg-4 control-label">Address: <span class="require">*</span></asp:Label>
                                                                                    <div class="col-lg-8">
                                                                                        <asp:TextBox type="text" class="form-control" ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' TextMode="MultiLine"></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <asp:Label AssociatedControlID="txtPhone" runat="server" CssClass="col-lg-4 control-label">Phone: <span class="require">*</span></asp:Label>
                                                                                    <div class="col-lg-8">
                                                                                        <asp:TextBox type="text" class="form-control" ID="txtPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <asp:Label AssociatedControlID="ddGender" runat="server" CssClass="col-lg-4 control-label">Gender: <span class="require">*</span></asp:Label>
                                                                                    <div class="col-lg-8">
                                                                                        <asp:DropDownList CssClass="form-control" ID="ddGender" runat="server">
                                                                                            <asp:ListItem Selected="True">Male</asp:ListItem>
                                                                                            <asp:ListItem>Female</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </div>
                                                                                </div>
                                                                            </fieldset>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <fieldset>
                                                                            <div class="form-group">
                                                                                <asp:Label AssociatedControlID="txtCareerObj" runat="server" CssClass="col-lg-3 control-label">Career Objective: <span class="require">*</span></asp:Label>
                                                                                <div class="col-lg-8">
                                                                                    <asp:TextBox type="text" class="form-control" ID="txtCareerObj" runat="server" Text='<%# Eval("CareerObjective") %>' TextMode="MultiLine"></asp:TextBox>
                                                                                </div>
                                                                            </div>
                                                                        </fieldset>
                                                                    </div>
                                                                    <div class="row">
                                                                        <fieldset>
                                                                            <div class="form-group">
                                                                                <asp:Label AssociatedControlID="txtSkills" runat="server" CssClass="col-lg-3 control-label">Skills: <span class="require">*</span></asp:Label>
                                                                                <div class="col-lg-8">
                                                                                    <asp:TextBox type="text" class="form-control" ID="txtSkills" runat="server" Text='<%# Eval("Skills") %>'></asp:TextBox>
                                                                                </div>
                                                                            </div>
                                                                        </fieldset>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-lg-8 col-md-offset-3 padding-left-0 padding-top-20">
                                                                            <asp:Button ID="btnSubmit" type="submit" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="btnSubmit_OnClick" />
                                                                            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                        <asp:View ID="View3" runat="server">
                                            <fieldset class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">Change Your Password</h4>
                                                </div>
                                                <div class="form-horizontal panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div id="notification" runat="server"></div>
                                                        </div>
                                                    </div>
                                                    <div class="content-form-page">
                                                        <div class="row">
                                                            <div class="col-md-7 col-sm-7">
                                                                <div class="form-horizontal">
                                                                    <div class="form-group">
                                                                        <asp:Label AssociatedControlID="oldPassword_TextBox" runat="server" CssClass="col-lg-4 control-label">Old Password <span class="require">*</span></asp:Label>
                                                                        <div class="col-lg-8">
                                                                            <asp:TextBox ID="oldPassword_TextBox" type="text" class="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <asp:Label AssociatedControlID="newPassword_TextBox" runat="server" CssClass="col-lg-4 control-label">New Password <span class="require">*</span></asp:Label>
                                                                        <div class="col-lg-8">
                                                                            <asp:TextBox ID="newPassword_TextBox" type="text" class="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                                                            <asp:Button ID="changePassword_Button" type="submit" class="btn btn-primary" runat="server" Text="Done" OnClick="changePassword_Button_OnClick" />
                                                                            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                        <asp:View ID="View4" runat="server">
                                            <fieldset class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">Logout</h4>
                                                </div>
                                                <div class="form-horizontal panel-body">                                                    
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <h5>Are you sure you want logout</h5>
                                                        </div>
                                                        <div class="col-lg-12 padding-top-20">
                                                            <asp:Button ID="btnLogout" CssClass="btn btn-primary" runat="server" Text="Yes" OnClick="btnLogout_OnClick" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                    </asp:MultiView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT -->
            </div>
        </div>
    </div>
</asp:Content>

