<%@ Page Language="C#" AutoEventWireup="true" CodeFile="validationTest.aspx.cs" Inherits="validationTest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="regform" runat="server">
        <div class="container well" style="margin-top: 50px">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>Sign up for a business account</legend>
                        </fieldset>
                        <!--Name-->
                        <div class="form-group">
                            <asp:Label AssociatedControlID="txtName" runat="server" CssClass="col-lg-2 control-label">Name <span class="require">*</span></asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox type="text" class="form-control" ID="txtName" runat="server" ClientIDMode="Static"></asp:TextBox>                                
                            </div>
                        </div>
                        <!--Email-->
                        <div class="form-group">
                            <asp:Label AssociatedControlID="txtEmail" runat="server" CssClass="col-lg-2 control-label">Email <span class="require">*</span></asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox type="text" class="form-control" ID="txtEmail" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                        </div>
                        <!--Password-->
                        <div class="form-group">
                            <asp:Label AssociatedControlID="txtPassword" runat="server" CssClass="col-lg-2 control-label">Password <span class="require">*</span></asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox type="text" class="form-control" ID="txtPassword" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                        </div>
                        <!--Confirm Password-->
                        <div class="form-group">
                            <asp:Label AssociatedControlID="txtConPassword" runat="server" CssClass="col-lg-2 control-label">Confirm Password <span class="require">*</span></asp:Label>
                            <div class="col-lg-4">
                                <asp:TextBox type="text" class="form-control" ID="txtConPassword" runat="server" ClientIDMode="Static"></asp:TextBox>
                            </div>
                        </div>
                        <!--Submit-->
                        <div class="row">
                            <div class="col-lg-8 col-md-offset-2">
                                <asp:Button ID="btnCreateAcount" type="submit" CssClass="btn btn-primary" runat="server" Text="Create an account" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </form>

    <!--jQuery link must come before  javascript link-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/plugins/validation/jquery-2.1.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <%--<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>--%>
    <script src="assets/plugins/validation/jquery.validate.min.js"></script>
    <script src="assets/plugins/validation/additional-methods.min.js"></script>
    <script src="assets/plugins/validation/validation.js"></script>
</body>
</html>
