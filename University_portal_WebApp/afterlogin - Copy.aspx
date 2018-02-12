<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="afterlogin - Copy.aspx.cs" Inherits="afterlogin" EnableEventValidation="false" %>

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
                                                            <table>
                                                                <tr>
                                                                    <td>First Name</td>
                                                                    <td>
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# "Mr " + Eval("fname") + " " + Eval("lname")%>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Last Name</td>
                                                                    <td>
                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Email</td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Created Date</td>
                                                                    <td>
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CreatedDate") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
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
                                                        GridLines="None" AutoGenerateColumns="False">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <EditItemTemplate>
                                                                    
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <table>
                                                                        <tr>
                                                                            <td>First Name</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtfname" runat="server" placeholder='<%# Eval("fname") %>' ClientIDMode="Static"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td></td>
                                                                            <td>
                                                                                <asp:Button ID="btnSubmit" runat="server" Text="Update" OnClick="btnSubmit_OnClick"/>
                                                                            </td>
                                                                        </tr>                                              
                                                                    </table>
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
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                        <asp:View ID="View4" runat="server">
                                            <fieldset class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">Logout</h4>
                                                </div>
                                                <div class="form-horizontal panel-body">
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

