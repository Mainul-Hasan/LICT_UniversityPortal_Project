<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Activation.aspx.cs" Inherits="Activation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="container">
            <div class="row margin-bottom-40">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12 col-sm-12">
                    <h1 id="notification" runat="server"></h1>
                    <hr/>
                    <p>Congratulations! Your new account has been verified!</p>
                    <p>You can now take advantage of student previleges for prospective students in order to enhance search for your desired degree at our university.</p>
                    <a href="Login.aspx">Click here to access your account</a>
                    <p>If you encounter any problems, please <a href="ContactUs.aspx">leave us a message</a> regarding the issue</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

