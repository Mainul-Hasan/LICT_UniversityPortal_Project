<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="row">
        <div class="col-lg-8 col-md-offset-4 padding-left-0">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" type="button" class="btn btn-default" Text="Log Out" OnClick="Button1_Click" />   
        </div>
    </div>
    <div class="row">
        <div class="col-lg-8 col-md-offset-4 padding-left-0">
            <a href="changePassword.aspx">Change Password?</a>
        </div>
    </div>
</asp:Content>

